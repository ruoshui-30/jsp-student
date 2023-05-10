package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stuModForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>学生信息修改页面</title>\r\n");
      out.write("    <style>\r\n");
      out.write("        .divcenter {\r\n");
      out.write("            width: 850px;\r\n");
      out.write("            height: 400px;\r\n");
      out.write("            background-color: papayawhip;\r\n");
      out.write("            /* margin: auto;使div块居中显示 */\r\n");
      out.write("            margin: auto;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"divcenter\">\r\n");
      out.write("    <div style=\"height: 10px\"></div>\r\n");
      out.write("    <!-- ");
      out.write(" -->\r\n");
      out.write("    <form action=\"stuMod.jsp\" style=\"text-align: center\">\r\n");
      out.write("        <table align=\"center\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td colspan=\"2\" style=\"text-align: center\">\r\n");
      out.write("                    <font color=\"red\">*代表必填项</font>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>学号：</td>\r\n");
      out.write("                <!-- ");
      out.write(" -->\r\n");
      out.write("                <td><input id=\"sid\" name=\"sid\" value=\"");
      out.print(request.getParameter("sid"));
      out.write("\" required readonly></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>姓名：</td>\r\n");
      out.write("                <!-- ");
      out.write(" -->\r\n");
      out.write("                <td><input id=\"sname\" name=\"sname\" value=\"");
      out.print(request.getParameter("sname"));
      out.write("\" required><font\r\n");
      out.write("                        color=\"red\">*</font></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>年龄：</td>\r\n");
      out.write("                <td><input id=\"sage\" name=\"sage\" value=\"");
      out.print(request.getParameter("sage"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>性别：</td>\r\n");
      out.write("                <td><input id=\"ssex\" name=\"ssex\" value=\"");
      out.print(request.getParameter("ssex"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>地区：</td>\r\n");
      out.write("                <td><input id=\"snativeplace\" name=\"snativeplace\" value=\"");
      out.print(request.getParameter("snativeplace"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>专业：</td>\r\n");
      out.write("                <td><input id=\"smajor\" name=\"smajor\" value=\"");
      out.print(request.getParameter("smajor"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>班级：</td>\r\n");
      out.write("                <td><input id=\"sclass\" name=\"sclass\" value=\"");
      out.print(request.getParameter("sclass"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>民族：</td>\r\n");
      out.write("                <td><input id=\"snative\" name=\"snative\" value=\"");
      out.print(request.getParameter("snative"));
      out.write("\"></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <table align=\"center\">\r\n");
      out.write("            <tr style=\"text-align: center\">\r\n");
      out.write("                <td>\r\n");
      out.write("                    <input type=\"submit\" value=\"确认修改\">\r\n");
      out.write("                </td>\r\n");
      out.write("                <td>\r\n");
      out.write("                    <input type=\"button\" value=\"返回\" onclick=\"window.location.href='index.jsp'\">\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
