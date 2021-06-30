<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- ===== Menu ===== -->
<style>
.btn-circle {
	width: 30px;
	height: 30px;
	text-align: center;
	padding: 6px 0;
	font-size: 12px;
	line-height: 1.428571429;
	border-radius: 15px;
}

span.btn-circle a {
	color: white;
}

.btn-circle.btn-lg {
	width: 40px;
	height: 40px;
	padding: 10px 16px;
	font-size: 18px;
	line-height: 1.33;
	border-radius: 25px;
}

.btn-circle.btn-xl {
	width: 50px;
	height: 50px;
	padding: 10px 16px;
	font-size: 24px;
	line-height: 1.33;
	border-radius: 35px;
}

a.nav-link d-flex {
	padding-left: 5px;
}

.fa-hand-point-right {
	font-size: 1rem;
	margin-left: 6%;
}

a.nav-link p {
	padding-left: 5px;
	font-size: 15px;
}
</style>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="trang_chu" class="brand-link"> <img
		src="<c:url value="/assets/user/img/ANSV_logo.png" />" alt="ANSV Logo"
		class="brand-image"
		style="opacity: 0.8; width: 70px; height: 33px; margin-left: -5px;">
		<span class="brand-text font-weight-light">Company</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="<c:url value="/assets/user/dist/img/user2-160x160.jpg" />"
					class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block">Alexander Pierce</a>
			</div>
		</div>

		<!-- SidebarSearch Form -->
		<div class="form-inline">
			<div class="input-group" data-widget="sidebar-search">
				<input class="form-control form-control-sidebar" type="search"
					placeholder="Search" aria-label="Search">
				<div class="input-group-append">
					<button class="btn btn-sidebar">
						<i class="fas fa-search fa-fw"></i>
					</button>
				</div>
			</div>
			<div class="input-group">
<%-- <html lang="en" class="no-js">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/user/css/btn_choose_file/normalize.css" />" />
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/user/css/btn_choose_file/component.css" />" />

	<!-- remove this if you use Modernizr -->
	<script>
		(function(e,t,n){
			var r=e.querySelectorAll("html")[0];r.className=r.className.replace(/(^|\s)no-js(\s|$)/,"$1js$2")
		})(document,window,0);
	</script>
	<div class="container">
		<div class="content">
			<div class="box col-lg-8" style="float: left;">
				<input type="file" name="file-3[]" id="file-3" class="inputfile inputfile-3" data-multiple-caption="{count} files selected" multiple />
				<label for="file-3" style="margin-left: -28px; padding: 0; margin-top: 2px;">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17">
						<path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
					</svg>
					<span>Chọn tệp&hellip;</span>
				</label>
			</div>
			<div class="col-lg-4" style="float: left;">
				<button onclick="uploadFile()" class="btn btn-dark" style="height: 30px;"> Upload </button>
			</div>
		</div>
	</div><!-- /container -->
	<script src="<c:url value="/assets/user/js/btn_choose_file/custom-file-input.js" />"></script>
</html> --%>
			
<!-- Đầu: Upload file báo cáo -->
				<!-- HTML5 Input Form Elements -->
				<input id="ajaxfile" type="file"  class="btn btn-dark" />
				<button onclick="uploadFile()" class="btn btn-dark"> Upload </button>
				
				<!-- Ajax to Java File Upload Logic -->
				<script>
					async function uploadFile() {
						let formData = new FormData();
						formData.append("file", ajaxfile.files[0]);
						await fetch('fileuploadservlet', {
							method: "POST",
							body: formData
						});
						alert('The file upload with Ajax and Java was a success!');
					}
				</script>
