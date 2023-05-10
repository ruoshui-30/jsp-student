<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./css/studentAddForm.css">
    <title>增加学生信息页面</title>
</head>
<body>
    <div class="bigbox">
        <div class="top">
            <h1>增加学生信息</h1>

        </div>
        <div class="divcenter">
        <!-- <div style="height: 10px"></div> -->
        <!-- <%--  使用<form>标签创建表单，在表单中使用<table>标签进行页面布局，使用<input>标签搜集用户输入的数据  --%> -->
            <div class="main">
                <form action="stuAdd.jsp" style="text-align: center;">
                    <!-- <%-- 表格使用align="center"居中显示 --%> -->
                    <table align="center">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <font style="color: red">* 代表必填项</font>
                            </td>
                        </tr>
                        <tr>
                            <td>学号：</td>
                            <td>
                                <input id="sid" name="sid" placeholder="请输入学号" required >
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>姓名：</td>
                            <td><input id="sname" name="sname" placeholder="请输入姓名" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>年龄：</td>
                            <td><input id="sage" name="sage" placeholder="请输入年龄" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>性别：</td>
                            <td><input id="ssex" name="ssex" placeholder="请输入性别" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>地区：</td>
                            <td><input id="snativeplace" name="snativeplace" placeholder="请输入学生所在地区" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>专业：</td>
                            <td><input id="smajor" name="smajor" placeholder="请输入学生所在专业" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>班级：</td>
                            <td><input id="sclass" name="sclass" placeholder="请输入学生所在班级" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                        <tr>
                            <td>民族：</td>
                            <td><input id="snative" name="snative" placeholder="请输入学生所属民族" required>
                                <font style="color: red">*</font>
                            </td>
                        </tr>
                    </table>
            </div>
            <div class="footer">
                <table align="center">
                    <tr style="text-align: center">
                        <td>
                            <input type="submit" value="确认添加">
                        </td>
                        <td>
                            <input type="reset" value="重新输入">
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