<%--
  Created by IntelliJ IDEA.
  User: heiyu
  Date: 2024/12/9
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/moment@2.29.1/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-datetimepicker@4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
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
        <a href="${pageContext.request.contextPath}/student/page" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>学生</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>学生</b>后台管理</span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
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

                <li id="admin-index"><a href="${pageContext.request.contextPath}/student/page">
                    <i class="fa fa-dashboard"></i> <span>首页</span></a></li>

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
                            <c:forEach var="classes" items="${classLists}">
                                <!-- 只在第一次循环时显示个人中心链接 -->
                                <c:if test="${classes == classLists[0]}">
                                    <li id="admin-profile">
                                        <a href="${pageContext.request.contextPath}/student/profile">
                                            <i class="fa fa-circle-o"></i> 个人中心
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>
                        </c:forEach>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cube"></i> <span>打卡系统管理</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                    </a>
                    <ul class="treeview-menu">
                        <c:forEach var="user" items="${userLists}">
                            <li id="travellog-manage">
                                <a href="${pageContext.request.contextPath}/StudentTask/toView?classId=${user.classId}">
                                    <i class="fa fa-circle-o"></i> 查看与提交任务
                                </a>
                            </li>
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
                任务管理
                <small>任务表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/student/page">
                    <i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="${pageContext.request.contextPath}/StudentTask/toView">任务管理</a></li>
                <li class="active">任务表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">
            <!-- 任务信息部分 -->
            <div class="panel-heading">任务信息</div>
                <form id="SubmitsTask" method="post" action="${pageContext.request.contextPath}/StudentCheckin/submitTask" enctype="multipart/form-data">

                    <div class="row data-type">

                        <!-- 所属班级 -->
                        <div class="col-md-2 title">所属班级</div>
                        <div class="col-md-4 data">
                            <c:forEach var="task_student" items="${taskListsForStudent}">
                                <input type="text" class="form-control" placeholder="所属班级"
                                       name="ClassID" readonly value="${task_student.classID}">
                            </c:forEach>
                        </div>

                        <!-- 任务编号 -->
                        <div class="col-md-2 title">任务编号</div>
                        <div class="col-md-4 data">
                            <select id="homeworkSelect" class="form-control select2" style="width: 100%;">
                                <option value="">选择任务</option>
                                <c:forEach var="task_student" items="${taskListsForStudent}">
                                    <option value="${task_student.homeworkID}">${task_student.homeworkID}</option>
                                </c:forEach>
                            </select>
                            <!-- 隐藏的 input 保存实际 homeworkID -->
                            <input type="hidden" id="homeworkID" name="taskId" readonly>
                        </div>
                        <!-- 任务标题 -->
                        <div class="col-md-2 title">任务标题</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="任务标题" name="title" value="" readonly>
                        </div>

                        <!-- 内容概述 -->
                        <div class="col-md-2 title">内容概述</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" placeholder="内容概述" name="content_teacher" value="" readonly>
                        </div>

                        <!-- 开始时间 -->
                        <div class="col-md-2 title">开始时间</div>
                        <div class="col-md-4 data">
                            <div class="input-group date" id="datetimepicker-start">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" placeholder="任务发布时间" name="startDate" readonly>
                            </div>
                        </div>

                        <!-- 结束时间 -->
                        <div class="col-md-2 title">结束时间</div>
                        <div class="col-md-4 data">
                            <div class="input-group date" id="datetimepicker-end">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" placeholder="任务结束时间" name="endDate" readonly>
                            </div>
                        </div>

                        <!-- 每天打卡的截止时间 -->
                        <div class="col-md-2 title">每天打卡的截止时间</div>
                        <div class="col-md-4 data">
                            <div class="input-group date" id="datetimepicker-due">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" placeholder="任务打卡截止时间" name="deadline" readonly>
                            </div>
                        </div>

                        <!-- 附件下载 -->
                        <div class="col-md-2 title">任务附件</div>
                        <div class="col-md-4 data" style="display: flex; align-items: center;">
                            <!-- 显示文件名 -->
                            <input type="text" class="form-control" name="lastFile" readonly style="flex: 1;">

                            <!-- 下载按钮 -->
                            <button type="button" class="btn btn-success" id="downloadBtn" style="margin-left: 10px;">
                                下载
                            </button>
                        </div>

                        <div id="additionalFields" style="display: none;">
                            <!-- 提交时间 -->
                            <div class="col-md-2 title">提交时间</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" id="checkinTime" name="checkinTime" readonly>
                            </div>

                            <!-- 附件上传 -->
                            <div class="col-md-2 title">附件上传</div>
                            <div class="col-md-4 data">
                                <input type="file" class="form-control" id="uploadFile_Student" name="uploadFile_Student">
                            </div>

                            <div class="col-md-2 title" style="display: flex; align-items: center; justify-content: center; height: 8em;">内容</div>
                            <div class="col-md-10 text">
                                <textarea class="form-control" id="contentInput" name="content" placeholder="请输入内容" rows="5"></textarea>
                            </div>

                            <!-- 隐藏学号 -->
                            <c:forEach var="user" items="${userLists}">
                                <input type="hidden" id="userId" name="userId" value="${user.identification}">
                            </c:forEach>
                        </div>
                    </div>

                    <!-- 提交按钮 -->
                    <div class="box-tools text-center" style="width: 100%; display: flex; justify-content: center; gap: 10px;">
                        <div id="additionalButton" style="display: none;">
                            <button type="submit" class="btn bg-red">提交</button>
                        </div>
                        <button type="button" class="btn bg-default" onclick="history.back(-1);">返回</button>
                    </div>
                </form>

            <!-- 初始化日期选择器 -->
            <script>
                $(document).ready(function() {
                    moment.locale('zh-cn'); // 设置为中文

                    // 初始化日期选择器
                    $('#datetimepicker-start').datetimepicker({
                        format: 'yyyy-mm-dd HH:mm:ss',
                        showTodayButton: true,
                        sideBySide: true,
                        locale: 'zh-cn',
                        autoclose: false
                    });

                    $('#datetimepicker-end').datetimepicker({
                        format: 'yyyy-mm-dd HH:mm:ss',
                        showTodayButton: true,
                        sideBySide: true,
                        locale: 'zh-cn',
                        autoclose: false
                    });

                    $('#datetimepicker-due').datetimepicker({
                        format: 'yyyy-mm-dd HH:mm:ss',
                        showTodayButton: true,
                        sideBySide: true,
                        locale: 'zh-cn',
                        autoclose: false
                    });

                    // 初始化 select2 插件
                    $('.select2').select2();

                    // 监听任务编号的选择事件
                    $("#homeworkSelect").change(function() {
                        var homeworkID = $(this).val(); // 获取选中的任务编号
                        var classID = $("input[name='ClassID']").val(); // 获取当前班级的 classID

                        console.log("选中的 homeworkID:", homeworkID);
                        console.log("选中的 classID:", classID);

                        $("#homeworkID").val(homeworkID);

                        if (homeworkID) {
                            $("#additionalFields").show();  // 显示附加字段
                            $("#additionalButton").show();  // 显示提交按钮

                            // 请求任务数据
                            $.ajax({
                                url: '${pageContext.request.contextPath}/StudentTask/toGetStudentTask',
                                type: 'GET',
                                data: {
                                    homeworkID: homeworkID,
                                    classID: classID
                                },
                                success: function(response) {
                                    console.log("返回的任务数据：", response);

                                    // 填充任务相关字段
                                    $("input[name='title']").val(response.title);
                                    $("input[name='content_teacher']").val(response.content);
                                    $("input[name='startDate']").val(response.startDate);
                                    $("input[name='endDate']").val(response.endDate);
                                    $("input[name='deadline']").val(response.deadline);

                                    // 填充签到时间为当前时间
                                    var currentTime = moment().format("YYYY-MM-DD HH:mm:ss");
                                    $("#checkinTime").val(currentTime);  // 设置签到时间

                                    // 计算并比较当前时间与任务结束时间
                                    var currentTime = moment();
                                    var endDate = moment(response.endDate, "YYYY-MM-DD HH:mm:ss"); // 转换成 moment 对象

                                    // 判断是否超时
                                    if (currentTime.isAfter(endDate)) {
                                        // 当前时间大于结束时间，显示“不可以提交”并隐藏额外字段
                                        $("#additionalFields").hide();
                                        $("#additionalButton").hide();
                                        $("button[type='button']").text("任务已结束，无法提交").prop("disabled", true); // 修改返回按钮文本
                                    } else {
                                        // 如果当前时间没有超过结束时间，继续显示正常内容
                                        $("#additionalFields").show();
                                        $("#additionalButton").show();
                                    }

                                    // 处理附件下载
                                    if (response.lastFile) {
                                        var filePath = response.lastFile;
                                        var fileName = filePath.split('/').pop();
                                        var cleanFileName = fileName.replace("teacher-uploads", "");

                                        $("input[name='lastFile']").val(cleanFileName);

                                        $("#downloadBtn").off("click").on("click", function() {
                                            var cleanFileName = $("input[name='lastFile']").val();
                                            if (!cleanFileName) {
                                                alert("文件名不存在！");
                                                return;
                                            }
                                            var downloadUrl = "${pageContext.request.contextPath}/Download/getFile?fileName="
                                                + encodeURIComponent(cleanFileName)
                                                + "&identification=" + encodeURIComponent("teacher");;
                                            window.location.href = downloadUrl;
                                        });
                                    } else {
                                        $("input[name='lastFile']").val("暂无附件");
                                        $("#downloadBtn").prop("disabled", true).text("无文件");
                                    }
                                },
                                error: function(xhr, status, error) {
                                    console.log("错误信息：", error);
                                    alert('无法加载任务数据');
                                }
                            });
                        } else {
                            // 如果没有选择任务编号，则清空表单
                            $("input[name='title']").val('');
                            $("input[name='content_teacher']").val('');
                            $("input[name='startDate']").val('');
                            $("input[name='endDate']").val('');
                            $("input[name='deadline']").val('');
                        }
                    });

                    // 表单提交前检查附件是否上传
                    document.getElementById('SubmitsTask').addEventListener('submit', function(event) {
                        var fileInput = document.getElementById('uploadFile_Student');
                        if (!fileInput.files.length) {
                            alert('请上传附件');
                            event.preventDefault(); // 阻止表单提交
                        }
                    });
                });
            </script>
        </section>
        <!-- 正文区域 /-->
    </div>
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
<!---->