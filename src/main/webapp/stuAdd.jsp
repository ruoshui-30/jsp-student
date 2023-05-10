<%@ page import="text.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息页面</title>
</head>
<body>
<%
    //创建一个操作数据库的对象
    StudentDb sdb = new StudentDb();
    //获取表单中各个输入框中的值
    String sid =request.getParameter("sid");
    String sname = request.getParameter("sname");
    String sage = request.getParameter("sage");
    String ssex = request.getParameter("ssex");
    String snativeplace = request.getParameter("snativeplace");
    String smajor = request.getParameter("smajor");
    String sclass = request.getParameter("sclass");
    String snative = request.getParameter("snative");
 
    //组装SQL语句
    String sql = "insert into student(sid,sname,sage,ssex,snativeplace,smajor,sclass,snative) values("+sid+",'"+sname+"',"+sage+",'"+ssex+"','"+snativeplace+"','"+smajor+"','"+sclass+"','"+snative+"')";
    //调用函数执行SQL语句
 
    if (sdb.studentUpdate(sql)){
        response.sendRedirect("student.jsp");
    }else {
        request.getRequestDispatcher("student.jsp").forward(request,response);
    }
%>
</body>
</html>