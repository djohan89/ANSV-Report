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
			<ul class="nav nav-list nav-menu-list-style">
                <li>
                	<label class="tree-toggle nav-header">
                		<div class="image">
							<img src="<c:url value="/assets/user/img/tong-giam-doc-new.jpg" />"
								class="img-circle elevation-2" alt="User Image">
						</div>
						<div class="info" style="overflow: visible;">
							<a href="javascript:void(0)" class="d-block" onclick="change_icon()">
								Nguyễn Văn Nam
								<i class="right fas fa-angle-left" id="arrow_icon" style="margin-left: 13px;"></i>
							</a>
						</div>
                	</label>
                    <ul class="nav nav-list tree">
                        <li class="pl-5 ml-2" id="btn_upload">
                        	<a href="fileform">
                        		<button class="noselect mt-2">
								    <span class='text'>Upload File</span>
								    <span class="icon">
								        <svg xmlns="http://www.w3.org/2000/svg" width="30" viewBox="0 0 20 17">
								        	<path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 
								        		2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
								        </svg>
								    </span>
								</button>
                        	</a>
							
							<style>
								#btn_upload button {
							        width: 232px;
							        height: 40px;
							        cursor: pointer;
							        display: flex;
							        align-items: center;
							        background: red;
							        border: none;
							        border-radius: 5px;
							        box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.15);
							        background: #e62222;
							        
							        margin-left: -55px;
							    }
							
							    #btn_upload button,
							    #btn_upload button span {
							        transition: 200ms;
							    }
							
							    #btn_upload button .text {
							        transform: translateX(35px);
							        color: white;
							        font-weight: bold;
							    }
							
							    #btn_upload button .icon {
							        position: absolute;
							        border-left: 1px solid #c41b1b;
							        transform: translateX(110px);
							        height: 40px;
							        width: 50px;
							        display: flex;
							        align-items: center;
							        justify-content: center;
							        
							        margin-left: 65px;
							    }
							
							    #btn_upload button svg {
							        width: 30px;
							        fill: #eee;
							    }
							
							    #btn_upload button:hover {
							        background: #ff3636;
							    }
							
							    #btn_upload button:hover .text {
							        color: transparent;
							    }
							
							    #btn_upload button:hover .icon {
							        width: 150px;
							        border-left: none;
							        transform: translateX(0);
							        margin-left: 35px;
							    }
							
							    #btn_upload button:focus {
							        outline: none;
							    }
							</style>
                        </li>
                    </ul>
                </li>
            </ul>
		</div>
		
		<script>
			function change_icon() {
				var element = document.getElementById("arrow_icon");
				var check_class = element.classList.contains('fa-angle-left');
				if (check_class == true) {
					element.classList.remove("fa-angle-left");
					element.classList.add("fa-angle-down");
				} else {
					element.classList.remove("fa-angle-down");
					element.classList.add("fa-angle-left");
				}
			}
		</script>

		<!-- SidebarSearch Form -->
		<!-- <div class="form-inline">
			<div class="input-group" data-widget="sidebar-search">
				<input class="form-control form-control-sidebar" type="search"
					placeholder="Search" aria-label="Search">
				<div class="input-group-append">
					<button class="btn btn-sidebar">
						<i class="fas fa-search fa-fw"></i>
					</button>
				</div>
			</div>
			
		</div> -->

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" id="ul_global" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-header">Báo cáo</li>
				<!-- <li class="nav-item menu-open"><a href="#"
					class="nav-link d-flex active"> <i class="nav-icon fas fa-table"></i> -->
				<li class="nav-item">
					<a href="#" class="nav-link d-flex"> 
					<i class="nav-icon fas fa-table pt-2"></i>
						<p class="text-capitalize" id="name_menu_sheet_1">
							<script>
							let name_menu_1 = header_sheet_1_fix_2+
											'<i class="right fas fa-angle-left" style="right:10px;"></i>'+
											'<span class="badge badge-info ml-2" id="num_sheet_1"></span>';
							document.getElementById("name_menu_sheet_1").innerHTML += name_menu_1;
							</script>							
						</p>
					</a>
					<ul class="nav nav-treeview" id="data_sheet_1">
						<script>
							var data_sheet_1 = document.getElementById('data_sheet_1');
							var num_sheet_1 = document.getElementById('num_sheet_1');
							/* var url1 = '<c:url value="/assets/user/upload/Cainayhayne.xlsx" />'; */
					    	var oReq1 = new XMLHttpRequest();

				    		oReq1.open("GET", url1, true);
				    		oReq1.responseType = "arraybuffer";
				    		oReq1.onload = function(e) {
				    			var arraybuffer = oReq1.response;

				       		  	/* convert data to binary string */
				       		  	var data = new Uint8Array(arraybuffer);
				       		  	var arr = new Array();
				       		  	for(let i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
				       		  	var bstr = arr.join("");

				       		  	/* Call XLSX */
				       		  	var workbook = XLSX.read(bstr, {type:"binary"});
				       		  	/* DO SOMETHING WITH workbook HERE */
				       		  	workbook.SheetNames.forEach(function(sheetName) {
				       		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
				       		  		num_sheet_1.innerHTML = XL_row_object.length;
				       		  		function groupArrayOfObjects(list, key) {
				       		        return list.reduce(function(rv, x) {
				       		            (rv[x[key]] = rv[x[key]] || []).push(x);
				       		            return rv;
				       		        	}, {});
				       		    	};
					       		    var groupedPeople1 = groupArrayOfObjects(XL_row_object, "Khách hàng");
					       		  	var dem1 = Object.keys(groupedPeople1).length;
					       	    	var item1 = Object.keys(groupedPeople1);
				       	    /* console.log(item); */
						       	    for (let i = 0; i < dem1; i++) {
						       	        let row = '<li class="nav-item">' +
									       	            '<a href="sheet_1?kh_s1_id=' + item1[i] + '" class="nav-link d-flex"' +
									       	            'id="sheet1-' + item1[i] + '" data-toggle="tooltip"  data-html="true"' +
									       	            'onclick = "return menu_link(' + item1[i] + ') " title="<p>Tổng số dự án: 2</p>' +
										       	            '<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' +
										       	            '<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' +
										       	            '<p style="font-size: 13px;">' +
											       	            item1[i] +
											       	            	/* ' <span class="badge badge-pill badge-danger">0</span>' +
											       	            	' <span class="badge badge-pill badge-warning">0</span>' +
											       	            	' <span class="badge badge-pill badge-secondary">2</span> / ' +
											       	            '<b>2</b>' + */
										       	            '</p>' +
									       	            '</a>' +
						       	            '</li>';
						       	        data_sheet_1.innerHTML += row;
						       	    }
				       		    
				       		  	});

				    		}
				    		oReq1.send();
				    		function menu_link(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link đến trang khác với tab mới
				        		window.location.href = "sheet_1?kh_s1_id="+id; //Link đến trang khác ở tab hiện tại
				        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
				        	};
						</script>
					</ul>
				</li>
					
				<li class="nav-item">
					<a href="#" class="nav-link d-flex"> 
						<i class="nav-icon fas fa-table pt-2"></i>
						<p class="text-capitalize" id="name_menu_sheet_2">
							<script>
							let name_menu_2 = header_sheet_2_fix_2+
											'<i class="right fas fa-angle-left" style="right:10px;"></i>'+
											'<span class="badge badge-info ml-2" id="num_sheet_2"></span>';
							document.getElementById("name_menu_sheet_2").innerHTML += name_menu_2;
							</script> 
							
						</p>
					</a>
					<ul class="nav nav-treeview" id="data_sheet_2">
						<script>
							var data_sheet_2 = document.getElementById("data_sheet_2");
							var num_sheet_2 = document.getElementById("num_sheet_2");
							/* var url2 = '<c:url value="/assets/user/upload/Sheet2.xlsx" />'; */
				    		var oReq2 = new XMLHttpRequest();

				    		oReq2.open("GET", url2, true);
				    		oReq2.responseType = "arraybuffer";

				    		oReq2.onload = function(e) {
				    			var arraybuffer = oReq2.response;	

					   		  	/* convert data to binary string */
					   		  	var data= new Uint8Array(arraybuffer);
					   		  	var arr = new Array();
					   		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
					   		  	var bstr = arr.join("");
					
					   		  	/* Call XLSX */
					   		  	var workbook = XLSX.read(bstr, {type:"binary"});
				   		  	/* DO SOMETHING WITH workbook HERE */

					   		  	workbook.SheetNames.forEach(function(sheetName) {
					   		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
					   		  		num_sheet_2.innerHTML = XL_row_object.length;
					   		  		function groupArrayOfObjects(list, key) {
							   		    return list.reduce(function(rv, x) {
							   		        (rv[x[key]] = rv[x[key]] || []).push(x);
							   		        return rv;
							   		    }, {});
					   		 		};
						   		 	var groupedPeople2 = groupArrayOfObjects(XL_row_object, "Khách hàng");
							   		var dem2 = Object.keys(groupedPeople2).length;
							   		var item2 = Object.keys(groupedPeople2);
	
							   		for (let i = 0; i < dem2; i++) {
							   		     let row = '<li class="nav-item">' +
										   		         '<a href="sheet_2?kh_s2_id=' + item2[i] + '" class="nav-link d-flex"' +
										   		         'id="sheet2-' + item2[i] + '" data-toggle="tooltip"  data-html="true"' +
										   		         'onclick = "return menu_link2(' + item2[i] + ') " title="<p>Tổng số dự án: 2</p>' +
											   		         '<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' +
											   		         '<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' +
											   		         '<p style="font-size: 13px;">' +
												   		         item2[i] +
												   		         /* ' <span class="badge badge-pill badge-danger">0</span>' +
												   		         ' <span class="badge badge-pill badge-warning">0</span>' +
												   		         ' <span class="badge badge-pill badge-secondary">2</span> / ' +
												   		         '<b>2</b>' + */
											   		         '</p>' +
										   		         '</a>' +
							   		         		'</li>';
							   			data_sheet_2.innerHTML += row;
							   		}
						   		  		
						   		});
					    	}
				    		oReq2.send();
							function menu_link2(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link đến trang khác với tab mới
				        		window.location.href = "sheet_2?kh_s2_id="+id; //Link đến trang khác ở tab hiện tại
				        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
				        	};
						</script>
					</ul>
				</li>
				<li class="nav-item">
					<a href="#" class="nav-link d-flex"> 
						<i class="nav-icon fas fa-table pt-2"></i>
						<p class="text-capitalize" id="name_menu_sheet_3">
							<script>
							let name_menu_3 = header_sheet_3_fix_2+
											'<i class="right fas fa-angle-left" style="right:10px;"></i>'+
											'<span class="badge badge-info ml-2" id="num_sheet_3"></span>';
							document.getElementById("name_menu_sheet_3").innerHTML += name_menu_3;
							</script> 
							
						</p>
					</a>
					<ul class="nav nav-treeview" style="font-size: 13px;" id="data_sheet_3">
						<script>
							var data_sheet_3 = document.getElementById("data_sheet_3");
							var num_sheet_3 = document.getElementById("num_sheet_3");
							/* var url3 = '<c:url value="/assets/user/upload/Sheet3.xlsx" />'; */
				    		var oReq3 = new XMLHttpRequest();

				    		oReq3.open("GET", url3, true);
				    		oReq3.responseType = "arraybuffer";

				    		oReq3.onload = function(e) {
				    			var arraybuffer = oReq3.response;	

					   		  	/* convert data to binary string */
					   		  	var data = new Uint8Array(arraybuffer);
					   		  	var arr = new Array();
					   		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
					   		  	var bstr = arr.join("");
					
					   		  	/* Call XLSX */
					   		  	var workbook = XLSX.read(bstr, {type:"binary"});
				   		  	/* DO SOMETHING WITH workbook HERE */

					   		  	workbook.SheetNames.forEach(function(sheetName) {
					   		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
					   		  		num_sheet_3.innerHTML = XL_row_object.length;

							   		function groupArrayOfObjects(list, key) {
							   		     return list.reduce(function(rv, x) {
							   		         (rv[x[key]] = rv[x[key]] || []).push(x);
							   		         return rv;
							   		     }, {});
							   		};
							   		var groupedPeople3 = groupArrayOfObjects(XL_row_object, "Khách hàng");
							   		var dem3 = Object.keys(groupedPeople3).length;
							   		var item3 = Object.keys(groupedPeople3);

							   		for (let i = 0; i < dem3; i++) {
							   			if(item3[i].match(/&/i) != null){
							   		    	item3[i] = item3[i].replace('&','và');
							   		    }
							   		    let row ='<li class="nav-item">' +
									   		        '<a href="sheet_3?kh_s3_id=' + item3[i] + '" class="nav-link d-flex"' +
									   		        'id="sheet3-' + item3[i] + '" data-toggle="tooltip"  data-html="true"' +
									   		        'onclick = "return menu_link3(' + item3[i] + ') " title="<p>Tổng số dự án: 2</p>' +
									   		        	'<p>Số dự án chậm tiến độ: 0</p><p>Số dự án bị hủy: 0</p>">' +
									   		        	'<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' +
									   		        	'<p style="font-size: 13px;">' +
									   		       			 item3[i] +
									   		       /*  ' <span class="badge badge-pill badge-danger">0</span>' +
									   		        ' <span class="badge badge-pill badge-warning">0</span>' +
									   		        ' <span class="badge badge-pill badge-secondary">2</span> / ' +
									   		        '<b></b>' + */
									   		        	'</p>' +
									   		        '</a>' +
							   		       		 '</li>';
							   		    data_sheet_3.innerHTML += row;
							   		    
							   		}
					   		  	});
				    		}
				    		oReq3.send();
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
	    		var oReqp1 = new XMLHttpRequest();
	    		oReqp1.open("GET", url1, true);
	    		oReqp1.responseType = "arraybuffer";

	    		oReqp1.onload = function(e) {
	    			var arraybuffer = oReqp1.response;	
		   		  	/* convert data to binary string */
		   		  	var data = new Uint8Array(arraybuffer);
		   		  	var arr = new Array();
		   		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		   		  	var bstr = arr.join("");
		
		   		  	/* Call XLSX */
		   		  	var workbook = XLSX.read(bstr, {type:"binary"});
	   		  	/* DO SOMETHING WITH workbook HERE */

		   		  	workbook.SheetNames.forEach(function(sheetName) {
			   		  	var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
				   		function groupArrayOfObjects(list, key) {
				   		    return list.reduce(function(rv, x) {
				   		        (rv[x[key]] = rv[x[key]] || []).push(x);
				   		        return rv;
				   		    }, {});
				   		}; //Lấy dữ liệu theo key tùy chọn
			   		 	var groupedPIC1 = groupArrayOfObjects(XL_row_object, "PIC"); // Nhóm theo người phụ trách
			   		 	var dem_1 = Object.keys(groupedPIC1).length;
			   	   		var item_1 = Object.keys(groupedPIC1); //Lọc theo key của object
			   	   		var project_1 = Object.values(groupedPIC1); // Lọc theo value của object
				   	   	for (let i = 0; i < dem_1; i++) { // In dữ liệu theo khách hàng ra menu
				   	        let row = '<li class="nav-item">'+
				   	   						'<a href="javascript:void(0)" class="nav-link d-flex">' +
								   	            '<i class="nav-icon fas fa-user"></i>' +
								   	            '<p>' + item_1[i] +
								   	            	'<i class="fas fa-angle-left right"></i>' +
								   	            	'<span class="badge badge-info right">' + project_1[i].length + '</span>' +
								   	            '</p>' +
							   	            '</a>' +
							   	            '<ul class="nav nav-treeview " id="pic1-' + i + '" style="font-size: 13px;">' +
							   	            '</ul>' +
				   	            	 '</li>';
				   	        data_pci_sheet_1.innerHTML += row;
				   	        var detail_pci1 = document.getElementById("pic1-" + i); // Lấy thẻ theo id
				   	        for (let j = 0; j < project_1[i].length; j++) { //Mảng đa triều
	
				   	            let row2 = '<li class="nav-item ">' +
							   	                '<a href="#"' +
							   	                ' onclick = "return project_link_menu_1(' + project_1[i][j]["TT"] + ') "' + //Lấy phần tử thứ i truongef dữ liệu thứ j
							   	                'class="nav-link d-flex" id="project1-' + project_1[i][j]["TT"] + '">' +
								   	                '<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
								   	                '<p>' + 
								   	                	project_1[i][j]["Dự án/Gói thầu"] +
								   	                '</p>' +
							   	                '</a>' +
				   	                	   '</li>';
				   	            detail_pci1.innerHTML += row2;
				   	        }
	
				   	    }
		   		  	});
	    		}
	    		oReqp1.send();
	            function project_link_menu_1(id) {
	        		//window.open("bao_cao_sheet_1?id_p1="+id); //Link đến trang khác với tab mới
	        		window.location.href = "bao_cao_sheet_1?id_p1="+id; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	}
				</script>
				<li class="nav-header">Người phụ trách(báo cáo 2)</li>
				<ul id="ul_2" class="nav nav-pills nav-sidebar flex-column">
				
				</ul>
				<script >
				var data_pci_sheet_2 = document.getElementById('ul_2');
				var data_pci_sheet_1 = document.getElementById('ul_1');
				
	    		var oReqp2 = new XMLHttpRequest();

	    		oReqp2.open("GET", url2, true);
	    		oReqp2.responseType = "arraybuffer";

	    		oReqp2.onload = function(e) {
	    			var arraybuffer = oReqp2.response;	
		   		  	/* convert data to binary string */
		   		  	var data = new Uint8Array(arraybuffer);
		   		  	var arr = new Array();
		   		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		   		  	var bstr = arr.join("");
		
		   		  	/* Call XLSX */
		   		  	var workbook = XLSX.read(bstr, {type:"binary"});
	   		  	/* DO SOMETHING WITH workbook HERE */

		   		  	workbook.SheetNames.forEach(function(sheetName) {
		   		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
			   		  	function groupArrayOfObjects(list, key) {
			   		        return list.reduce(function(rv, x) {
			   		            (rv[x[key]] = rv[x[key]] || []).push(x);
			   		            return rv;
			   		        }, {});
			   		    }; //Lấy dữ liệu theo key tùy chọn
			   		    var groupedPIC2 = groupArrayOfObjects(XL_row_object, "Phụ trách"); // Nhóm theo người phụ trách
	
			   		    var dem_2 = Object.keys(groupedPIC2).length;
			   		    var item_2 = Object.keys(groupedPIC2); //Lọc theo key của object
			   		    /* console.log(groupedPIC); */ //will be the Males
	
			   		    var project_2 = Object.values(groupedPIC2); // Lọc theo value của object
	
			   		    for (let i = 0; i < dem_2; i++) { // In dữ liệu theo khách hàng ra menu
			   		        let row = '<li class="nav-item">' +
						   		            '<a href="javascript:void(0)" class="nav-link d-flex">' +
							   		            '<i class="nav-icon far fa-user"></i>' +
							   		            '<p>' + item_2[i] +
								   		            '<i class="fas fa-angle-left right"></i>' +
								   		            '<span class="badge badge-info right">' + project_2[i].length + '</span>' +
							   		            '</p>' +
						   		            '</a>' +
						   		            '<ul class="nav nav-treeview " id="pic2-' + i + '" style="font-size: 13px;">' +
						   		            '</ul>' +
			   		                 '</li>';
			   		        data_pci_sheet_2.innerHTML += row;
			   		        var detail_pci2 = document.getElementById("pic2-" + i); // Lấy thẻ theo id
			   		        for (let j = 0; j < project_2[i].length; j++) { //Mảng đa triều
	
			   		            let row2 = '<li class="nav-item ">' +
						   		                '<a href="#"' +
						   		                'onclick = "return project_link_menu_2(' + project_2[i][j]["STT"] + ') "' + //Lấy phần tử thứ i truongef dữ liệu thứ j
						   		                'class="nav-link d-flex" id="project2-' + project_2[i][j]["STT"] + '">' +
							   		                '<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
							   		                '<p>' +
							   		                	project_2[i][j]["Dự án/Gói thầu"] +
							   		                '</p>' +
						   		                '</a>' +
			   		                	  '</li>';
			   		            detail_pci2.innerHTML += row2; //In dữ liệu ra html
			   		        }
	
			   		    }
		   		  	});
	    		};
	    		oReqp2.send();
	            function project_link_menu_2(id) {
	        		//window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
	        		window.location.href = "bao_cao_sheet_2?id_p2="+id; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	};
				</script>
				
				
				<li class="nav-header">Người phụ trách(báo cáo 3)</li>
				<ul id="ul_3" class="nav nav-pills nav-sidebar flex-column">
					
				</ul>
				<script >
				var data_pci_sheet_3 = document.getElementById('ul_3');
				var data_pci_sheet_2 = document.getElementById('ul_2');
				var data_pci_sheet_1 = document.getElementById('ul_1');
				
	    		var oReqp3 = new XMLHttpRequest();

	    		oReqp3.open("GET", url3, true);
	    		oReqp3.responseType = "arraybuffer";

	    		oReqp3.onload = function(e) {
	    			var arraybuffer = oReqp3.response;	
		   		  	/* convert data to binary string */
		   		  	var data = new Uint8Array(arraybuffer);
		   		  	var arr = new Array();
		   		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		   		  	var bstr = arr.join("");
		
		   		  	/* Call XLSX */
		   		  	var workbook = XLSX.read(bstr, {type:"binary"});
	   		  	/* DO SOMETHING WITH workbook HERE */

		   		  	workbook.SheetNames.forEach(function(sheetName) {
		   		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
			   		  	function groupArrayOfObjects(list, key) {
			   		        return list.reduce(function(rv, x) {
			   		            (rv[x[key]] = rv[x[key]] || []).push(x);
			   		            return rv;
			   		        }, {});
			   		    }; //Lấy dữ liệu theo key tùy chọn
			   		    var groupedPIC3 = groupArrayOfObjects(XL_row_object, "Phụ trách"); // Nhóm theo người phụ trách
	
			   		    var dem_3 = Object.keys(groupedPIC3).length;
			   		    var item_3 = Object.keys(groupedPIC3); //Lọc theo key của object
			   		    /* console.log(groupedPIC); */ //will be the Males
	
			   		    var project_3 = Object.values(groupedPIC3); // Lọc theo value của object
	
			   		    for (let i = 0; i < dem_3; i++) { // In dữ liệu theo khách hàng ra menu
			   		        let row = '<li class="nav-item">' +
			   		            '<a href="javascript:void(0)" class="nav-link d-flex">' +
			   		            '<i class="nav-icon fas fa-user"></i>' +
			   		            '<p>' + item_3[i] +
			   		            '<i class="fas fa-angle-left right"></i>' +
			   		            '<span class="badge badge-info right">' + project_3[i].length + '</span>' +
			   		            '</p>' +
			   		            '</a>' +
			   		            '<ul class="nav nav-treeview " id="pic3-' + i + '" style="font-size: 13px;">' +
			   		            '</ul>' +
			   		            '</li>';
			   		        data_pci_sheet_3.innerHTML += row;
			   		        var detail_pci3 = document.getElementById("pic3-" + i); // Lấy thẻ theo id
			   		        for (let j = 0; j < project_3[i].length; j++) { //Mảng đa triều
	
			   		            let row2 = '<li class="nav-item ">' +
			   		                '<a href="#"' +
			   		                ' onclick = "return project_link_menu_3(' + project_3[i][j]["STT"] + ') "' + //Lấy phần tử thứ i truongef dữ liệu thứ j
			   		                'class="nav-link d-flex" id="project3-' + project_3[i][j]["STT"] + '">' +
			   		                '<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
			   		                '<p>' +
			   		                project_3[i][j]["Dự án/Gói thầu"] +
			   		                '</p>' +
			   		                '</a>' +
			   		                '</li>';
			   		            detail_pci3.innerHTML += row2; //In dữ liệu ra html
			   		        }
	
			   		    }
		   		  	});
	    		};
	    		oReqp3.send();
	            function project_link_menu_3(id) {
	        		//window.open("bao_cao_sheet_3?id_p3="+id); //Link đến trang khác với tab mới
	        		window.location.href = "bao_cao_sheet_3?id_p3="+id; //Link đến trang khác ở tab hiện tại
	        	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
	        	};
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
    
    document.getElementById("name_sheet_header_1").innerHTML = header_sheet_1_fix_2;
</script>