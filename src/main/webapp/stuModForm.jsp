<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/studentModForm.css">
    <title>学生信息修改页面</title>
</head>
<body>
    <div class="bigbox">
        <div class="top">
            <h1>学生信息修改</h1>
            <p>
                注意：学号不能修改
            </p>
        </div>
        <div class="divcenter">
            <!-- <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%> -->
            <div class="main">
                <form action="stuMod.jsp" style="text-align: center">
                    <table align="center">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <font color="red">*代表必填项</font>
                            </td>
                        </tr>
                        <tr>
                            <td>学号：</td>
                            <!-- <%-- readonly属性规定字段只能读，不能编辑修改--%> -->
                            <td><input id="sid" name="sid" value="<%=request.getParameter("sid")%>" required readonly></td>
                        </tr>
                        <tr>
                            <td>姓名：</td>
                            <!-- <%--  required 属性规定必需在提交表单之前填写输入字段  --%> -->
                            <td><input id="sname" name="sname" value="<%=request.getParameter("sname")%>" required><font
                                    color="red">*</font></td>
                        </tr>
                        <tr>
                            <td>年龄：</td>
                            <td><input id="sage" name="sage" value="<%=request.getParameter("sage")%>"></td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><input id="ssex" name="ssex" value="<%=request.getParameter("ssex")%>"></td>
                        </tr>
                        <tr>
                            <td>地区：</td>
                            <td><input id="snativeplace" name="snativeplace" value="<%=request.getParameter("snativeplace")%>"></td>
                        </tr>
                        <tr>
                            <td>专业：</td>
                            <td><input id="smajor" name="smajor" value="<%=request.getParameter("smajor")%>"></td>
                        </tr>
                        <tr>
                            <td>班级：</td>
                            <td><input id="sclass" name="sclass" value="<%=request.getParameter("sclass")%>"></td>
                        </tr>
                        <tr>
                            <td>民族：</td>
                            <td><input id="snative" name="snative" value="<%=request.getParameter("snative")%>"></td>
                        </tr>
                    </table>
            </div>
            <div class="footer">
                <table align="center">
                    <tr style="text-align: center">
                        <td>
                            <input type="submit" value="确认修改">
                        </td>
                        <td>
                            <input type="button" value="返回" onclick="window.location.href='student.jsp'">
                        </td>
                    </tr>
                </table>
            </div>
            </form>
        </div>
    </div>
</body>
</html>