<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    


<div class="content-wrapper">
	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<section class="col-lg-12">
					<h2 id="name_header_1">Hello Test 33333333333</h2>
					<div>
						<p>Ở mức độ ưu tiên <span id = "u1"></span> tình trạng <span id="t1"></span> có <span id="sl1"></span> dự án:</p>
					</div>
					<script type="text/javascript">
					function return_header(u,t,sl){
						document.getElementById("name_header_1").innerHTML = file_upload_accept_1.replaceAll(".xlsx","");
						document.getElementById("u1").innerHTML = u;
						var string_t = format_t(t);
						if(t==1){
							document.getElementById("t1").innerHTML = "đang hoàn thành hoặc sắp hoàn thành";
						}else if(t==2){
							document.getElementById("t1").innerHTML = "sắp chậm hơn so với tiến độ";
						}else{
							document.getElementById("t1").innerHTML = "chậm tiến độ";
						}
						
						document.getElementById("sl1").innerHTML = sl;
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
						    		 if(item["Priority"]==u){
						    			  var reg = new RegExp(string_t, 'gi');
						    			  if(format(item["Mức độ tình trạng"]).match(reg) != null){
					    				 		 console.log(item["STT"]); 
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
<script type="text/javascript">
		let params = (new URL(document.location)).searchParams;
		let u = params.get("u");
		let t = params.get("t");
		let sl = params.get("sl");
		
		return_header(u,t,sl);
		
		function format_t(t){
			if(t==1){
				return "hoàn thành" ;
			}else if(t==2){
				return "sắp ";
			}else{
				return "chậm";
			}
			return status_1
		}
</script>