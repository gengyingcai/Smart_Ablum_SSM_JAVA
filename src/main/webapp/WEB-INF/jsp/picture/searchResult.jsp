﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from admindesigns.com/demos/absolute/1.1/admin_forms-validation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 06 Aug 2015 02:56:15 GMT -->

<head>
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <title>橘猫相册主页</title>
  <meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
  <meta name="description" content="AbsoluteAdmin - A Responsive HTML5 Admin UI Framework">
  <meta name="author" content="AbsoluteAdmin">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <script src="http://code.jquery.com/jquery-latest.js"></script>

  <!-- Theme CSS -->
  <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">

  <!-- Admin Forms CSS -->
  <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">

  <!-- Favicon -->
  <link rel="shortcut icon" href="/assets/img/favicon.ico">


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
  <![endif]-->
  <link href="/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" crossorigin="anonymous">
  <link href="/themes/explorer-fas/theme.css" media="all" rel="stylesheet" type="text/css" />

</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">

<!-- Start: Main -->
<div id="main">

  <!-- Start: Header -->

  <header class="navbar navbar-fixed-top navbar-shadow" style="text-align: center">
    <div class="navbar-branding">
      <a class="navbar-brand" href="dashboard.html">
        <b>橘猫相册</b>SmartArt
      </a>
      <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
    </div>
    <div style="display: inline-block;
      height: 60px;
      line-height: 60px;">


    </div>


  </header>
  <!-- End: Header -->

  <!-- Start: Sidebar -->
  <aside id="sidebar_left" class="nano nano-light affix">

    <!-- Start: Sidebar Left Content -->
    <div class="sidebar-left-content nano-content">

      <!-- Start: Sidebar Header -->
      <header class="sidebar-header">

        <!-- Sidebar Widget - Author -->
        <div class="sidebar-widget author-widget">
          <div class="media">
            <a class="media-left" href="#">
              <img src="/assets/img/avatars/3.jpg" class="img-responsive">
            </a>
            <div class="media-body">
              <div class="media-author">${userId}</div>
              <div class="media-links">
                <a href="/exit">退出</a>
              </div>
            </div>
          </div>
        </div>



        <!-- Sidebar Widget - Search (hidden) -->
        <div class="sidebar-widget search-widget hidden">
          <div class="input-group">

            <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
          </div>
        </div>

      </header>
      <!-- End: Sidebar Header -->

      <!-- Start: Sidebar Menu -->
      <ul class="nav sidebar-menu">
        <li class="sidebar-label pt20">我的面板</li>
        <li>
          <a href="/showAll">
            <span class="glyphicon glyphicon-book"></span>
            <span class="sidebar-title">全部相片</span>
          </a>
        </li>
        <li>
          <a href="/list">
            <span class="glyphicon glyphicon-home"></span>
            <span class="sidebar-title">我的相册</span>
          </a>
        </li>
        <li>
          <a href="/recycle/recycle">
            <span class="fa fa-calendar"></span>
            <span class="sidebar-title">回收站</span>
          </a>
        </li>
        <li>
          <a href="/retrievepassword" class="animated animated-short fadeInUp">
            <span class="fa fa-gear"></span>
            <span class="sidebar-title">密码修改</span>
          </a>
        </li>

        <!-- End: Sidebar Menu -->

        <!-- Start: Sidebar Collapse Button -->
        <div class="sidebar-toggle-mini">
          <a href="#">
            <span class="fa fa-sign-out"></span>
          </a>

        </div>
        <!-- End: Sidebar Collapse Button -->
      </ul>


      <!-- End: Sidebar Left Content -->

  </aside>

  <!-- Start: Content-Wrapper -->
  <section id="content_wrapper">

    <!-- Begin: Content -->
    <section id="content" class="table-layout animated fadeIn">

      <!-- begin: .tray-center -->
      <div class="tray tray-center">

        <!-- Begin: Content Header -->
        <div class="content-header">
          <h2> 搜索结果：${tagName}</h2>
          <p class="lead"></p>
        </div>
        <!-- message listing panel -->
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">

          <div class="panel  heading-border">


            <!-- message toolbar header -->
            <div class="panel-menu">
              <div class="row">
                <div class="hidden-xs hidden-sm col-md-3">
                  <div class="btn-group">

                  </div>
                </div>
                <div class="col-xs-12 col-md-9 text-right">
                  <div class="btn-group">

                  </div>
                </div>
              </div>
            </div>

            <!--  hide-->
            <!-- Modal -->

            <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog"
                 aria-labelledby="myModalLabel">
              <div class="modal-dialog  modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">上传图片</h4>
                  </div>
                  <div class="modal-body">
                    <form enctype="multipart/form-data">
                      <br>
                      <div class="file-loading">
                        <input id="file-0a" class="file" type="file" multiple data-min-file-count="1" data-theme="fas"
                               style="width:unset;">
                      </div>
                      <br>

                      <button type="reset" class="btn btn-primaryy">重置</button>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存上传</button>
                  </div>
                </div>
              </div>
            </div>

            <!-- message listings table -->
            <div class="panel-body pn">
              <div class="row">
              <c:forEach items="${tag}" var="tag">
                <div class="col-xs-6 col-md-3">
                  <a href="#" class="thumbnail" style="text-align:center;">
                    <img src="${tag}" alt="..." id="look">
                    <style>
                      #look{
                        weight:200px;
                        height:150px;
                        border:1px solid #CCCCCC;
                      }
                    </style>
                  </a>
                </div>
              </c:forEach>
              </div>
            </div>

            <!-- end: .admin-form -->

          </div>
          <!-- end: .tray-center -->
    </section>
    <!-- End: Content -->

  </section>
  <!-- End: Content-Wrapper -->

