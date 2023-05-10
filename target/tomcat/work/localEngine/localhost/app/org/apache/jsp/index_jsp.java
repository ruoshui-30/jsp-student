package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import text.StudentDb;
import java.util.List;
import text.Student;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <title>学生信息显示页面</title>\n");
      out.write("    <style>\n");
      out.write("        td, th {\n");
      out.write("            /* white-space: nowrap; 文本不换行显示 */\n");
      out.write("            white-space: nowrap;\n");
      out.write("            width: 70px;\n");
      out.write("            height: 35px;\n");
      out.write("            /*text-align: center;文本居中显示*/\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write(" \n");
      out.write("        /* div块居中显示 */\n");
      out.write("        .divcenter {\n");
      out.write("            width: 850px;\n");
      out.write("            height: 400px;\n");
      out.write("            background-color: #9bfaff;\n");
      out.write("            /* overflow: auto;当内容溢出时添加滚动条 */\n");
      out.write("            overflow: auto;\n");
      out.write("            /* margin: auto;使div块居中显示 */\n");
      out.write("            margin: auto;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div class=\"divcenter\">\n");
      out.write("    ");
      out.write("\n");
      out.write("    <form action=\"index.jsp\" style=\"text-align: center;margin-top: 10px\">\n");
      out.write("        <input id=\"sname\" name=\"sname\" placeholder=\"按姓名查询\">\n");
      out.write("        <input type=\"submit\" value=\"查询\">\n");
      out.write("        <input type=\"button\" value=\"增加学生信息\" onclick=\"window.location.href='stuAddForm.jsp'\">\n");
      out.write("    </form>\n");
      out.write("    <table border=\"1\" cellspacing=\"0\" align=\"center\">\n");
      out.write("        <thead>\n");
      out.write("        <tr>\n");
      out.write("            <th>学号</th>\n");
      out.write("            <th>姓名</th>\n");
      out.write("            <th>年龄</th>\n");
      out.write("            <th>性别</th>\n");
      out.write("            <th>地区</th>\n");
      out.write("            <th>专业</th>\n");
      out.write("            <th>班级</th>\n");
      out.write("            <th>民族</th>\n");
      out.write("            ");
      out.write("\n");
      out.write("            <th colspan=\"2\">操作</th>\n");
      out.write("        </tr>\n");
      out.write("        </thead>\n");
      out.write("        ");

            StudentDb sdb = new StudentDb();
            String sname = request.getParameter("sname");
            String sql = null;
            if (sname == null) {
                sql = "select * from student";
            } else {
                sql = "select * from student where sname like '%" + sname + "%'";
            }
            List<Student> lst = sdb.getStudent(sql);
            request.setAttribute("stuLst", lst);
        
      out.write("\n");
      out.write("        ");
 List<Student> stuLst = (List<Student>)request.getAttribute("stuLst");
        for(Student stu : stuLst){
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(stu.getSid());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSname());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSage());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSsex());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSnative());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSmajor());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSclass());
      out.write("</td>\n");
      out.write("                <td>");
      out.print(stu.getSnative());
      out.write("</td>\n");
      out.write("                <td><a href=\"studel.jsp?sid=${stu.sid}\" style=\"text-decoration: none\">删除</a></td>\n");
      out.write("                <td>\n");
      out.write("                    <a href=\"stuModForm.jsp?sid=${stu.sid}&sname=${stu.sname}&sage=${stu.sage}&ssex=${stu.ssex}&snativeplace=${stu.snativeplace}&smajor=${stu.smajor}&sclass=${stu.sclass}&snative=${stu.snative}\"\n");
      out.write("                       style=\"text-decoration: none\">修改</a></td>\n");
      out.write("            </tr>\n");
      out.write("          ");
}
      out.write("\n");
      out.write("    </table>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