<!-- Cuối: Upload file báo cáo -->
			</div>
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-header">Báo cáo</li>
				<!-- <li class="nav-item menu-open"><a href="#"
					class="nav-link d-flex active"> <i class="nav-icon fas fa-table"></i> -->
				<li class="nav-item">
					<a href="#" class="nav-link d-flex"> 
						<i class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo cáo tồng tại vướng mắc các dự án triển khai tuần 4 - tháng 4
							<i class="right fas fa-angle-left"></i> 
							<span class="badge badge-info">23</span>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="vnpt_tinh_thanh_pho"
							class="nav-link d-flex " data-toggle="tooltip" data-html="true"
							title="
						<p>Tổng số dự án: 2</p>
						<p>Số dự án chậm tiến độ: 0</p>
						<p>Số dự án bị hủy: 0</p>
						">
								<!-- <i class="far fa-hand-point-right nav-icon"></i> --> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Tỉnh,thành phố
									<!-- <i class="right fas fa-angle-left"></i> -->
									<span class="badge badge-pill badge-danger">0</span> <span
										class="badge badge-pill badge-warning">0</span> <span
										class="badge badge-pill badge-secondary">2</span> / <b>2</b>
								</p>
						</a> <!-- <ul class="nav nav-treeview">
								<li class="nav-item" >									 
									<span class="btn btn-danger btn-circle btn-xl ml-4"  ><a href="#">0</a></span>
									<span class="btn btn-danger btn-circle btn-lg ml-3" ><a href="#">0</a></span>
									<span class="btn btn-danger btn-circle ml-3"><a href="#">0</a></span>										
								</li>
								<li class="nav-item mt-2" ">									 
									<span class="btn btn-warning btn-circle btn-xl ml-4"  ><a href="#">0</a></span>
									<span class="btn btn-warning btn-circle btn-lg ml-3" ><a href="#">0</a></span>
									<span class="btn btn-warning btn-circle ml-3"><a href="#">0</a></span>										
								</li>
								<li class="nav-item mt-2" ">									 
									<span class="btn btn-success btn-circle btn-xl ml-4"  ><a href="#">0</a></span>
									<span class="btn btn-success btn-circle btn-lg ml-3" ><a href="#">0</a></span>
									<span class="btn btn-success btn-circle ml-3"><a href="#">0</a></span>										
								</li>
							</ul> --></li>
						<li class="nav-item"><a href="vnpt_net"
							class="nav-link d-flex" data-toggle="tooltip" data-html="true"
							title="
						<p>Tổng số dự án: 6</p>
						<p>Số dự án chậm tiến độ: 4</p>
						<p>Số dự án bị hủy: 0</p>
						">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Net &nbsp;<span class="badge badge-pill badge-danger">2</span>
									<span class="badge badge-pill badge-warning">0</span> <span
										class="badge badge-pill badge-secondary">4</span> / <b>6</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex"
							data-toggle="tooltip" data-html="true"
							title="
						<p>Tổng số dự án: 1</p>
						<p>Số dự án chậm tiến độ: 1</p>
						<p>Số dự án bị hủy: 0</p>
						">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT IT &nbsp;<span class="badge badge-pill badge-danger">0</span>
									<span class="badge badge-pill badge-warning">0</span> <span
										class="badge badge-pill badge-secondary">1</span> / <b>1</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="./index3.html"
							class="nav-link d-flex" data-toggle="tooltip" data-html="true"
							title="
						<p>Tổng số dự án: 9</p>
						<p>Số dự án chậm tiến độ: 8</p>
						<p>Số dự án bị hủy: 0</p>
						">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									MOBIFONE &nbsp;<span class="badge badge-pill badge-danger">2</span>
									<span class="badge badge-pill badge-warning">0</span> <span
										class="badge badge-pill badge-secondary">7</span> / <b>9</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="./index3.html"
							class="nav-link d-flex" data-toggle="tooltip" data-html="true"
							title="
						<p>Tổng số dự án: 5</p>
						<p>Số dự án chậm tiến độ: 0</p>
						<p>Số dự án bị hủy: 1</p>
						">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									Thị trường doanh nghiệp &nbsp; <span
										class="badge badge-pill badge-danger">0</span> <span
										class="badge badge-pill badge-warning">0</span> <span
										class="badge badge-pill badge-secondary">5</span> / <b>5</b>
								</p>
						</a></li>
					</ul></li>

				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo cáo tình hình thực hiện các dự án kinh doanh tuần
							22.11(AM-BDC) <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info">34</span>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="vnpt_tinh_thanh_pho_2"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT TỈNH/TP <span class="badge badge-pill badge-danger">0</span>
									/ <b>3</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/top-nav-sidebar.html" class="nav-link d-flex">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Net <span class="badge badge-pill badge-danger">4</span> /
									<b>10</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/boxed.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									MOBIFONE <span class="badge badge-pill badge-danger">5</span> /
									<b>10</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/fixed-sidebar.html" class="nav-link d-flex">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Media <span class="badge badge-pill badge-danger">3</span>
									/ <b>5</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/fixed-sidebar-custom.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT IT <span class="badge badge-pill badge-danger">1</span> /
									<b>2</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/fixed-topnav.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									CMC Telecom <span class="badge badge-pill badge-danger">2</span>
									/ <b>3</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/fixed-footer.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									Thales <span class="badge badge-pill badge-danger">0</span> / <b>1</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/collapsed-sidebar.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									TTX Việt Nam <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b>
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo các tình hình thực hiện các dự án kinh doanh tuần 21.17
							(A.Khanh + A.Tú + A. Đoàn Tuấn) <i
								class="right fas fa-angle-left"></i> <span
								class="badge badge-info">31</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="pages/charts/chartjs.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px; padding-left: 5%;">
									HỒ CHÍ MINH (A. Tú phụ trách) <span
										class="badge badge-pill badge-danger">1</span> / <b>4</b>
								</p>
						</a></li>
						<li class="nav-item" style="height: auto;"><a
							href="pages/charts/flot.html" class="nav-link d-flex d-flex"
							style="height: auto;"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i> <!-- <p>CÁC DỰ ÁN ANH KHANH,</p> <br>
								<p style="margin-left: 21%;">A ĐOÀN TUẤN PHỤ TRÁCH -</p> <br>
								<p style="margin-left: 21%;">
									VNPT IT <span class="badge badge-pill badge-danger">1</span> /
									<b>7</b>
								</p> --> <!-- <div style="width: 79%; float: right;">
									<p>
										CÁC DỰ ÁN ANH KHANH, <br>A ĐOÀN TUẤN PHỤ TRÁCH - VNPT IT <span
											class="badge badge-pill badge-danger">1</span> / <b>7</b>
									</p>
								</div><br><br><br> -->
								<p style="font-size: 13px; padding-left: 5%;">
									CÁC DỰ ÁN ANH KHANH, A ĐOÀN TUẤN PHỤ TRÁCH - VNPT IT <span
										class="badge badge-pill badge-danger">1</span> / <b>7</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/inline.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									VINAPHONE <span class="badge badge-pill badge-danger">1</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Hồ Chí Minh <span class="badge badge-pill badge-danger">0</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Bộ Công An <span class="badge badge-pill badge-danger">0</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Bộ KH&CN <span class="badge badge-pill badge-danger">0</span> /
									<b>2</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Bộ KH&CN <span class="badge badge-pill badge-danger">0</span> /
									<b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									BẢO HIỂM VIỆT NAM <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									ACB <span class="badge badge-pill badge-danger">0</span> / <b>1</b>
								</p>
						</a></li>
					</ul></li>
				<li class="nav-header">Người phụ trách</li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Lê Tuấn Cảnh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">2</span>
						</p>
				</a>
					<ul class="nav nav-treeview " style="font-size: 13px;">
						<li class="nav-item "><a href="pages/mailbox/mailbox.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									92.310 ONT240 (ĐTRR)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>9</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/mailbox/compose.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									560k ONT 020-H
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>2</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Hoàng Anh <i style="font-size: 1rem; margin-left: 6%;"
								class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="pages/examples/invoice.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									HĐ 01-NET2
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/profile.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									HĐ01 - Atenna với MLMN
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/e-commerce.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									HĐ02 - Atenna với MLMN
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/projects.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									HĐ05 - Atenna với MLMN (MSTT)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Thành Nam <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									HĐ 04-NET1
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Nguyễn Ngọc Minh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">3</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 1
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="bao_cao_sheet_1"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 2
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON 40 TRẠM (ĐTRR)
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Nguyễn Anh Tuấn <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 3
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Hoài Nam <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">2</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Dự án CSDLQG
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xử lý nước thải Đà Nẵng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Tuấn Anh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">7</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="detail_2"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									MSTT thiết bị ONT 040H
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									MSTT thiết bị STB AndroidTV
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT trang bị thiết bị OLT-GPON năm 2021 cho các VNPT
									Tỉnh,thành phố
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									OLT ứng cứu 2021 vùng 62 TTP
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang bị bổ sung thiết bị phục vụ dịch chuyển node mạng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua sắm ONT theo hợp đồng khung ANSV-CMC PO02-PO05
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Mua sắm ONT theo hợp đồng khung ANSV-CMC Các PO tới hết 2021
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Trần Tuấn Anh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Thử nghiệm thiết bị Battery ReGeneration của GoldenPlus
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Lê Trường Giang <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">6</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Backbone 2021
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Trang bị OLT 4 PON
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Hệ thống Firewall cho mạng ĐHSXKD của VNPT-Net
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT mở rộng hệ thống Digital Cloud năm 2021
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT mở rộng hệ thống CDN, MiddleWare VMP cung cấp dịch vụ MyTV
									và DigiLife
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mở rộng hệ thống truyền dẫn CVCS tới Tân Thuận
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Hoàng Bảo Trung <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">10</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Dự Án anten năm 2021 của VNPT NET
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									OCS
									<!-- <span class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua sắm trang bị anten twinbeam phục vụ triển khai bổ sung
									Sector cho các trạm 4G lưu lượng cao
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Thỏa thuận khung MSTT Anten
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua sắm 50 bộ anten highgain phục vụ mạng lưới Miền Trung
									<!--  <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang bị 4 bộ Load Balancer
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Thử nghiệm thiết bị Viba của hãng SLAE
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="">
									Trang bị thiết bị an toàn bảo mật
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IP to DVB -T2
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Nâng cao ATBM hạ tầng mạng SXKD tại IDC NTL
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Trần Xuân Hiếu <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">8</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Mở rộng hệ thông NPB
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang bị hệ thống SBC
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Hỗ trợ kỹ thuật hệ thống IN(cũ)
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Hệ thống bảo mật cho hệ thống báo hiệu quốc tế mạng MobiFone
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Hệ thống International SMPPGW phục vụ kinh doanh SMS Quốc
									tế(A2P, Transit )
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng hệ thống quản lý nhân sự HRM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Cung cấp lắp đặt thiết bị bảo mật
									<!--  <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Tăng cường năng lực kết nối hạ tầng mạng IDC và phục vụ khách
									hàng
									<!-- <span class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Tích hợp tính năng Chat trên Zalo với hệ thống IPCC
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Phan Quang Tùng <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Hệ thống tổng đài,điện thoại, switch cho dự án đường sắt trên
									cao tuyến Nhổn- Ga Hà nội
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Nguyễn Quốc Bình <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IOC VNPT Vĩnh Phúc
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Danh mục CNTT đã được duyệt của Bộ KHCN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									DA về toàn bộ lĩnh vực CNTT khách hàng bộ Khoa học và CN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung tâm bảo hành thông tin thông minh UBND tỉnh Vĩnh Phúc
									<!--  <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Trần Phong Ái Tú <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Lắp đặt hệ thống camera an ninh quan sát các tuyến cửa ngõ ra
									vào Quận 4 và Trung tâm Bồi dưỡng chính trị quận
									<!-- <span
										class="badge badge-pill badge-danger">1</span>/<b>1</b> -->

								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Cung cấp thiết bị đầu cuối IAD
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Dự án trang bị IOC và camera giám sát an ninh cho Q5 TPHCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Dự án trang bị IOC và camera giám sát an ninh cho Q7 TPHCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Đoàn Anh Tuấn <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">20</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Trung tâm Giám sát và chỉ đạo điều hành tập trung trên nền tảng
									dữ liệu dân cư
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Cơ sở dữ liệu Công chức Viên chức Bộ Nội vụ
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Lưu trữ tài liệu điện tử Phông lưu trữ nhà nước Việt Nam
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng trung tâm điều hành Bộ khoa học công nghệ
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng cổng dịch vụ công thành phố, hệ thống thông tin một
									cửa điện tử thành phố và hệ thống đánh giá sự hài lòng của
									người dân, doanh nghiệp
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng trung tâm điều hành thông minh và chuyển đổi kho lưu
									trữ cho VP đăng ký đất đai TP
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b>-->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Thuê dịch vụ công nghệ thông tin thực hiện Hải quan số
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung tâm Giám sát và chỉ đạo điều hành Bộ Thông tin truyền
									thông
									<!-- <span class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung tâm Giám sát và chỉ đạo điều hành Bộ Xây dựng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Thuê dịch vụ công nghệ thông tin hosting các hệ thống của Cổng
									thông tin điện tử Chính phủ
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Xây dựng nền tảng trao đổi định danh và xác thực điện tử IDEx
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Triển khai mở rộng các lĩnh vực tiếp nhận và xử lý thông tin
									của các lĩnh vực thông qua cổng thông tin 1022; và kết nối,
									tích hợp các cổng thông tin, các ứng dụng của sở ngành
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Triển khai các thủ tục đầu tư dự án “Xây dựng Trung tâm tiếp
									nhận và xử lý thông tin khẩn cấp của thành phố Hồ Chí Minh
									thông qua một đầu số viễn thông duy nhất giai đoạn
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng Trung tâm điều hành ĐTTM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng Trung tâm dữ liệu dùng chung, phục vụ cho việc kết
									nối, chia sẻ dữ liệu camera
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Nâng cấp trung tâm chỉ huy và lắp đặt hệ thống camera giám sát
									tại phòng Cảnh sát giao thông, Công an thành phố Hà Nội
									<!--  <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Nâng cấp trung tâm chỉ huy và lắp đặt hệ thống camera giám sát
									tại phòng Cảnh sát giao thông đường bộ - đường sát, Công an
									thành phố Hồ Chí Minh
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IDP Bộ Công An (chưa có tên chính xác)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Xây dựng trung tâm điều hành thông minh của Sở TTTT
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Quan Trắc môi trường Bình Dương
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Vũ Duy Tùng <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">3</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Dự án trang bị Wi-Fi Quận 8, TP HCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang bị Camera cho VNPT Thái Nguyên
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung tâm điều hành Bảo Hiểm XHVN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
<!-- End menu -->