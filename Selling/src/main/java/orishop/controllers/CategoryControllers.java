package orishop.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import orishop.models.CategoryModels;
import orishop.services.CategoryServiceImp;
import orishop.services.ICategoryService;

@WebServlet(urlPatterns = {"/user-category/listCate", "/delete", "/update", "/addcate"})
public class CategoryControllers extends HttpServlet {
	ICategoryService cateService = new CategoryServiceImp();
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		findAll(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
	}
	
	private void findAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		List<CategoryModels> listCate = cateService.findAll();
		
		req.setAttribute("list", listCate);
		req.setAttribute("end", 4);
		req.setAttribute("begin", 1);
		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/listorder.jsp");
		rd.forward(req, resp);
	}
}
