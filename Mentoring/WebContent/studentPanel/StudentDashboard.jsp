<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.UserInfo"%>
<%@page import="bean.UserBean"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Virtual MENTOR</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="Source/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="Source/css/font-awesome.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="Source/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="Source/css/_all-skins.min.css">
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<%	
	if(session.getAttribute("USERAUTH") != null){
		UserInfo staff = (UserInfo)session.getAttribute("USERINFO");
		String image = null;
		if(staff.getSex().equals("Male"))
			image = "Source/img/avatar5.png";
		else
			image = "Source/img/avatar2.png";
%>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper" style="margin: 0; height: 100%; overflow-y: hidden;">

  <header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
      <span class="logo-lg"><b>Virtual</b> MENTOR</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<%= image %>" class="user-image" alt="User Image">
              <span class="hidden-xs"><%= staff.getName() %></span>
            </a>
          </li>
         
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  
<aside class="main-sidebar" >
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" >
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active">
          <a href="Welcome.jsp" target="Iframe">
            <i class="fa fa-home" aria-hidden="true" ></i> <span>Home</span>
          </a>
        </li>
        <li><a href="studentProfile" target="Iframe"><i class="fa fa-id-card-o text-green"></i> <span>Profile</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-exclamation-circle" aria-hidden="true"></i> <span>Problems</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="ShareProblems" target="Iframe"><i class="fa fa-comments" aria-hidden="true"></i> <span>Share Problems</span></a></li>
            <li><a href="ViewProblems" target="Iframe"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Problem & Solution</span></a></li>
          </ul>
        </li>
        <!-- error = 2 for neutral status , 1 for positive and 0 negative -->
        <li><a href="ChangePassword.jsp?error=2" target="Iframe"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> <span>Change Password</span></a></li>
        <li><a href="Logout" ><i class="fa fa-power-off text-red" aria-hidden="true"></i> <span>Logout</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Main content -->

    <section class="content">
    	<div style="">
          <iframe name="Iframe" src="Welcome.jsp" style="width: 1110px;height: 540px;background-color: white;">

      
          </iframe> 
        </div>
    </section>
    

    
    
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0
    </div>
    <strong>Copyright &copy; 2017 <span style="color: #2fa5f9;">devBOX.</span></strong> All rights
    reserved.
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="Source/js/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="Source/js/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="Source/Source/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="Source/js/raphael.min.js"></script>

<!-- Bootstrap WYSIHTML5 -->
<script src="Source/js/bootstrap3-wysihtml5.all.min.js"></script>

<!-- AdminLTE App -->
<script src="Source/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) 
<script src="dist/js/pages/dashboard.js"></script>-->

</body>
<%
}
	else
		response.sendRedirect("Login.jsp");
	
%>
</html>
