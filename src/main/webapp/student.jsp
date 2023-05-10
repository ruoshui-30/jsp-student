<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="text.StudentDb" %>
<%@ page import="java.util.List" %>
<%@ page import="text.Student" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/student.css">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="./css/htmleaf-demo.css">
	<link rel="stylesheet" href="./css/dcalendar.picker.css"/>
    <title>学生信息显示页面</title>

</head>
<body>
    <div class="bigbox">
        <div class="top">
            <h2>欢迎进入学生信息管理系统</h2>
        </div>
        <div class="left">
            <ul>
                <li><a href="">首页</a></li>
                <li><a href="">项目介绍</a></li>
                <li><a href="">成员信息</a></li>
                <li><a href="">关于</a></li>
            </ul>
        </div>
        <div class="main">
            <%-- style="text-align: center; 使form表单居中显示 --%>
            <form action="student.jsp" style="text-align: center">
                <input id="sname" name="sname" placeholder="按姓名查询" style="width: 120px;height: 35px; border-radius: 5px;background-color: #cccbc2; color: white;font-size: 20px;">
                <input type="submit" value="查询" style="width: 80px;height: 35px; border-radius: 5px;background-color: #00a2d4; color: white;font-size: 20px;">
                <input type="button" value="增加学生信息" onclick="window.location.href='stuAddForm.jsp'" style="width: 150px;height: 35px; border-radius: 5px;background-color: #00a2d4; color: white;font-size: 20px;">
            </form>
            <table border="1" cellspacing="0" align="center">
                <thead>
                <tr>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>性别</th>
                    <th>地区</th>
                    <th>专业</th>
                    <th>班级</th>
                    <th>民族</th>
                    <%--  colspan属性用于将指定的横向单元格合并  --%>
                    <th colspan="2">操作</th>
                </tr>
                </thead>
                <%
                    StudentDb sdb = new StudentDb();
                    String sname = request.getParameter("sname");
                    String sql = null;
                    if (sname == null) {
                        sql = "select * from student";
                    } else {
                        sql = "select * from student where sname like '%" + sname + "%'";
                    }
                    List<Student> list = sdb.getStudent(sql);
                    request.setAttribute("stuLst", list);
                %>
                <% List<Student> stuLst = (List<Student>)request.getAttribute("stuLst");
                for(Student stu : stuLst){%>
                    <tr>
                        <td><%=stu.getSid()%></td>
                        <td><%=stu.getSname()%></td>
                        <td><%=stu.getSage()%></td>
                        <td><%=stu.getSsex()%></td>
                        <td><%=stu.getSnative()%></td>
                        <td><%=stu.getSmajor()%></td>
                        <td><%=stu.getSclass()%></td>
                        <td><%=stu.getSnative()%></td>
                        <td><a href="studel.jsp?sid=<%=stu.getSid()%>" style="text-decoration: none ;color: #000;" >删除</a></td>
                        <td>
                            <a href="stuModForm.jsp?sid=<%=stu.getSid()%>&sname=<%=stu.getSname()%>&sage=<%=stu.getSage()%>&ssex=<%=stu.getSsex()%>&snativeplace=<%=stu.getSnative()%>&smajor=<%=stu.getSmajor()%>&sclass=<%=stu.getSclass()%>&snative=<%=stu.getSnative()%>"
                               style="text-decoration: none; color: #000;">修改</a></td>
                    </tr>
                  <%}%>
            </table>
        </div>
        <div class="right">
            <div class="col-md-6">
                <h3>日历-calendar</h3>
                <table id='mycalendar' class='calendar'></table>
            </div>
            <div class="smallBox">
                <h3>学生信息管理系统</h3>
                <p>学生信息管理系统是一个基于JavaWeb的学生信息管理系统，主要功能有：学生信息的增删改查，学生信息的导入导出，学生信息的分页显示等。</p>
            </div>
    </div>
    </div>
    <script src="http://libs.useso.com/js/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script type="text/javascript" src="./js/dcalendar.picker.js"></script>
	<script type="text/javascript">
		$('#mydatepicker').dcalendarpicker(); 
		$('#mydatepicker2').dcalendarpicker({
			format:'yyyy-mm-dd'
		}); 
		$('#mycalendar').dcalendar();
	</script>
</body>
</html>
