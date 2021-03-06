<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.theme.default.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.carousel.min.css" />">
<script src="<c:url value="/assets/user/vendor/dist/owl.carousel.min.js" />"></script>
<script src="<c:url value="/assets/user/vendor/dist/jquery.mousewheel.min.js" />"></script>

<div class="content-wrapper">
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-12">
					<h4 id="name_header_2">Hello Test 33333333333</h4>
					<div>
						<p>Ở mức độ ưu tiên <span id = "u"></span> mức độ cảnh báo <span id="t"></span> có <span id="sl"></span> dự án:</p>
					</div>
					<div class="owl-carousel owl-theme" id="detail_slide_s2">

						<!-- ===== Phần chèn thêm HTML ===== -->

					</div>
					<script type="text/javascript">
					function return_header(u,t,sl){
						document.getElementById("name_header_2").innerHTML = header_sheet_2_fix_2;
						document.getElementById("u").innerHTML = u;
						if(t==1){
							document.getElementById("t").innerHTML = "thấp";
						}else if(t==2){
							document.getElementById("t").innerHTML = "trung bình";
						}else{
							document.getElementById("t").innerHTML = "cao";
						}
						
						
						document.getElementById("sl").innerHTML = sl;
						/* console.log("u = " + u +" t = " + t +" sl = "+ sl); */
						var oReq = new XMLHttpRequest();

						oReq.open("GET", url2, true);
						oReq.responseType = "arraybuffer";

						oReq.onload = function(e) {
							var arraybuffer = oReq.response;

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
								/* console.log(XL_row_object); */
						    	 XL_row_object.forEach(item=>{
						    		 if(item["Priority"]==u){
						    			  var reg = new RegExp(format_t(t), 'gi');
						    			  if(item["Mức độ cảnh báo"].match(reg) != null){
					    				 		 let row = '<div class="pl-5 tab-pane active" ><br>' +
					                                '<div class="row ">' +
					                                '<div class="text-center col-md-12">' +
					                                '<h4><a class="name" href="bao_cao_sheet_2?id_p2=' + item["STT"] + '" onclick="return project_link_2(' + item["STT"] + ')"' +
					                                '> ' + format(item["Dự án/Gói thầu"]) + '</a></h4>' +
					                                '</div>' +
					                                '</div>'

					                            +
					                            '<p><b>Người phụ trách:</b> ' + format(item["PIC"]) + '</p>' +
					                                '<p style="white-space: pre-wrap;"><b>Mô tả dự án:</b> ' + format(item["Mô tả dự án"]) + ' </p>' +
					                                '<p><b>Tổng mức đầu tư:</b> ' + format(item["Tổng mức đầu tư"]) + '</p>' +
					                                '<p><b>Hình thức đầu tư:</b> ' + format(item["Hình thức đầu tư"]) + '</p>' +
					                                '<p><b>Mức độ ưu tiên:</b> ' + format(item["Mức độ ưu tiên"]) + '</p>' +
					                                '<p><b>Mức độ khả thi:</b> ' + format(item["Mức độ khả thi"]) + ' </p>' +
					                                '<p style="white-space: pre-wrap;"><b>Tình trạng:</b> ' + format(item["Tình trạng & Kế hoạch chi tiết"]) + '</p>' +
					                                '<p style="white-space: pre-wrap;"><b>Phân tích SWOT:</b> ' + format(item["Phân tích SWOT"]) + ' </p>'+
					                                '<p style="white-space: pre-wrap;"><b>Kết quả thực hiện kế hoạch:</b> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
					                                '</div>';
					                          detail_slide_s2.innerHTML += row;	
						    			  } 
						    		 };
						    	 });
						  	});
							
						}
						oReq.send();
					};
					
					</script>
				</section>
			</div>
		</div>
	</section>
</div>

<style>
	.danger{
		color: #dc3545;
	}
	.warning{
		color: #ffc107;
	}
	a:hover{
		text-decoration: none;
	}

</style>


<script type="text/javascript">
		let params = (new URL(document.location)).searchParams;
		let u = params.get("u");
		let t = params.get("t");
		let sl = params.get("sl");
		
		return_header(u,t,sl);
		
		function format_t(t){
			if(t==1){
				return "low" ;
			}else if(t==2){
				return "medium";
			}else{
				return "high";
			}
		}
		
		$(document).ready(function(){
			var owl = $('.owl-carousel');
		    owl.owlCarousel({
		       items: 1,
		       loop: true,
		       nav: true,
		       margin: 10,
		       autoplay: true,
		       autoplayTimeout: 5000,
		       responsiveClass: true,
		       autoplayHoverPause: true
		   });
		    
		    if(t==3){
		    	$(".name").addClass("danger");
		    	$(".name").hover(function(){
		    		$(this).css({
		    			"text-decoration":"none",
						"color":"#dc3545"		    			
		    		});
		    	});
		    }else if(t==2){
		    	$(".name").addClass("warning");
		    	$(".name").hover(function(){
		    		$(this).css({
		    			"text-decoration":"none",
						"color":"#ffc107"		    			
		    		});
		    	});
		    }
		    /* owl.on('mousewheel', '.owl-stage', function (e) {
		        if (e.deltaY>0) {
		            owl.trigger('next.owl');
		        } else {
		            owl.trigger('prev.owl');
		        }
		        e.preventDefault();
		    }) */
		});
</script>