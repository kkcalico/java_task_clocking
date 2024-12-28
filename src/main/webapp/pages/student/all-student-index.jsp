<%@ page import="com.hstc.task_clocking.entity.Checkin" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %><%--
  Created by IntelliJ IDEA.
  User: heiyu
  Date: 2024/12/9
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>打卡系统</title>
    <meta name="description" content="打卡系统">
    <meta name="keywords" content="打卡系统">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <!-- Font Awesome -->
    <!-- Ionicons -->
    <!-- iCheck -->
    <!-- Morris chart -->
    <!-- jvectormap -->
    <!-- Date Picker -->
    <!-- Daterange picker -->
    <!-- Bootstrap time Picker -->
    <!--<link rel="stylesheet" href="../../../plugins/timepicker/bootstrap-timepicker.min.css">-->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--数据表格-->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- Bootstrap Color Picker -->
    <!-- bootstrap wysihtml5 - text editor -->
    <!--bootstrap-markdown-->
    <!-- Theme style -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <!-- Ion Slider -->
    <!-- ion slider Nice -->
    <!-- bootstrap slider -->
    <!-- bootstrap-datetimepicker -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery 2.2.3 -->
    <!-- jQuery UI 1.11.4 -->
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <!-- Bootstrap 3.3.6 -->
    <!-- Morris.js charts -->
    <!-- Sparkline -->
    <!-- jvectormap -->
    <!-- jQuery Knob Chart -->
    <!-- daterangepicker -->
    <!-- datepicker -->
    <!-- Bootstrap WYSIHTML5 -->
    <!-- Slimscroll -->
    <!-- FastClick -->
    <!-- iCheck -->
    <!-- AdminLTE App -->
    <!-- 表格树 -->
    <!-- select2 -->
    <!-- bootstrap color picker -->
    <!-- bootstrap time picker -->
    <!--<script src="../../../plugins/timepicker/bootstrap-timepicker.min.js"></script>-->
    <!-- Bootstrap WYSIHTML5 -->
    <!--bootstrap-markdown-->
    <!-- CK Editor -->
    <!-- InputMask -->
    <!-- DataTables -->
    <!-- ChartJS 1.0.1 -->
    <!-- FLOT CHARTS -->
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <!-- jQuery Knob -->
    <!-- Sparkline -->
    <!-- Morris.js charts -->
    <!-- Ion Slider -->
    <!-- Bootstrap slider -->
    <!-- bootstrap-datetimepicker -->
    <!-- 页面meta /-->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <header class="main-header">


        <!-- Logo -->
        <c:forEach var="user" items="${userLists}">
            <a href="${pageContext.request.contextPath}/student/page?classId=${user.classId}" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>学生</b></span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>学生</b>后台管理</span>
            </a>
        </c:forEach>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">${taskListsForStudent.size()}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">你有${taskListsForStudent.size()}个邮件</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <!-- 表格容器，允许水平滚动 -->
                                            <div style="overflow-x: auto; width: 100%; padding: 10px;">
                                                <table style="width: 100%; border-collapse: collapse; table-layout: fixed;">
                                                    <thead>
                                                    <tr>
                                                        <!-- 表头，标题，截止时间和删除按钮 -->
                                                        <th style="padding: 10px; text-align: left;">任务标题</th>
                                                        <th style="padding: 10px; text-align: left;">截止时间</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <!-- 使用 c:forEach 渲染每个任务 -->
                                                    <c:forEach var="task_student" items="${taskListsForStudent}">
                                                        <tr>
                                                            <!-- 任务标题 -->
                                                            <td style="padding: 10px; word-wrap: break-word;">${task_student.title}</td>
                                                            <!-- 截止时间 -->
                                                            <td style="padding: 10px; word-wrap: break-word;">
                                                                <small><i class="fa fa-clock-o"></i> ${task_student.endDate}</small>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <c:forEach var="user" items="${userLists}">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="../img/user2-160x160.jpg" class="user-image" alt="User Image">
                                <span class="hidden-xs">${user.name}</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="../img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                    <p>
                                        ${user.name} - ${user.role}
                                        <small>工号：${user.identification}</small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">修改密码</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="${pageContext.request.contextPath}/login/page?type=student"
                                              class="btn btn-default btn-flat">注销</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </nav>
    </header>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="../img/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <c:forEach var="user" items="${userLists}">
                    <div class="pull-left info">
                        <p>${user.name}</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                    </div>
                </c:forEach>
            </div>
            <!-- search form -->
            <!--<form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="搜索...">
            <span class="input-group-btn">
            <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
            </button>
          </span>
        </div>
    </form>-->
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">菜单</li>
                <c:forEach var="user" items="${userLists}">
                    <li id="admin-index">
                        <a href="${pageContext.request.contextPath}/student/page?classId=${user.classId}">
                        <i class="fa fa-dashboard"></i> <span>首页</span></a></li>
                </c:forEach>
                <!-- 菜单 -->
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>后台通用页面</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <li id="admin-login">
                            <a href="${pageContext.request.contextPath}/login/page?type=student">
                                <i class="fa fa-circle-o"></i> 登录
                            </a>
                        </li>

                        <li id="admin-register">
                            <a href="${pageContext.request.contextPath}/register/page?type=student">
                                <i class="fa fa-circle-o"></i> 注册
                            </a>
                        </li>
                        <c:forEach var="user" items="${userLists}">
                            <li id="admin-profile">
                                <a href="${pageContext.request.contextPath}/student/profile">
                                    <i class="fa fa-circle-o"></i> 个人中心
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cube"></i> <span>打卡系统</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <c:forEach var="task_student" items="${taskListsForStudent}">
                            <c:forEach var="user" items="${userLists}">
                                <c:if test="${task_student == taskListsForStudent[0]}">
                                    <li id="order-manage">
                                        <a href="${pageContext.request.contextPath}/StudentTask/toView?classId=${user.classId}">
                                            <i class="fa fa-circle-o"></i> 查看与提交任务
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </c:forEach>
                    </ul>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                控制面板
                <small>首页</small>
            </h1>
            <ol class="breadcrumb">
                <c:forEach var="user" items="${userLists}">
                    <li id="admin-index"><a href="${pageContext.request.contextPath}/student/page?classId=${user.classId}">
                        <i class="fa fa-dashboard"></i> <span>首页</span></a></li>
                </c:forEach>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">


            <!-- 统计数值 -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>
                                <c:set var="taskCount" value="0" />
                                <c:forEach var="task_student" items="${taskListsForStudent}">
                                    <!-- 根据班级条件过滤任务 -->
                                    <c:forEach var="user" items="${userLists}">
                                        <c:if test="${task_student.classID == user.classId}">
                                            <c:set var="taskCount" value="${taskCount + 1}" />
                                        </c:if>
                                    </c:forEach>
                                </c:forEach>
                                ${taskCount}
                            </h3>
                            <p>待处理任务</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>
                                <c:set var="taskCount" value="0" />
                                <c:forEach var="task_student" items="${taskListsForStudent}">
                                    <!-- 根据班级条件过滤任务 -->
                                    <c:forEach var="checkin_student" items="${checkinListsForStudent}">
                                        <c:if test="${checkin_student.taskId == task_student.homeworkID}">
                                            <c:set var="taskCount" value="${taskCount + 1}" />
                                        </c:if>
                                    </c:forEach>
                                </c:forEach>
                                ${taskCount}
                            </h3>
                            <p>已完成任务</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>44</h3>

                            <p>新注册用户</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="${pageContext.request.contextPath}/register/page?type=student"
                           class="small-box-footer">详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>65</h3>

                            <p>个人中心</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="${pageContext.request.contextPath}/student/profile" class="small-box-footer">
                            详细 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->


            <!-- 待处理订单 -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <i class="fa fa-cube"></i>
                    <h3 class="box-title">待处理任务</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--数据列表-->
                        <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="">任务编号</th>
                                <th class="">发布教师</th>
                                <th class="">任务标题</th>
                                <th class="">内容简述</th>
                                <th class="">开始时间</th>
                                <th class="">截止时间</th>
                                <th class="">每日提交时间</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="task_student" items="${taskListsForStudent}">
                                <tr class="task-row" data-end-date="${task_student.endDate}">
                                    <td>${task_student.homeworkID}</td>
                                    <td>${task_student.teacherID}</td>
                                    <td>${task_student.title}</td>
                                    <td>${task_student.content}</td>
                                    <td>${task_student.startDate}</td>
                                    <td>${task_student.endDate}</td>
                                    <td>
                                        <script type="text/javascript">
                                            var deadlineStr = "${task_student.deadline}";

                                            // 通过 Date 对象解析 LocalDateTime 字符串
                                            var deadlineDate = new Date(deadlineStr);

                                            // 格式化为 HH:mm:ss
                                            var formattedTime = deadlineDate.getHours().toString().padStart(2, '0') + ":" +
                                                deadlineDate.getMinutes().toString().padStart(2, '0') + ":" +
                                                deadlineDate.getSeconds().toString().padStart(2, '0');

                                            document.write(formattedTime);  // 输出格式化后的时间
                                        </script>
                                    </td>

                                    <td class="text-center">
                                        <c:forEach var="user" items="${userLists}">
                                            <button type="button" class="btn bg-olive btn-xs"
                                                    onclick='location.href="${pageContext.request.contextPath}/StudentTask/toView?classId=${user.classId}"'>详情</button>
                                        </c:forEach>
                                        <c:choose>
                                            <c:when test="${not empty checkinListsForStudent}">
                                                <c:set var="found" value="false"/>
                                                <c:forEach var="checkin_student" items="${checkinListsForStudent}">
                                                    <c:if test="${checkin_student.taskId == task_student.homeworkID}">
                                                        <span style="color: ${checkin_student.status == '已确认' ? 'green' : 'black'};">已提交</span>
                                                        <c:set var="found" value="true"/>
                                                    </c:if>
                                                </c:forEach>

                                                <c:if test="${!found}">
                                                    <span style="color: black;">未提交</span>
                                                </c:if>
                                            </c:when>
                                            <c:otherwise>
                                                <span style="color: black;">未提交</span>
                                            </c:otherwise>
                                        </c:choose>

                                        <!-- 判断是否截止 -->
                                        <span class="status-text"></span>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                        <script type="text/javascript">
                            // 获取当前日期
                            var currentDate = new Date().toISOString().split('T')[0];  // 格式：yyyy-MM-dd

                            // 遍历所有任务行，进行日期比较
                            document.querySelectorAll('.task-row').forEach(function(row) {
                                var taskEndDate = row.getAttribute('data-end-date').split('T')[0];  // 获取任务截止日期
                                var statusText = row.querySelector('.status-text'); // 获取状态文本元素

                                if (currentDate > taskEndDate) {
                                    // 如果当前日期大于任务截止日期，显示已截止并标红
                                    statusText.textContent = '已截止';
                                    statusText.style.color = 'red';

                                    // 隐藏未提交状态
                                    row.querySelector('span[style="color: black;"]').style.display = 'none';  // 隐藏 "未提交" 状态
                                } else {
                                    // 如果任务未截止，显示提交状态
                                    statusText.textContent = ''; // 清除 "已截止" 文本
                                }
                            });
                        </script>
                        <!--数据列表/-->
                    </div>
                    <!-- 数据表格 /-->
                </div>
                <!-- /.box-body -->
            </div>
        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2014-2017 <a href="https://adminlte.io/">adminlte</a>.</strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->

</div>

<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
        console.log($('#dataList').length);  // 查看表格是否渲染完成
        $('#dataList').DataTable({
            "paging": true,
            "lengthChange": false,
            "info": true,
            "autoWidth": false,
            "pageLength": 10,
            "language": {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 条记录",
                "sZeroRecords": "没有找到记录",
                "sInfo": "显示第 _START_ 到 _END_ 条记录， 共 _TOTAL_ 条记录",
                "sInfoEmpty": "显示第 0 到 0 条记录，共 0 条记录",
                "sInfoFiltered": "(由 _MAX_ 条记录过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上一页",
                    "sNext": "下一页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 激活排序列升序",
                    "sSortDescending": ": 激活排序列降序"
                }
            }
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function() {
        // 激活导航位置
        setSidebarActive("admin-index");
    });
</script>
</body>

</html>







