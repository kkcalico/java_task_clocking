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
        <a href="${pageContext.request.contextPath}/teacher/page" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>教师</b></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>教师</b>后台管理</span>
        </a>


        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
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
                                        <a href="${pageContext.request.contextPath}/login/page?type=teacher"
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

                <li id="admin-index"><a href="${pageContext.request.contextPath}/teacher/page">
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
                            <a href="${pageContext.request.contextPath}/login/page?type=teacher">
                                <i class="fa fa-circle-o"></i> 登录
                            </a>
                        </li>

                        <li id="admin-register">
                            <a href="${pageContext.request.contextPath}/register/page?type=teacher">
                                <i class="fa fa-circle-o"></i> 注册
                            </a>
                        </li>
                        <c:forEach var="user" items="${userLists}">
                            <c:forEach var="classes" items="${classLists}">
                                <!-- 只在第一次循环时显示个人中心链接 -->
                                <c:if test="${classes == classLists[0]}">
                                    <li id="admin-profile">
                                        <a href="${pageContext.request.contextPath}/teacher/profile">
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
                            <c:forEach var="classes" items="${classLists}">
                                <!-- 只在第一次循环时显示个人中心链接 -->
                                <c:if test="${classes == classLists[0]}">

                                    <li id="travellog-manage">
                                        <a href="${pageContext.request.contextPath}/TeacherTask/toAdd">
                                            <i class="fa fa-circle-o"></i> 发布任务
                                        </a>
                                    </li>

                                    <li id="order-cancel">
                                        <a href="${pageContext.request.contextPath}/TeacherTask/toUpdate?teacherID=${user.identification}">
                                            <i class="fa fa-circle-o"></i> 编辑任务
                                        </a>
                                    </li>

                                    <li id="order-cancel">
                                        <a href="${pageContext.request.contextPath}/TeacherCheckin/toSelect">
                                            <i class="fa fa-circle-o"></i> 查看学生任务
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
                学生打卡管理
                <small>任务表单</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/teacher/page">
                    <i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="${pageContext.request.contextPath}/TeacherTask/toAdd">学生打卡管理</a></li>
                <li class="active">任务表单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">
            <!-- 任务信息部分 -->
            <div class="panel-heading">学生打卡信息</div>
                <form method="post" action="${pageContext.request.contextPath}/TeacherCheckin/callbackCheckin" enctype="multipart/form-data">

                    <div class="row data-type">
                        <!-- 管理班级 -->
                        <div class="col-md-2 title">管理班级</div>
                        <div class="col-md-4 data">
                            <select id="classSelect" class="form-control select2" style="width: 100%;" name="classID">
                                <option value="">筛选班级</option>
                                <c:forEach var="classes" items="${classLists}">
                                    <option value="${classes.classID}">${classes.classID}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <!-- 任务编号 -->
                        <div class="col-md-2 title">任务编号</div>
                        <div class="col-md-4 data">
                            <select id="taskSelect" class="form-control select2" style="width: 100%;" name="taskID">
                                <option value="">选择任务</option>
                                <c:forEach var="checkin_teacher" items="${checkinListsForTeacher}">
                                    <option value="${checkin_teacher.taskId}">${checkin_teacher.taskId}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <i class="fa fa-cube"></i>
                            <h3 class="box-title">已发布的任务</h3>
                        </div>

                        <div class="box-body">

                            <!-- 数据表格 -->
                            <div class="table-box">

                                <!--数据列表-->
                                <table id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                    <thead>
                                    <tr>
                                        <th class="">任务编号</th>
                                        <th class="">任务标题</th>
                                        <th class="">提交学号</th>
                                        <th class="">提交内容</th>
                                        <th class="">结束时间</th>
                                        <th class="">提交时间</th>
                                        <th class="">作答详情</th>
                                        <th class="text-center">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="task" items="${taskLists}">
                                        <!-- 筛选：匹配 task.teacherID 和 user.identification -->
                                        <c:forEach var="user" items="${userLists}">
                                            <c:if test="${task.teacherID == user.identification}">
                                                <!-- 如果匹配到的任务，遍历 checkin_teacher -->
                                                <c:forEach var="checkin_teacher" items="${checkinListsForTeacher}">
                                                    <!-- 筛选：匹配 task.homeworkID 和 checkin_teacher.taskID -->
                                                    <c:if test="${task.homeworkID == checkin_teacher.taskId}">
                                                        <tr>
                                                            <td>${checkin_teacher.taskId}</td>
                                                            <td>${task.title}</td>
                                                            <td>${checkin_teacher.userId}</td>
                                                            <td>${checkin_teacher.content}</td>
                                                            <td>${task.endDate}</td>
                                                            <td>${checkin_teacher.checkinTime}</td>
                                                            <td>
                                                                <input type="text" value="" name="submitFile" style="flex: 1;" readonly>
                                                                <button type="button" id="downloadBtn" style="margin-left: 10px;">
                                                                    下载
                                                                </button>
                                                                <input type="hidden" class="attachmentData" value="${checkin_teacher.attachment}">
                                                            </td>
                                                            <!-- 隐藏字段 -->
                                                            <input type="hidden" name="identification" value="${user.identification}">
                                                            <input type="hidden" name="checkinId" value="${checkin_teacher.checkinId}">
                                                            <input type="hidden" name="classId" value="${task.classID}">

                                                            <td class="text-center">
