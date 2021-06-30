<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- ===== Menu ===== -->
<style>
	
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
		<div class="user-panel mt-2 pb-1 mb-3 d-flex">
			<%-- <div class="image">
				<img src="<c:url value="/assets/user/dist/img/user2-160x160.jpg" />"
					class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block">Alexander Pierce</a>
			</div> --%>
			<!-- <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				<li class="nav-item">
					<a href="#" class="nav-link d-flex">
						<p class="text-capitalize">Nguyễn Văn Nam</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item">
							<a href="vnpt_tinh_thanh_pho" class="nav-link d-flex" data-toggle="tooltip" data-html="true">
								<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Tỉnh,thành phố
									<span class="badge badge-pill badge-danger">0</span> 
									<span class="badge badge-pill badge-warning">0</span>
									<span class="badge badge-pill badge-secondary">2</span> / <b>2</b>
								</p>
							</a> 
						</li>
						<li class="nav-item">
							<a href="vnpt_net" class="nav-link d-flex" 
								data-toggle="tooltip" data-html="true">
								<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Net &nbsp;
									<span class="badge badge-pill badge-danger">2</span>
									<span class="badge badge-pill badge-warning">0</span>
									<span class="badge badge-pill badge-secondary">4</span> / <b>6</b>
								</p>
							</a>
						</li>
					</ul>
				</li>
			</ul> -->
			
			<ul class="nav nav-list nav-menu-list-style">
                <li>
                	<label class="tree-toggle nav-header">
                		<div class="image">
							<img src="<c:url value="/assets/user/dist/img/user2-160x160.jpg" />"
								class="img-circle elevation-2" alt="User Image">
						</div>
						<div class="info" style="overflow: visible;">
							<a href="javascript:void(0)" class="d-block">Alexander Pierce</a>
						</div>
                	</label>
                    <ul class="nav nav-list tree">
                        <li class="pl-5 ml-2">
                        	<a href="fileform">Upload File</a>
                        </li>
                    </ul>
                </li>
            </ul>
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
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" id="ul_global" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-header">Báo cáo</li>
				<!-- <li class="nav-item menu-open"><a href="#"
					class="nav-link d-flex active"> <i class="nav-icon fas fa-table"></i> -->
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo cáo tồn tại vướng mắc các dự án triển khai tuần 4 - tháng 4
							<i class="right fas fa-angle-left"></i> <span
								class="badge badge-info" id="num_sheet_1">
				
							</span>
						</p>
				</a>
					<ul class="nav nav-treeview" id="data_sheet_1">
						<script>
						 var data_sheet_1 = document.getElementById('data_sheet_1');
						 var num_sheet_1 = document.getElementById('num_sheet_1');
						 $.getJSON('<c:url value="/assets/user/upload/data-new.json"/>', function(json) {
							 	num_sheet_1.innerHTML = json.length
							 	
				                function groupArrayOfObjects(list, key) {
				                    return list.reduce(function(rv, x) {
				                        (rv[x[key]] = rv[x[key]] || []).push(x);
				                        return rv;
				                    }, {});
				                };
				                var groupedPeople1 = groupArrayOfObjects(json, "Khách hàng");//Nhóm dữ liệu theo khách hàng
				                /* console.log(groupedPeople1); */  //will be the Males 
				                var dem1 = Object.keys(groupedPeople1).length;
				                var item1 = Object.keys(groupedPeople1);
				                /* console.log(item); */
				                for (let i = 0; i < dem1; i++) {
				                    let row = 	'<li class="nav-item">' + 
				                    				'<a href="sheet_1?kh_s1_id='+item1[i]+'" class="nav-link d-flex"' + 
				                    					'id="sheet1-'+item1[i]+'" data-toggle="tooltip"  data-html="true"' + 
				                    					'onclick = "return menu_link('+item1[i]+') " title="<p>Tổng số dự án: 2</p>' + 
				                    					'<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' + 
				                    					'<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' + 
			                    						'<p style="font-size: 13px;">' + 
			                    							item1[i] +
			                    							' <span class="badge badge-pill badge-danger">0</span>' + 
				                    						' <span class="badge badge-pill badge-warning">0</span>' + 
				                    						' <span class="badge badge-pill badge-secondary">2</span> / ' + 
				                    						'<b>2</b>' + 
				                    					'</p>' + 
					                    			'</a>' + 
					                    		'</li>';
				                    data_sheet_1.innerHTML += row;
				                }
				            });
				            function menu_link(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link đến trang khác với tab mới
				        		window.location.href = "sheet_1?kh_s1_id="+id; //Link đến trang khác ở tab hiện tại
				        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
				        	};
						</script>
						
						
						
					</ul></li>

				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo cáo tình hình thực hiện các dự án kinh doanh tuần
							22.11(AM-BDC) <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info" id="num_sheet_2"></span>
						</p>
				</a>
					<ul class="nav nav-treeview" id="data_sheet_2">
						<script>
							var data_sheet_2 = document.getElementById("data_sheet_2");
							var num_sheet_2 = document.getElementById("num_sheet_2");
							$.getJSON('<c:url value="/assets/user/upload/data-test-2.json"/>',function(json){
								num_sheet_2.innerHTML = json.length;
								function groupArrayOfObjects(list, key) {
				                    return list.reduce(function(rv, x) {
				                        (rv[x[key]] = rv[x[key]] || []).push(x);
				                        return rv;
				                    }, {}); 
				                };
				                
				                var groupedPeople2 = groupArrayOfObjects(json, "Khách hàng");
				                var dem2 = Object.keys(groupedPeople2).length;
				                var item2 = Object.keys(groupedPeople2);
				               
				                for (let i = 0; i < dem2; i++) {
			                    let row = 	'<li class="nav-item">' + 
			                    				'<a href="sheet_2?kh_s2_id='+item2[i]+'" class="nav-link d-flex"' + 
			                    					'id="sheet2-'+item2[i]+'" data-toggle="tooltip"  data-html="true"' + 
			                    					'onclick = "return menu_link2('+item2[i]+') " title="<p>Tổng số dự án: 2</p>' + 
			                    					'<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' + 
			                    					'<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' + 
		                    						'<p style="font-size: 13px;">' + 
		                    							item2[i] +
		                    							' <span class="badge badge-pill badge-danger">0</span>' + 
			                    						' <span class="badge badge-pill badge-warning">0</span>' + 
			                    						' <span class="badge badge-pill badge-secondary">2</span> / ' + 
			                    						'<b>2</b>' + 
			                    					'</p>' + 
				                    			'</a>' + 
				                    		'</li>';
				                    data_sheet_2.innerHTML += row;
				                }
							});
							function menu_link2(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link đến trang khác với tab mới
				        		window.location.href = "sheet_2?kh_s2_id="+id; //Link đến trang khác ở tab hiện tại
				        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
				        	};
						</script>
					</ul>
				</li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							Báo các tình hình thực hiện các dự án kinh doanh tuần 21.17
							(A.Khanh + A.Tú + A. Đoàn Tuấn) <i
								class="right fas fa-angle-left"></i> <span
								class="badge badge-info" id="num_sheet_3"></span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;" id="data_sheet_3">
						<script>
							var data_sheet_3 = document.getElementById("data_sheet_3");
							var num_sheet_3 = document.getElementById("num_sheet_3");
							$.getJSON('<c:url value="/assets/user/upload/data-test-3.json"/>',function(json){
								
								num_sheet_3.innerHTML = json.length;
								function groupArrayOfObjects(list, key) {
				                    return list.reduce(function(rv, x) {
				                        (rv[x[key]] = rv[x[key]] || []).push(x);
				                        return rv;
				                    }, {}); 
				                };
				                
				                var groupedPeople3 = groupArrayOfObjects(json, "Khách hàng");
				                var dem3 = Object.keys(groupedPeople3).length;
				                var item3 = Object.keys(groupedPeople3);
				               
				                for (let i = 0; i < dem3; i++) {
			                    let row = 	'<li class="nav-item">' + 
			                    				'<a href="sheet_3?kh_s3_id='+item3[i]+'" class="nav-link d-flex"' + 
			                    					'id="sheet3-'+item3[i]+'" data-toggle="tooltip"  data-html="true"' + 
			                    					'onclick = "return menu_link3('+item3[i]+') " title="<p>Tổng số dự án: 2</p>' + 
			                    					'<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' + 
			                    					'<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' + 
		                    						'<p style="font-size: 13px;">' + 
		                    							item3[i] +
		                    							' <span class="badge badge-pill badge-danger">0</span>' + 
			                    						' <span class="badge badge-pill badge-warning">0</span>' + 
			                    						' <span class="badge badge-pill badge-secondary">2</span> / ' + 
			                    						'<b>2</b>' + 
			                    					'</p>' + 
				                    			'</a>' + 
				                    		'</li>';
				                    data_sheet_3.innerHTML += row;
				                }
							});
							function menu_link3(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link đến trang khác với tab mới
				        		window.location.href = "sheet_3?kh_s3_id="+id; //Link đến trang khác ở tab hiện tại
				        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
				        	};
						</script>
					</ul>
				</li>
				<li class="nav-header">Người phụ trách (báo cáo 1)</li>
				<ul id="ul_1" class="nav nav-pills nav-sidebar flex-column">
				
				</ul>
				<script>
				var data_pci_sheet_1 = document.getElementById('ul_1');
				
	            $.getJSON('<c:url value="/assets/user/upload/data-new.json"/>', function(json) {
	                function groupArrayOfObjects(list, key) {
	                    return list.reduce(function(rv, x) {
	                        (rv[x[key]] = rv[x[key]] || []).push(x);
	                        return rv;
	                    }, {});
	                }; //Lấy dữ liệu theo key tùy chọn
	                var groupedPIC1 = groupArrayOfObjects(json, "PIC");// Nhóm theo người phụ trách
	                var dem_1 = Object.keys(groupedPIC1).length;
	                var item_1 = Object.keys(groupedPIC1); //Lọc theo key của object
	                /* console.log(groupedPIC); */ //will be the Males
	                
	                var project_1 = Object.values(groupedPIC1); // Lọc theo value của object
	                
	                for (let i = 0; i < dem_1; i++) {// In dữ liệu theo khách hàng ra menu
	                    let row ='<li class="nav-item"><a href="javascript:void(0)" class="nav-link d-flex">'+
	                    		 	 '<i class="nav-icon fas fa-user"></i>'+
	                    		 	 '<p>' +item_1[i] + 
		                    		 	 '<i class="fas fa-angle-left right"></i>'+
		                    		 	 '<span class="badge badge-info right">'+project_1[i].length+'</span>'+
		                    		 '</p>'+
		                    		 '</a>'+
		                    		 '<ul class="nav nav-treeview " id="pic1-'+i+'" style="font-size: 13px;">'+
		                    		 '</ul>'+
		                    	 '</li>';
	                    data_pci_sheet_1.innerHTML += row; 
	                    var detail_pci1 = document.getElementById("pic1-" + i); // Lấy thẻ theo id
	                    for (let j = 0; j < project_1[i].length; j++) {//Mảng đa triều
	                    	
	                        let row2 = '<li class="nav-item ">'+
	                        				'<a href="bao_cao_sheet_1?id_p1='+project_1[i][j]["STT"]+'"'+ 
	                        					'target="_blank" onclick = "return project_link_menu_1('+project_1[i][j]["STT"]+') "'+//Lấy phần tử thứ i truongef dữ liệu thứ j
	                        					'class="nav-link d-flex" id="project1-'+project_1[i][j]["STT"]+'">' +
	                        				'<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
	                        				'<p>'+
	                        					project_1[i][j]["Dự án/Gói thầu"]+
					                        '</p>'+
					                        '</a>' +
					                     '</li>';
	                        detail_pci1.innerHTML += row2;
	                    }

	                }
	            });
	            function project_link_menu_1(id) {
	        		window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
	        		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	}
				</script>
				<li class="nav-header">Người phụ trách(báo cáo 2)</li>
				<ul id="ul_2" class="nav nav-pills nav-sidebar flex-column">
				
				</ul>
				<script >
				var data_pci_sheet_2 = document.getElementById('ul_2');
				
	            $.getJSON('<c:url value="/assets/user/upload/data-test-2.json"/>', function(json) {
	                function groupArrayOfObjects(list, key) {
	                    return list.reduce(function(rv, x) {
	                        (rv[x[key]] = rv[x[key]] || []).push(x);
	                        return rv;
	                    }, {});
	                }; //Lấy dữ liệu theo key tùy chọn
	                var groupedPIC2 = groupArrayOfObjects(json, "Phụ trách");// Nhóm theo người phụ trách
	                
	                var dem_2 = Object.keys(groupedPIC2).length;
	                var item_2 = Object.keys(groupedPIC2); //Lọc theo key của object
	                /* console.log(groupedPIC); */ //will be the Males
	                
	                var project_2 = Object.values(groupedPIC2); // Lọc theo value của object
	                
	                for (let i = 0; i < dem_2; i++) {// In dữ liệu theo khách hàng ra menu
	                    let row ='<li class="nav-item"><a href="javascript:void(0)" class="nav-link d-flex">'+
	                    		 	 '<i class="nav-icon far fa-user"></i>'+
	                    		 	 '<p>' +item_2[i] + 
		                    		 	 '<i class="fas fa-angle-left right"></i>'+
		                    		 	 '<span class="badge badge-info right">'+project_2[i].length+'</span>'+
		                    		 '</p>'+
		                    		 '</a>'+
		                    		 '<ul class="nav nav-treeview " id="pic2-'+i+'" style="font-size: 13px;">'+
		                    		 '</ul>'+
		                    	 '</li>';
	                    data_pci_sheet_2.innerHTML += row; 
	                    var detail_pci2 = document.getElementById("pic2-" + i); // Lấy thẻ theo id
	                    for (let j = 0; j < project_2[i].length; j++) {//Mảng đa triều
	                    	
	                        let row2 = '<li class="nav-item ">'+
	                        				'<a href="bao_cao_sheet_2?id_p2='+project_2[i][j]["STT"]+'"'+ 
	                        					'target="_blank" onclick = "return project_link_menu_2('+project_2[i][j]["STT"]+') "'+//Lấy phần tử thứ i truongef dữ liệu thứ j
	                        					'class="nav-link d-flex" id="project2-'+project_2[i][j]["STT"]+'">' +
	                        				'<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
	                        				'<p>'+
	                        					project_2[i][j]["Dự án/Gói thầu"]+
					                        '</p>'+
					                        '</a>' +
					                     '</li>';
	                        detail_pci2.innerHTML += row2;//In dữ liệu ra html
	                    }

	                }
	            });
	            function project_link_menu_2(id) {
	        		window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
	        		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	}
				</script>
				
				
				<li class="nav-header">Người phụ trách(báo cáo 3)</li>
				<ul id="ul_3" class="nav nav-pills nav-sidebar flex-column">
					
				</ul>
				<script >
				var data_pci_sheet_3 = document.getElementById('ul_3');
				
	            $.getJSON('<c:url value="/assets/user/upload/data-test-3.json"/>', function(json) {
	                function groupArrayOfObjects(list, key) {
	                    return list.reduce(function(rv, x) {
	                        (rv[x[key]] = rv[x[key]] || []).push(x);
	                        return rv;
	                    }, {});
	                }; //Lấy dữ liệu theo key tùy chọn
	                var groupedPIC3 = groupArrayOfObjects(json, "Phụ trách");// Nhóm theo người phụ trách
	                
	                var dem_3 = Object.keys(groupedPIC3).length;
	                var item_3 = Object.keys(groupedPIC3); //Lọc theo key của object
	                /* console.log(groupedPIC); */ //will be the Males
	                
	                var project_3 = Object.values(groupedPIC3); // Lọc theo value của object
	                
	                for (let i = 0; i < dem_3; i++) {// In dữ liệu theo khách hàng ra menu
	                    let row ='<li class="nav-item"><a href="javascript:void(0)" class="nav-link d-flex">'+
	                    		 	 '<i class="nav-icon fas fa-user"></i>'+
	                    		 	 '<p>' +item_3[i] + 
		                    		 	 '<i class="fas fa-angle-left right"></i>'+
		                    		 	 '<span class="badge badge-info right">'+project_3[i].length+'</span>'+
		                    		 '</p>'+
		                    		 '</a>'+
		                    		 '<ul class="nav nav-treeview " id="pic3-'+i+'" style="font-size: 13px;">'+
		                    		 '</ul>'+
		                    	 '</li>';
	                    data_pci_sheet_3.innerHTML += row; 
	                    var detail_pci3 = document.getElementById("pic3-" + i); // Lấy thẻ theo id
	                    for (let j = 0; j < project_3[i].length; j++) {//Mảng đa triều
	                    	
	                        let row2 = '<li class="nav-item ">'+
	                        				'<a href="bao_cao_sheet_3?id_p3='+project_3[i][j]["STT"]+'"'+ 
	                        					'target="_blank" onclick = "return project_link_menu_3('+project_3[i][j]["STT"]+') "'+//Lấy phần tử thứ i truongef dữ liệu thứ j
	                        					'class="nav-link d-flex" id="project3-'+project_3[i][j]["STT"]+'">' +
	                        				'<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
	                        				'<p>'+
	                        					project_3[i][j]["Dự án/Gói thầu"]+
					                        '</p>'+
					                        '</a>' +
					                     '</li>';
	                        detail_pci3.innerHTML += row2;//In dữ liệu ra html
	                    }

	                }
	            });
	            function project_link_menu_3(id) {
	        		window.open("bao_cao_sheet_3?id_p3="+id); //Link đến trang khác với tab mới
	        		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	}
				</script>

			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
<!-- End menu -->

<script>
    $(".tree-toggle").click(function () {
        $(this).parent().children("ul.tree").toggle(200);
    });
    $(function () {
        $(".tree-toggle").parent().children("ul.tree").toggle(200);
    });
</script>