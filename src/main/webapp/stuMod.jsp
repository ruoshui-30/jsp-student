<%@ page import="text.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息修改页面</title>
</head>
<body>
<%
    //获取表单中的数据
    String sid = request.getParameter("sid");
    String sname = request.getParameter("sname");
    String sage = request.getParameter("sage");
    String ssex = request.getParameter("ssex");
    String snativeplace = request.getParameter("snativeplace");
    String smajor = request.getParameter("smajor");
    String sclass = request.getParameter("sclass");
    String snative = request.getParameter("snative");
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //组装SQL语句
    String sql = "update student set sname='"+sname+"',sage="+sage+",ssex='"+ssex+"',snativeplace='"+snativeplace+"',smajor='"+smajor+"',sclass='"+sclass+"',snative='"+snative+"'  where sid="+sid;
 
    if (sdb.studentUpdate(sql)){
        response.sendRedirect("student.jsp");
    }else {
        request.getRequestDispatcher("stuModForm.jsp").forward(request,response);
    }
%>
</body>
</html>