<%--                                                                <button type="submit" class="btn bg-olive btn-xs" onclick=''>查看</button>--%>
                                                                <c:if test="${checkin_teacher.status == '已确认'}">
                                                                    <button type="button" class="btn bg-olive btn-xs"
                                                                            onclick='location.href=
                                        "${pageContext.request.contextPath}/TeacherCheckin/callbackCheckin?checkinId=${checkin_teacher.checkinId}"'>打回</button>
                                                                </c:if>
                                                                <c:if test="${checkin_teacher.status != '已确认'}">
                                                                    <button type="button" class="btn bg-olive btn-xs" disabled>未交</button>
                                                                </c:if>
                                                                </button>
                                                            </td>
                                                        </tr>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
            <!-- 初始化日期选择器 -->
            <script>
                $(document).ready(function () {
                    // 初始化 select2 插件
                    $('.select2').select2();

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

                    // 监听班级和任务的选择事件
                    $("#classSelect, #taskSelect").change(function () {
                        var selectedClassID = $("#classSelect").val(); // 获取选择的班级 ID
                        var selectedTaskID = $("#taskSelect").val();   // 获取选择的任务编号

                        // 遍历表格中的每一行
                        $("#dataList tbody tr").each(function () {
                            var rowClassID = $(this).find("td:nth-child(3)").text().trim(); // 班级编号（第三列）
                            var rowTaskID = $(this).find("td:nth-child(1)").text().trim();  // 任务编号（第一列）

                            var matchClass = true; // 班级是否匹配
                            var matchTask = true;  // 任务是否匹配

                            // 筛选班级（只比较后两位）
                            if (selectedClassID) {
                                matchClass = rowClassID.startsWith(selectedClassID); // 检查学号是否以班级编号开头
                            }

                            // 筛选任务编号
                            if (selectedTaskID) {
                                matchTask = selectedTaskID === rowTaskID;
                            }

                            // 显示或隐藏行
                            if (matchClass && matchTask) {
                                $(this).show(); // 满足条件，显示
                            } else {
                                $(this).hide(); // 不满足条件，隐藏
                            }
                        });
                    });
                    $(document).ready(function() {
                        $("#dataList tbody tr").each(function () {
                            var row = $(this);
                            var attachment = row.find(".attachmentData").val();

                            if (attachment) {
                                var fileName = attachment.split('/').pop();
                                var cleanFileName = fileName.replace("student-submits", "");
                                row.find("input[name='submitFile']").val(cleanFileName);
                            }

                            // 给当前行的下载按钮绑定事件
                            row.find("#downloadBtn").off("click").on("click", function () {
                                var cleanFileName = row.find("input[name='submitFile']").val(); // 获取当前行的文件名
                                if (!cleanFileName) {
                                    alert("文件名不存在！");
                                    return;
                                }
                                var downloadUrl = "${pageContext.request.contextPath}/Download/getFile?fileName="
                                    + encodeURIComponent(cleanFileName)
                                    + "&identification=" + encodeURIComponent("teacher");
                                console.log("下载 URL:", downloadUrl);

                                // 触发下载请求
                                window.location.href = downloadUrl;
                            });
                        });
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