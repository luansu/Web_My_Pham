/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2023-12-08 06:41:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.views.web;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(7);
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Documents/LuanSu/CNTT/HK5/Web/Project/web/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Selling/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153359882000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1695140474521L));
    _jspx_dependants.put("/common/taglist.jsp", Long.valueOf(1702007295875L));
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Documents/LuanSu/CNTT/HK5/Web/Project/web/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Selling/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt-1_0-rt.tld", Long.valueOf(1153359882000L));
    _jspx_dependants.put("/WEB-INF/lib/sitemesh-2.4.2.jar", Long.valueOf(1695790380415L));
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Documents/LuanSu/CNTT/HK5/Web/Project/web/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Selling/WEB-INF/lib/sitemesh-2.4.2.jar!/META-INF/sitemesh-decorator.tld", Long.valueOf(1123653092000L));
    _jspx_dependants.put("jar:file:/C:/Users/Admin/Documents/LuanSu/CNTT/HK5/Web/Project/web/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Selling/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153359882000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"fr\">\r\n");
      out.write("<body>\r\n");
      out.write("	<!-- Site meta -->\r\n");
      out.write("	<meta charset=\"utf-8\">\r\n");
      out.write("	<meta name=\"viewport\"\r\n");
      out.write("		content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("	<title>Sign In</title>\r\n");
      out.write("	<!-- Favicon-->\r\n");
      out.write("	<link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\r\n");
      out.write("	<!-- Google fonts-->\r\n");
      out.write("	<link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700\"\r\n");
      out.write("		rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("	<link\r\n");
      out.write("		href=\"https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic\"\r\n");
      out.write("		rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("	<link\r\n");
      out.write("		href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\"\r\n");
      out.write("		rel=\"stylesheet\"\r\n");
      out.write("		integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\"\r\n");
      out.write("		crossorigin=\"anonymous\">\r\n");
      out.write("	<link\r\n");
      out.write("		href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css\"\r\n");
      out.write("		rel=\"stylesheet\">\r\n");
      out.write("	<!-- Core theme CSS (includes Bootstrap)-->\r\n");
      out.write("	<link href='");
      if (_jspx_meth_c_005furl_005f0(_jspx_page_context))
        return;
      out.write("'\r\n");
      out.write("		rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("	<link href='");
      if (_jspx_meth_c_005furl_005f1(_jspx_page_context))
        return;
      out.write("' rel=\"stylesheet\"\r\n");
      out.write("		type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("	<!-- Favicon-->\r\n");
      out.write("	<link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\r\n");
      out.write("	<!-- Google fonts-->\r\n");
      out.write("	<link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,700\"\r\n");
      out.write("		rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("	<link\r\n");
      out.write("		href=\"https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic\"\r\n");
      out.write("		rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("	<link\r\n");
      out.write("		href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\"\r\n");
      out.write("		rel=\"stylesheet\"\r\n");
      out.write("		integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\"\r\n");
      out.write("		crossorigin=\"anonymous\">\r\n");
      out.write("	<link rel=\"stylesheet\"\r\n");
      out.write("		href=\"fonts/material-icon/css/material-design-iconic-font.min.css\">\r\n");
      out.write("	<link rel=\"stylesheet\"\r\n");
      out.write("		href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/templates/web/css/main.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<div class=\"bg__img\">\r\n");
      out.write("		<div class=\"container d-flex justify-content-center w-200 min-vh-100\"\r\n");
      out.write("			style=\"padding-top: 100px;\">\r\n");
      out.write("\r\n");
      out.write("			<!-- login -->\r\n");
      out.write("			<div class=\"row border rounded-5 p-3 bg-white\"\r\n");
      out.write("				style=\"width: 900px; height: fit-content;\">\r\n");
      out.write("\r\n");
      out.write("				<!-- 		left box -->\r\n");
      out.write("				<div\r\n");
      out.write("					class=\"col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box\"\r\n");
      out.write("					style=\"background: #fff;\">\r\n");
      out.write("					<div class=\"row align-items-center\">\r\n");
      out.write("						<div class=\"header-text mb-4 text-center\">\r\n");
      out.write("							<h1 style=\"font-size: 2rem;\">SIGN-UP</h1>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"input-group mb-4\">\r\n");
      out.write("							<input type=\"text\"\r\n");
      out.write("								class=\"form-control form-control-lg bg-light fs-6\"\r\n");
      out.write("								placeholder=\"Your Name\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"input-group mb-4\">\r\n");
      out.write("							<input type=\"password\"\r\n");
      out.write("								class=\"form-control form-control-lg bg-light fs-6\"\r\n");
      out.write("								placeholder=\"Email or Phone Address\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"input-group mb-4\">\r\n");
      out.write("							<input type=\"password\"\r\n");
      out.write("								class=\"form-control form-control-lg bg-light fs-6\"\r\n");
      out.write("								placeholder=\"Enter Password\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"input-group mb-4\">\r\n");
      out.write("							<input type=\"password\"\r\n");
      out.write("								class=\"form-control form-control-lg bg-light fs-6\"\r\n");
      out.write("								placeholder=\"Re-Enter Your Password\">\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"form-check\"\r\n");
      out.write("							style=\"margin-left: 12px; margin-bottom: 20px;\">\r\n");
      out.write("							<input type=\"checkbox\" class=\"form-check-input\" id=\"formCheck\">\r\n");
      out.write("							<label for=\"formCheck\" class=\"form-check-label text-secondary\"><small>I\r\n");
      out.write("									agree all statements in <a href=\"#\" class=\"term-service\">Terms\r\n");
      out.write("										of service</a>\r\n");
      out.write("							</small></label>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"input-group mb-4\">\r\n");
      out.write("							<button type=\"button\" class=\"btn btn-primary w-100 fs-6\"\r\n");
      out.write("								data-bs-toggle=\"modal\" data-bs-target=\"#exampleModal\">\r\n");
      out.write("								Register</button>\r\n");
      out.write("						</div>\r\n");
      out.write("\r\n");
      out.write("						<!-- Modal -->\r\n");
      out.write("						<div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\"\r\n");
      out.write("							aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("							<div class=\"modal-dialog\">\r\n");
      out.write("								<div class=\"modal-content\">\r\n");
      out.write("									<div class=\"modal-header\">\r\n");
      out.write("										<h1 class=\"modal-title fs-5\" id=\"exampleModalLabel\">Mã\r\n");
      out.write("											kích hoạt</h1>\r\n");
      out.write("										<button type=\"button\" class=\"btn-close\"\r\n");
      out.write("											data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n");
      out.write("									</div>\r\n");
      out.write("									<div class=\"modal-body\">\r\n");
      out.write("										<input type=\"text\" id=\"validationDefault01\"\r\n");
      out.write("											placeholder=\"Nhập mã kích hoạt\">\r\n");
      out.write("									</div>\r\n");
      out.write("									<div class=\"modal-footer\">\r\n");
      out.write("										<button type=\"button\" class=\"btn btn-secondary\"\r\n");
      out.write("											data-bs-dismiss=\"modal\">Close</button>\r\n");
      out.write("										<button type=\"button\" class=\"btn btn-primary\">Save\r\n");
      out.write("											changes</button>\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("\r\n");
      out.write("				<!-- right-box -->\r\n");
      out.write("				<div\r\n");
      out.write("					class=\"col-md-6 right-box d-flex justify-content-center align-items-center flex-column\">\r\n");
      out.write("					<figure>\r\n");
      out.write("						<img\r\n");
      out.write("							src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/templates/web/images/signup-image.jpg\"\r\n");
      out.write("							alt=\"sing up image\">\r\n");
      out.write("					</figure>\r\n");
      out.write("					<a href=\"login\" class=\"signup-image-link\"\r\n");
      out.write("						style=\"text-decoration: none;\">I am already member</a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js\"\r\n");
      out.write("		integrity=\"sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>\r\n");
      out.write("	<script\r\n");
      out.write("		src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js\"\r\n");
      out.write("		integrity=\"sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+\"\r\n");
      out.write("		crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005furl_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f0_reused = false;
    try {
      _jspx_th_c_005furl_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f0.setParent(null);
      // /views/web/register.jsp(29,13) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f0.setValue("/stylecss/base/basecss.css");
      int _jspx_eval_c_005furl_005f0 = _jspx_th_c_005furl_005f0.doStartTag();
      if (_jspx_th_c_005furl_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
      _jspx_th_c_005furl_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f0, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f1 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f1_reused = false;
    try {
      _jspx_th_c_005furl_005f1.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f1.setParent(null);
      // /views/web/register.jsp(31,13) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f1.setValue("/css/bootstrap.css");
      int _jspx_eval_c_005furl_005f1 = _jspx_th_c_005furl_005f1.doStartTag();
      if (_jspx_th_c_005furl_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f1);
      _jspx_th_c_005furl_005f1_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f1, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f1_reused);
    }
    return false;
  }
}
