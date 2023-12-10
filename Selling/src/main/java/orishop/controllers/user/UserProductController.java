package orishop.controllers.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import orishop.models.CategoryModels;
import orishop.models.EmployeeModels;
import orishop.models.ProductModels;
import orishop.services.CategoryServiceImp;
import orishop.services.ICategoryService;
import orishop.services.IProductService;
import orishop.services.ProductServiceImp;


@WebServlet(urlPatterns = { "/user/product/listProduct", "/user/product/productByCategory", "/user/product/detailProduct", "/user/product/manager", "/user/product/insert", "/user/product/update",
		"/user/product/delete", "/user/product/filterDesc" })
public class UserProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	IProductService productService = new ProductServiceImp();
	ICategoryService categoryService = new CategoryServiceImp();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI().toString();

		if (url.contains("listProduct")) {
			getListProduct(req, resp);
		} else if (url.contains("productByCategory")) {
			getProductByCategory(req, resp);
		}else if (url.contains("detailProduct")) {
			getDetailProduct(req, resp);
			
		}
//		else if (url.contains("insert")) {
//			doGet_Insert(req, resp);
//		}

		else if (url.contains("user/productupdate")) {
			getUpdate(req, resp);
		} else if (url.contains("user/productdelete")) {
			getDelete(req, resp);
		} else if (url.contains("user/product/filterDesc")) {
			getFilterDesc(req, resp);

		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		String url = req.getRequestURI().toString();

		if (url.contains("update")) {
			doPost_Update(req, resp);
		} else if (url.contains("insert")) {
			doPost_Insert(req, resp);
		}
	}
	
	private void getDetailProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int pid = Integer.parseInt(req.getParameter("pid"));
		ProductModels pro = productService.findOne(pid);
		req.setAttribute("p", pro);
		req.getRequestDispatcher("/views/user/product/detailproduct.jsp").forward(req, resp);
	}
	

	private void getProductByCategory(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("cid"));
		
		List<ProductModels> listPro = productService.findByCategory(id);
		List<ProductModels> list = pagingProduct(req, listPro);
		List<CategoryModels> listCate = categoryService.findAllCategory();
		ProductModels pro = productService.findLast();
		
		req.setAttribute("list", list);
		req.setAttribute("listC", listCate);
		req.setAttribute("tag", id);
		req.setAttribute("P", pro);
		req.getRequestDispatcher("/views/user/product/listproduct.jsp").forward(req, resp);
	}

	private void getFilterDesc(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		List<ProductModels> listProduct = productService.filterProductDescByPrice();
		List<CategoryModels> listCate = categoryService.findAllCategory();
		ProductModels pro = productService.findLast();
		
		req.setAttribute("listC", listCate);
		req.setAttribute("P", pro);
		req.setAttribute("list", listProduct);
		
		req.getRequestDispatcher("/views/user/product/listproduct.jsp").forward(req, resp);

	}

//	private void doGet_Insert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		List<CategoryModel> listCate = categoryService.findAllCategory();
//		req.setAttribute("listC", listCate);
//		req.getRequestDispatcher("/views/Product/insertProduct.jsp").forward(req, resp);
//		
//	}

	private void getDelete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		int id = Integer.parseInt(req.getParameter("pid"));
		ProductModels product = productService.findOne(id);
		productService.deleteProduct(product);
		resp.sendRedirect(req.getContextPath() + "/product/listProduct");

	}

	private void doPost_Insert(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ProductModels product = new ProductModels();

		try {

			BeanUtils.populate(product, req.getParameterMap());

			product.setCategory(categoryService.findOne(product.getCategoryId()));

			productService.insertProduct(product);

		} catch (Exception e) {
			// TODO: handle exception
		}

		resp.sendRedirect(req.getContextPath() + "/product/manager");
	}

	private void doPost_Update(HttpServletRequest req, HttpServletResponse resp) throws IOException {

		ProductModels product = new ProductModels();

		try {

			BeanUtils.populate(product, req.getParameterMap());

			product.setCategory(categoryService.findOne(product.getCategoryId()));

			productService.updateProduct(product);

		} catch (Exception e) {
			e.printStackTrace();
		}
		resp.sendRedirect(req.getContextPath() + "/product/manager");

	}

	// Chưa check
	private void getUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("pid"));
		ProductModels product = productService.findOne(id);

		List<CategoryModels> listcate = categoryService.findAllCategory();

		req.setAttribute("P", product);
		req.setAttribute("listC", listcate);
		req.getRequestDispatcher("/views/Product/updateproduct.jsp").forward(req, resp);

	}

	private void getListProduct(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<ProductModels> listPro = productService.findAllProduct();
		
		List<ProductModels> list = pagingProduct(req, listPro);
		req.setAttribute("list", list);
		req.setAttribute("count", listPro.size());
		
		List<CategoryModels> listCate = categoryService.findAllCategory();
		ProductModels pro = productService.findLast();
		req.setAttribute("listC", listCate);
		req.setAttribute("P", pro);

		req.getRequestDispatcher("/views/user/product/listproduct.jsp").forward(req, resp);
	}
	
	private List<ProductModels> pagingProduct(HttpServletRequest req, List<ProductModels> listPro) {
		int pagesize = 3;
		int size = listPro.size();
		int num = (size%pagesize==0 ? (size/pagesize) : (size/pagesize + 1));
		int page, numberpage = pagesize;
		String xpage = req.getParameter("page");
		if (xpage == null) {
			page = 1;
		}
		else {
			page = Integer.parseInt(xpage);
		}
		int start,end;
		start = (page - 1) * numberpage;
		end = Math.min(page*numberpage, size);
		req.setAttribute("page", page);
		req.setAttribute("num", num);
		return productService.getListProductByPage(listPro, start, end);
	}

}