</div>
<!-- End: Main -->

<!-- BEGIN: PAGE SCRIPTS -->

<style>
  /* demo page styles */
  body {
    min-height: 2300px;
  }

  .content-header b,
  .admin-form .panel.heading-border:before,
  .admin-form .panel .heading-border:before {
    transition: all 0.7s ease;
  }

  /* responsive demo styles */
  @media (max-width: 800px) {
    .admin-form .panel-body {
      padding: 18px 12px;
    }
  }
</style>

<style>
  .ui-datepicker select.ui-datepicker-month,
  .ui-datepicker select.ui-datepicker-year {
    width: 48%;
    margin-top: 0;
    margin-bottom: 0;

    line-height: 25px;
    text-indent: 3px;

    color: #888;
    border-color: #DDD;
    background-color: #FDFDFD;

    -webkit-appearance: none;
    /*Optionally disable dropdown arrow*/
  }
</style>



<!-- jQuery -->
<script src="/vendor/jquery/jquery-1.11.1.min.js"></script>
<script src="/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- jQuery Validate Plugin-->
<script src="/assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>

<!-- jQuery Validate Addon -->
<script src="/assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>

<!-- AdminForms JS -->
<script src="/assets/admin-tools/admin-forms/js/jquery-ui-datepicker.min.js"></script>

<!-- Theme Javascript -->
<script src="/assets/js/utility/utility.js"></script>
<script src="/assets/js/demo/demo.js"></script>
<script src="/assets/js/main.js"></script>
<!-- END: PAGE SCRIPTS -->
<script type="text/javascript" src="/js/pages.js"></script>
<script type="text/javascript" src="/js/items.js"></script>
<!-- END: PAGE SCRIPTS -->
<script src="/js/plugins/piexif.js" type="text/javascript"></script>
<script src="/js/plugins/sortable.js" type="text/javascript"></script>
<script src="/js/fileinput.js" type="text/javascript"></script>
<script src="/js/locales/fr.js" type="text/javascript"></script>
<script src="/js/locales/es.js" type="text/javascript"></script>
<script src="/themes/fas/theme.js" type="text/javascript"></script>
<script src="/themes/explorer-fas/theme.js" type="text/javascript"></script>
</body>

</html>