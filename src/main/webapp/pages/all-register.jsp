<%@ taglib prefix="padding-left" uri="http://jakarta.apache.org/taglibs/standard/permittedTaglibs" %>
<%--
  Created by IntelliJ IDEA.
  User: heiyu
  Date: 2024/12/9
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">


    <title>
        数据 - 打卡系统 | Log in</title>


    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- Theme style -->
    <!-- iCheck -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
</head>

<body class="hold-transition register-page">
<div class="register-box">
    <div class="register-logo">
        <%
            String userType = request.getParameter("type"); // 获取传递的参数值
        %>
        <a href="${pageContext.request.contextPath}/redirect/toHome?type=<%= userType %>">
            <b>打卡</b>后台管理系统
        </a>
    </div>

    <div class="register-box-body">
        <p class="login-box-msg">新用户注册</p>

        <form action="${pageContext.request.contextPath}/register/sql" method="post">
<%--            <div class="form-group has-feedback">--%>
<%--                <input type="text" name="UserId" class="form-control" placeholder="用户id" required>--%>
<%--                <span class="glyphicon glyphicon-user form-control-feedback"></span>--%>
<%--            </div>--%>
            <div class="form-group has-feedback">
                <input type="text" name="name" class="form-control" placeholder="全名" required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="text" name="identification" class="form-control" placeholder="学号/教工号" required>
                <span class="glyphicon glyphicon-credit-card form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="password" class="form-control" placeholder="密码" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" name="confirmPassword" class="form-control" placeholder="确认密码" required>
                <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="form-group">
                <label for="role">角色</label>
                <select id="role" name="role" class="form-control" onchange="toggleClassField()" required>
                    <option value="">请选择角色</option>
                    <option value="STUDENT">学生</option>
                    <option value="TEACHER">教师</option>
                </select>
            </div>
            <div class="form-group has-feedback" id="classField" style="display: none;">
                <input type="text" name="classId" id="classId" class="form-control" placeholder="班级" required>
                <span class="glyphicon glyphicon-education form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" required> 我同意 <a href="#">协议</a>
                        </label>
                    </div>
                </div>
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">注册</button>
                </div>
            </div>
        </form>

        <script>
            function toggleClassField() {
                const role = document.getElementById("role").value;
                const classField = document.getElementById("classField");
                const classIdInput = document.getElementById("classId");

                if (role === "STUDENT") {
                    classField.style.display = "block"; // 显示班级字段
                    classIdInput.setAttribute('required', 'required'); // 使班级字段为必填
                } else {
                    classField.style.display = "none"; // 隐藏班级字段
                    classIdInput.removeAttribute('required'); // 移除必填要求
                    classIdInput.value = 0; // 清空班级字段值
                }
            }
        </script>
        <a href="${pageContext.request.contextPath}/login/page" class="text-center">我有账号，现在就去登录</a>
    </div>
    <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<!-- Bootstrap 3.3.6 -->
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script>
    $(function() {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>

</html>




