<%@ page import="text.StudentDb" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>删除学生信息</title>
</head>
<body>

<%
    String sid = request.getParameter("sid");
    String sql = "delete from student where sid = "+sid;
    StudentDb sdb = new StudentDb();
    if (sdb.studentUpdate(sql)){
        out.println(sql);
        out.println(sid+"号学生已成功删除");
    }else {
        out.println(sql);
        out.println(sid+"号学生删除失败");
    }
%>
<a href="student.jsp">返回</a>
</body>
</html>