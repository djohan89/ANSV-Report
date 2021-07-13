<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title default="Master-Layout" /></title>
<link rel="shortcut icon" href="<c:url value="/assets/user/img/ANSV_logo.png" />" />

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/fontawesome-free/css/all.min.css" />">

<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" />">

<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/icheck-bootstrap/icheck-bootstrap.min.css" />">

<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/dist/css/adminlte.min.css" />">

<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/overlayScrollbars/css/OverlayScrollbars.min.css" />">

<!-- Daterange picker -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/daterangepicker/daterangepicker.css" />">

<!-- summernote -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/summernote/summernote-bs4.min.css" />">

<!-- === Datatable === -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/user/vendor/datatables/css/bootstrap.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/user/vendor/datatables/css/dataTables.bootstrap4.min.css" />" />
	
	<script type="text/javascript" src="<c:url value="/assets/user/vendor/jquery/jquery.js" />"></script>
	<%-- <script type="text/javascript" src="<c:url value="/assets/user/vendor/datatables/js/jquery-3.5.1.js" />"></script> --%>
	<script type="text/javascript" src="<c:url value="/assets/user/vendor/datatables/js/jquery.dataTables.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/assets/user/vendor/datatables/js/dataTables.bootstrap4.min.js" />"></script>
	
<!-- === XLSX(excel) === -->	
	<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/jszip.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/xlsx.js"></script> -->
	<script src="<c:url value="/assets/user/vendor/xlsx/js/jszip.js" />"></script>
	<script src="<c:url value="/assets/user/vendor/xlsx/js/xlsx.js" />"></script>
	
<!-- === Select 2 === -->
	<link href="<c:url value="/assets/user/vendor/select2/css/select2.min.css" />" rel="stylesheet" />
	<script src="<c:url value="/assets/user/vendor/select2/js/select2.min.js" />"></script>
	
<!-- ===== Đầu: Thư viện Alertify ===== -->
	<!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
	<!-- Bootstrap theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
<!-- ===== Cuối: Thư viện Alertify ===== -->
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="<c:url value="/assets/user/img/ANSV_logo.png" />"
				alt="ANSV logo" height="60">
		</div>



		<!-- ===== Navbar(header) ===== -->
		<%@include file="/WEB-INF/views/layouts/web/header.jsp"%>



		<!-- ===== Main Sidebar Container(menu) ===== -->
		<%@include file="/WEB-INF/views/layouts/web/menu.jsp"%>



		<!-- ===== Body ===== -->
		<decorator:body />



		<!-- ===== Footer ===== -->
		<%-- <%@include file="/WEB-INF/views/layouts/web/footer.jsp"%> --%>



		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery UI 1.11.4 -->
	<script
		src="<c:url value="/assets/user/vendor/jquery-ui/jquery-ui.min.js" />"></script>
		
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script
		src="<c:url value="/assets/user/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
	<!-- ChartJS -->
	<script
		src="<c:url value="/assets/user/vendor/chart.js/Chart.min.js" />"></script>
		
	<!-- Sparkline -->
	<script
		src="<c:url value="/assets/user/vendor/sparklines/sparkline.js" />"></script>
		
	<!-- jQuery Knob Chart -->
	<script
		src="<c:url value="/assets/user/vendor/jquery-knob/jquery.knob.min.js" />"></script>
		
	<!-- daterangepicker -->
	<script
		src="<c:url value="/assets/user/vendor/moment/moment.min.js" />"></script>
	<script
		src="<c:url value="/assets/user/vendor/daterangepicker/daterangepicker.js" />"></script>
		
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="<c:url value="/assets/user/vendor/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js" />"></script>
		
	<!-- Summernote -->
	<script
		src="<c:url value="/assets/user/vendor/summernote/summernote-bs4.min.js" />"></script>
		
	<!-- overlayScrollbars -->
	<script
		src="<c:url value="/assets/user/vendor/overlayScrollbars/js/jquery.overlayScrollbars.min.js" />"></script>
		
	<!-- AdminLTE App -->
	<script src="<c:url value="/assets/user/dist/js/adminlte.js" />"></script>
	
	<!-- AdminLTE for demo purposes -->
	<script src="<c:url value="/assets/user/dist/js/demo.js" />"></script>
	
	<!-- JS viết tay -->
	<script src="<c:url value="/assets/user/js/main.js" />"></script>
</body>
</html>
