<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    

<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.theme.default.min.css" />">
<link rel="stylesheet"
	href="<c:url value="/assets/user/vendor/dist/assets/owl.carousel.min.css" />">
<script src="<c:url value="/assets/user/vendor/dist/owl.carousel.min.js" />"></script>
<script src="<c:url value="/assets/user/vendor/dist/jquery.mousewheel.min.js" />"></script>

<div class="content-wrapper" >
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-12">
					<h4 id="name_header_1">Hello Test 33333333333</h4>
					<div>
						<p>Ở mức độ ưu tiên <span id = "u"></span> tình trạng <span id="t"></span> có <span id="sl"></span> dự án:</p>
					</div>
					<div class="owl-carousel owl-theme" id="detail_slide_s1">

						<!-- ===== Phần chèn thêm HTML ===== -->

					</div>
					
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
	

</style>

<script type="text/javascript">
function return_header(u,t,sl){
	document.getElementById("name_header_1").innerHTML = file_view_1;
	document.getElementById("u").innerHTML = u;
	var string_t = format_t(t);
	if(t==1){
		document.getElementById("t").innerHTML = "đang hoàn thành hoặc đúng tiến độ";
	}else if(t==2){
		document.getElementById("t").innerHTML = "sắp vượt quá thời gian dự kiến";
	}else{
		document.getElementById("t").innerHTML = "chậm tiến độ";
	}
	
	document.getElementById("sl").innerHTML = sl;
	/* console.log("u = " + u +" t = " + t +" sl = "+ sl); */
	var oReq = new XMLHttpRequest();

	oReq.open("GET", url1, true);
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
	    		  console.log(item["Khách hàng"] +"," +item["TT"]); 
	    		 if(item["Priority"]==u){
	    			  var reg = new RegExp(string_t, 'gi');
	    			  if(format(item["Mức độ tình trạng"]).match(reg) != null){
	    				  let row1 = '<div class="container tab-pane" ><br>' +
	                        '<div>' +
	                        '<h5 class="pb-3"><b>Tên dự án:</b> <a class="name" href="bao_cao_sheet_1?id_p1=' + item["STT"] + '" onclick="return project_link_sheet_1(' + item["STT"] + ')"' +
	                        '> ' + format(item["Dự án/Gói thầu"]) + '</a></h5>' +
	                        '<p><b>Người phụ trách:</b> ' + format(item["PIC"]) + '</p>' +
	                        '<p style="white-space: pre-wrap;"><b>Phạm vi cung cấp:</b> ' + format(item["Phạm vi cung cấp"]) + '</p>' +
	                        '<p><b>Tổng giá trị:</b> ' + format(item["Tổng giá trị"]) + '</p>' +
	                        '<p><b>Mức độ ưu tiên:</b> ' + format(item["Priority"]) + '</p>' +
	                        '<p><b>Tình trạng:</b> ' + format(item["Mức độ tình trạng"]) + '</p>'

	                    +
	                    '</div>' +
	                    '<div class="table-responsive">' +
	                    '<table class="table table-bordered table-hover">' +
	                    '<thead>' +
	                    '<tr>' +
	                    '<th colspan="3">Kế hoạch nghiệm thu</th>' +
	                    '<th colspan="2">Thanh toán tạm ứng</th>' +
	                    '<th colspan="2">Thanh toán DAC</th>' +
	                    '<th colspan="2">Thanh toán PAC</th>' +
	                    '<th colspan="2">Thanh toán FAC</th>' +
	                    '</tr>' +
	                    '<tr>' +
	                    '<th>DAC</th>' +
	                    '<th>PAC</th>' +
	                    '<th>FAC</th>' +
	                    '<th>Số tiền</th>' +
	                    '<th>Kế hoạch</th>' +
	                    '<th>Số tiền</th>' +
	                    '<th>Kế hoạch</th>' +
	                    '<th>Số tiền</th>' +
	                    '<th>Kế hoạch</th>' +
	                    '<th>Số tiền</th>' +
	                    '<th>Kế hoạch</th>' +
	                    '</tr>' +
	                    '</thead>' +
	                    '<tbody>' +
	                    '<td>' + format_date(item["Kế hoạch GH DAC"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch NT PAC"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch NT FAC"]) + '</td>' +
	                        '<!--Kế hoạch nghiệm thu -->' +
	                        '<td>' + format(item["Số tiền thanh toán tạm ứng"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch tạm ứng"]) + '</td>'

	                    <!-- Thanh toán tạm ứng -->
	                    +
	                    '<td>' + format(item["Số tiền DAC"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch TT DAC"]) + '</td>'

	                    <!-- Thanh toán DAC -->
	                    +
	                    '<td>' + format(item["Số tiền PAC"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch TT PAC"]) + '</td>'

	                    <!-- Thanh toán PAC -->
	                    +
	                    '<td>' + format(item["Số tiền FAC"]) + '</td>' +
	                        '<td>' + format_date(item["Kế hoạch TT FAC"]) + '</td>'

	                    <!-- Thanh toán FAC -->
	                    +
	                    '</tbody>' +
	                    '</table>' +
	                    '</div>' +
	                    '<div class="d-flex">' +
	                    '<div >' +
	                    '<p><b>Tình trạng & Kế hoạch chi tiết:</b> </p>' +
	                    '<p style="white-space: pre-wrap;"> ' + format(item["Tình trạng & Kế hoạch chi tiết"]) + '</p>' +
	                        '</div>' +
	                        '<div class="pl-5">' +
	                        '<p><b>Kết quả thực hiện kế hoạch:</b> </p>' +
	                        '<p style="white-space: pre-wrap;"> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
	                        '</div>' +
	                        '</div>' +
	                        '</div>';
		                detail_slide_s1.innerHTML += row1; 
	    			 } 
	    		 };
	    	 });
	  	});
		
	}
	oReq.send();
};

</script>
<script type="text/javascript">
		let params = (new URL(document.location)).searchParams;
		let u = params.get("u");
		let t = params.get("t");
		let sl = params.get("sl");
		
		return_header(u,t,sl);
		
		function format_t(t){
			if(t==1){
				return "ongoing" ;
			}else if(t==2){
				return "sắp";
			}else{
				return "chậm";
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
		    			
						"color":"#dc3545"		    			
		    		});
		    	});
		    }else if(t==2){
		    	$(".name").addClass("warning");
		    	$(".name").hover(function(){
		    		$(this).css({
		    			
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