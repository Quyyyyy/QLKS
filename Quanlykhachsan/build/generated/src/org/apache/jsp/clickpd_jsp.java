package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Phong;
import java.util.ArrayList;
import model.KhachHang;

public final class clickpd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <title>Quan lý khách sạn</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <link rel=\"icon\" type=\"image/png\" href=\"https://gokisoft.com/uploads/2021/03/s-568-ico-web.jpg\" />\n");
      out.write("\n");
      out.write("  <!-- Latest compiled and minified CSS -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/dashboard.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css\">\n");
      out.write("\n");
      out.write("  <!-- jQuery library -->\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Popper JS -->\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("  <!-- Latest compiled JavaScript -->\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<nav class=\"navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow\">\n");
      out.write("  <a class=\"navbar-brand col-sm-3 col-md-2 mr-0\" href=\"#\">Quản lý khách sạn</a>\n");
      out.write("  <input class=\"form-control form-control-dark w-100\" type=\"text\" placeholder=\"Tìm kiếm\" aria-label=\"Search\">\n");
      out.write("  <ul class=\"navbar-nav px-3\">\n");
      out.write("    <li class=\"nav-item text-nowrap\">\n");
      out.write("      <a class=\"nav-link\" href=\"logout\">Thoát</a>\n");
      out.write("    </li>\n");
      out.write("  </ul>\n");
      out.write("</nav>  \n");
      out.write("<div class=\"container-fluid\">\n");
      out.write("  <div class=\"row\">\n");
      out.write("    <nav class=\"col-md-2 d-none d-md-block bg-light sidebar\">\n");
      out.write("      <div class=\"sidebar-sticky\">\n");
      out.write("        <ul class=\"nav flex-column\">\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" href=\"\">\n");
      out.write("              <i class=\"bi bi-house-fill\"></i>\n");
      out.write("              Dashboard\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"service\">\n");
      out.write("              <i class=\"bi bi-folder\"></i>\n");
      out.write("              Quản lý dịch vụ\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"book\">\n");
      out.write("              <i class=\"bi bi-file-earmark-text\"></i>\n");
      out.write("              Quản lý đặt phòng\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"customer\">\n");
      out.write("              <i class=\"bi bi-people-fill\"></i>\n");
      out.write("              Quản lý khách hàng\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"type\">\n");
      out.write("              <i class=\"bi bi-house-door-fill\"></i>\n");
      out.write("              Quản lý loại phòng\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"room\">\n");
      out.write("              <i class=\"bi bi-house-door-fill\"></i>\n");
      out.write("              Quản lý phòng\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"user\">\n");
      out.write("              <i class=\"bi bi-people-fill\"></i>\n");
      out.write("              Quản lý nhân viên\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"\">\n");
      out.write("              <i class=\"bi bi-currency-dollar\"></i>\n");
      out.write("              Quản lý thanh toán\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"\">\n");
      out.write("              <i class=\"bi bi-file-earmark-text-fill\"></i>\n");
      out.write("              Quản lý thống kê\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <main role=\"main\" class=\"col-md-9 ml-sm-auto col-lg-10 px-4\">\n");
      out.write("    <!-- hien thi tung chuc nang cua trang quan tri START-->\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js\"></script>\n");
      out.write("\n");
      out.write("<div class=\"row\" style=\"margin-top: 20px;\">\n");
      out.write("\t<div class=\"col-md-12  table-responsive\">\n");
      out.write("\t\t<h3>Tạo Hợp Đồng</h3>\n");
      out.write("                \n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-5 col-12\">\n");
      out.write("                   <a href=\"room\"><button class=\"btn btn-danger\">Chọn Phòng</button></a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-5 col-12\">\n");
      out.write("                   <a href=\"service\"><button class=\"btn btn-danger\">Chọn Dịch Vụ</button></a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"panel panel-primary\">\n");
      out.write("            <div class=\"panel-body\">\n");
      out.write("                ");

                    KhachHang a = (KhachHang)request.getAttribute("data");
                
      out.write("\n");
      out.write("                <form action=\"taohd\" method=\"post\">\n");
      out.write("                     <input type=\"text\" name=\"id\" value=\"");
      out.print(a.getId());
      out.write("\" hidden=\"true\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-5 col-12\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"discount\">Tên Khách Hàng:</label>\n");
      out.write("                            <input  type=\"text\" class=\"form-control\" name=\"hoten\" value=\"");
      out.print( a.getHoten());
      out.write("\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"discount\">Ngày đặt:</label>\n");
      out.write("                            <input type=\"date\" class=\"form-control\"  name=\"ngaydat\" >\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-5 col-12\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"price\">Số người ở:</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"songuoio\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"usr\">Ngày Trả:</label>\n");
      out.write("                            <input type=\"date\" class=\"form-control\" name=\"ngaytra\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"usr\">Ngày Trả:</label>\n");
      out.write("                        <table class=\"table table-bordered table-hover\" style=\"margin-top: 20px;\">\n");
      out.write("                            <thead>\n");
      out.write("                                <th>STT</th>\n");
      out.write("                                <th>Tên Dịch Vụ</th>\n");
      out.write("                                <th>Trạng Thái</th>\n");
      out.write("                                <th style=\"width: 50px;\">Chọn</th>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                        ");
 
                              int index = 0;
                              ArrayList<Phong> list = (ArrayList<Phong>) request.getAttribute("data1") ;
                              for(Phong i:list){
                        
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <th>");
      out.print((++index));
      out.write("</th>\n");
      out.write("                                    <td>");
      out.print( i.getTenphong());
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print( i.getStatus());
      out.write("</td>\n");
      out.write("                                    <th style=\"width: 50px;\">\n");
      out.write("                                        ");
 if(i.getStatus()!="no action"){
      out.write("\n");
      out.write("                                           <input name=\"phong\" type=\"checkbox\" disabled=\"disabled\" value=\"");
      out.print( i.getId());
      out.write("\">\n");
      out.write("                                        ");
 } else{ 
      out.write("\n");
      out.write("                                           <input name=\"bt\" type=\"checkbox\" disabled=\"enabled\" value=\"");
      out.print( i.getId());
      out.write("\"> \n");
      out.write("                                        ");
 } 
      out.write("                \n");
      out.write("                                    </th>\n");
      out.write("                                </tr>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                        <button class=\"btn btn-success\">Xác Nhận</button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("    <!-- END -->\n");
      out.write("    </main>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
