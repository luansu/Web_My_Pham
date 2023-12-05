package orishop.controllers.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import orishop.models.AccountModels;
import orishop.services.AccountServiceImpl;
import orishop.services.IAccountService;
import orishop.util.Constant;
import orishop.util.Email;
@WebServlet(urlPatterns = { "/home","/login","/register","/forgotpass","/waiting","/VerifyCode","/logout"})

public class HomeWebController extends HttpServlet  {
private static final long serialVersionUID = 1L;
	
	IAccountService accountService = new AccountServiceImpl();
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String url = req.getRequestURI().toString();
		if (url.contains("register")) {
			req.getRequestDispatcher("views/web/register.jsp").forward(req, resp);
		} else if (url.contains("login")) {
			getLogin(req,resp);
		} else if (url.contains("forgotpass")) {
			req.getRequestDispatcher("/views/web/forgotpassword.jsp").forward(req, resp);
		} else if (url.contains("waiting")) {
			getWaiting(req, resp);
		} else if (url.contains("VerifyCode")) {
			req.getRequestDispatcher("/views/web/verify.jsp").forward(req, resp);
		} else if (url.contains("logout")) {
			getLogout(req,resp);
		} else if (url.contains("home")) {
			req.getRequestDispatcher("/views/web/home.jsp").forward(req, resp);
			
		}
		
	}
	private void getLogout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.removeAttribute("account");
		
		Cookie[] cookies = req.getCookies();
		
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (Constant.COOKIE_REMEBER.equals(cookie.getName())){
					cookie.setMaxAge(0);
					resp.addCookie(cookie);
					break;
				}
			}
		}
		
		resp.sendRedirect("./login");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();
		if (url.contains("register")) {
			postRegister(req, resp);
		} else if (url.contains("login")) {
			postLogin(req, resp);
		}
		else if (url.contains("forgotpass")) {
			postForgotPassword(req, resp);
		}
		else if (url.contains("VerifyCode")) {
			postVerifyCode(req, resp);
		}
	}

	private void postVerifyCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html; charset=UTF-8");
		try (PrintWriter out = resp.getWriter()){
			
			
			// truy cập session
			HttpSession session = req.getSession();
			AccountModels user = (AccountModels) session.getAttribute("account");
			String code = req.getParameter("authcode");
			
			if (code.equals(user.getCode())) {
				user.setMail(user.getMail());
				user.setStatus(1);
				
				accountService.updatestatus(user);
				
				out.println("<div class=\"container\"><br/>\r\n"+"       <br/>\r\n"
				+"     <br/>Kích hoạt tài khoản thành công!<br/>\r\n"+"     <br/>\r\n"
				+"     <br/></div>");
			} else {
				out.println("<div class=\"container\"><br/>\r\n"+"       <br/>\r\n"
						+"     <br/>Sai mã kích hoạt, vui lòng kiểm tra lại!!!<br/>\r\n"+"     <br/>\r\n"
						+"     <br/></div>");
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
	}
	
	private void saveRememberMe(HttpServletResponse resp, String username) {
		Cookie cookie = new Cookie(Constant.COOKIE_REMEBER, username);
		cookie.setMaxAge(30*60);
		resp.addCookie(cookie);
	}
	
	private void postForgotPassword(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");	
		req.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		AccountModels user = accountService.findOne(username);
		
		if (user.getMail().equals(email)&&user.getUsername().equals(username)) {
			Email sm = new Email();
			
			boolean test = sm.EmailSend(user);
			
			if (test) {
				req.setAttribute("message", "Vui lòng kiểm tra Email để nhận mật khẩu mới");
				req.getRequestDispatcher("/views/web/login.jsp").forward(req, resp);
			} else {
				req.setAttribute("error", "Lỗi gửi mail");
				req.getRequestDispatcher("/views/web/login.jsp").forward(req, resp);
			}
		} else {
			req.setAttribute("error", "usernam hoặc password không tồn tại trong hệ thống!");
			req.getRequestDispatcher("views/web/forgotpassword.jsp").forward(req, resp);
			return;
		}
	}
	
	private void getLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// check session
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null) {
			resp.sendRedirect(req.getContextPath()+"/waiting");
			return;
		}
		
		// check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("username")) {
					session = req.getSession(true);
					session.setAttribute("username", cookie.getValue());
					resp.sendRedirect(req.getContextPath()+ "/waiting");
					return;
				}
			}
		}
		
		req.getRequestDispatcher("views/web/login.jsp").forward(req, resp);
	}
	
	
	private void postLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");	
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		boolean isRememberMe = false;
		String remember = req.getParameter("remember");
		
		if ("on".equals(remember)) {
			isRememberMe = true;
		}
		String alertMsg ="";
		if (username.isEmpty() || password.isEmpty()) {
			alertMsg = "Tài khoản hoặc mật khẩu không đúng";
			req.setAttribute("error", alertMsg);
			req.getRequestDispatcher("views/web/login.jsp").forward(req, resp);
			return;
		}
		
		AccountModels user = accountService.login(username, password);
		 if (user != null) {
			 if (user.getStatus() == 1) {
				 
				 // tạo session
				 HttpSession session = req.getSession(true);
				 session.setAttribute("account", user);
				 
				 if (isRememberMe) {
					 saveRememberMe(resp, username);
				 }
				 
				 resp.sendRedirect(req.getContextPath()+"/waiting");
			
			 } else {
				 alertMsg = "Tài khoản đã bị khóa, liên hệ  Admin nhé";
				 req.setAttribute("error", alertMsg);
				 req.getRequestDispatcher("views/web/login.jsp").forward(req, resp);
			 }
			 
		 } else {
			 alertMsg = "Tài khoản hoặc mật khẩu không đúng";
			 req.setAttribute("error", alertMsg);
			 req.getRequestDispatcher("views/web/login.jsp").forward(req, resp);
			 
		 }
	}
	private void postRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");	
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String fullname = req.getParameter("fullname");
		
		String alertMsg = "";
		if (accountService.checkExistEmail(email)) {
			alertMsg = "Email đã tồn tại";
			req.setAttribute("error", alertMsg);
			req.getRequestDispatcher("/views/web/register.jsp").forward(req, resp);
		} else if (accountService.checkExistUsername(username)) {
			alertMsg = "Tài khoản đã tồn tại";
			req.setAttribute("error", alertMsg);
			req.getRequestDispatcher("/views/web/register.jsp").forward(req, resp);
		} else {
			Email sm = new Email();
			// get the 6-digit code
			String code = sm.getRandom();
			AccountModels user = new AccountModels(username, fullname, email, code);
			boolean test = sm.sendEmail(user);
			
			if (test) {
				HttpSession session = req.getSession();
				session.setAttribute("account", user);
				
				boolean isSuccess = accountService.register( username,password, fullname, email, code);
				
				if (isSuccess)
				{
					
					resp.sendRedirect(req.getContextPath()+"/VerifyCode");
				
				} else {
					alertMsg = "Lỗi hệ thống!";
					req.setAttribute("error",alertMsg);
					req.getRequestDispatcher("/views/web/register.jsp").forward(req, resp);
				}
			} else {
				PrintWriter out = resp.getWriter();
				out.println("Lỗi khi gửi mail!!!!!!!!!!!!!!");
			}
		}
			
	}
	private void getWaiting(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		// kiem tra session
		HttpSession session = req.getSession();
		if (session != null && session.getAttribute("account")!=null) {
			AccountModels u = (AccountModels) session.getAttribute("account");
			req.setAttribute("username", u.getUsername());
			if (u.getRoleID() == 1) {
				resp.sendRedirect(req.getContextPath()+"/home");
			} else if (u.getRoleID() ==2) {
				resp.sendRedirect(req.getContextPath()+"/admin/home");
			} else {
				resp.sendRedirect(req.getContextPath()+"/home");
			}
		} else {
			resp.sendRedirect(req.getContextPath()+"/login");
			
		}
	}

}




