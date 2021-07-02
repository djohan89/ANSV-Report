<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	.btn-circle.btn-sm {
  		width: 30px;
  		height: 30px;
  		padding: 6px 11px;
  		font-size: 12px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.btn-circle.btn-lg {
  		width: 50px;
  		height: 50px;
  		padding: 10px 16px;
  		font-size: 18px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.btn-circle.btn-xl {
  		width: 70px;
  		height: 70px;
  		padding: 10px 16px;
  		font-size: 24px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.box_radius {
		border-radius: 15px 15px;
		margin-left: -7%;
		margin-right: -7%;
	}
	
	.footer_radius {
		border-radius: 0 0 15px 15px;
		font-size: 85%;
		height: 67px;
	}
	
	.uu_tien {
		width: 50%;
		font-size: 12px;
		margin-bottom: 0;
		margin-top: 6px;
		font-weight: bold;
	}
	
	.font-size-thong-ke {
		font-size: 80%;
	}
	
	.badge {
		width: 20px;
	}
</style>

<!-- ======= Header ======= -->
<!-- <nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark"> -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark pb-0" 
	style="border-bottom: 0px solid #343a40; background-image: url('assets/user/img/5.jpg'); background-position: center;">
	<!-- Left navbar links -->
	<ul class="navbar-nav" style="margin-top: -6%;">
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#" role="button"> <i class="fas fa-bars" style="color: white; font-size: 25px;"></i>
		</a>
	</ul>
	
	<!-- Right navbar links -->
	<ul class="navbar-nav" style="margin-top: -6%;">
		<li class="nav-item"><a class="nav-link" data-widget="fullscreen"
			href="#" role="button"> <i class="fas fa-expand-arrows-alt" style="color: white; font-size: 25px;"></i>
		</a></li>
	</ul>
	
	<!-- === Thống kê === -->
	<div class="row" style="margin-left: 37%; width: 100%;">
		<div class="col-lg-12 col-6">
			<table class="table">
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">BÁO CÁO VƯỚNG MẮC TUẦN 4-THÁNG 4</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s1"></span>
						<span class="badge badge-warning right " id="u1_t2_s1"></span>
						<span class="badge badge-danger right" id="u1_t3_s1"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s1"></span>
						<span class="badge badge-warning right" id="u2_t2_s1"></span>
						<span class="badge badge-danger right" id="u2_t3_s1"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s1"></span>
						<span class="badge badge-warning right" id="u3_t2_s1"></span>
						<span class="badge badge-danger right" id="u3_t3_s1"></span>
					</td>
				</tr>
				
				
				
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">DỰ ÁN KINH DOANH TUẦN 21.17 (AM-BDC)</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s2"></span>
						<span class="badge badge-warning right" id="u1_t2_s2"></span>
						<span class="badge badge-danger right" id="u1_t3_s2"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s2"></span>
						<span class="badge badge-warning right" id="u2_t2_s2"></span>
						<span class="badge badge-danger right" id="u2_t3_s2"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s2"></span>
						<span class="badge badge-warning right" id="u3_t2_s2"></span>
						<span class="badge badge-danger right" id="u3_t3_s2"></span>
					</td>
				</tr>
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">DỰ ÁN KINH DOANH TUẦN 21.17 (A.Khanh + A.Tú + A. Đoàn Tuấn)</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s3"></span>
						<span class="badge badge-warning right" id="u1_t2_s3"></span>
						<span class="badge badge-danger right" id="u1_t3_s3"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s3"></span>
						<span class="badge badge-warning right" id="u2_t2_s3"></span>
						<span class="badge badge-danger right" id="u2_t3_s3"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s3"></span>
						<span class="badge badge-warning right" id="u3_t2_s3"></span>
						<span class="badge badge-danger right" id="u3_t3_s3"></span>
					</td>
					<script>
						let u1_t1_s3 = document.getElementById("u1_t1_s3");
						let u1_t2_s3 = document.getElementById("u1_t2_s3");
						let u1_t3_s3 = document.getElementById("u1_t3_s3");
						let a3=0,b3=0,c3=0;
						
						let u2_t1_s3 = document.getElementById("u2_t1_s3");
						let u2_t2_s3 = document.getElementById("u2_t2_s3");
						let u2_t3_s3 = document.getElementById("u2_t3_s3");
						let d3=0,e3=0,f3=0;
						
						let u3_t1_s3 = document.getElementById("u3_t1_s3");
						let u3_t2_s3 = document.getElementById("u3_t2_s3");
						let u3_t3_s3 = document.getElementById("u3_t3_s3");
						let g3=0,h3=0,i3=0;
						
						var url3 = '<c:url value="/assets/user/upload/Sheet3.xlsx" />';
			    		var oReqh_3 = new XMLHttpRequest();

			    		oReqh_3.open("GET", url3, true);
			    		oReqh_3.responseType = "arraybuffer";
			    		oReqh_3.onload = function(e) {
			    			var arraybuffer = oReqh_3.response;

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
			       		  	XL_row_object.forEach(item => {
			       		     if (item["Mức độ ưu tiên"] == "1") {
			       		         if (item["Tình trạng dự án"] == "" || item["Tình trạng dự án"] == "Đang hoàn thành" || typeof item["Tình trạng dự án"] === "undefined") {
			       		             a3++;
			       		         } else if (item["Tình trạng dự án"] == "Chậm tiến độ") {
			       		             b3++;
			       		         } else if (item["Tình trang dự án"] == "Hủy") {
			       		             c3++;
			       		         }
			       		     } else if (item["Mức độ ưu tiên"] == "2" || typeof item["Mức độ ưu tiên"] === "undefined") {
			       		         if (item["Tình trạng dự án"] == "" || item["Tình trạng dự án"] == "Đang hoàn thành" || typeof item["Tình trạng dự án"] === "undefined") {
			       		             d3++;
			       		         } else if (item["Tình trạng dự án"] == "Chậm tiến độ") {
			       		             e3++;
			       		         } else if (item["TÌnh trạng dự án"] == "Hủy") {
			       		             f3++;
			       		         }
			       		     } else if (item["Mức độ ưu tiên"] == "3") {
			       		         if (item["Tình trạng dự án"] == "" || item["Tình trạng dự án"] == "Đang hoàn thành" || typeof item["TÌnh trạng dự án"] === "undefined") {
			       		             g3++;
			       		         }
			       		         if (item["Mức độ ưu tiên"] == "Chậm tiến độ") {
			       		             h3++;
			       		         }
			       		         if (item["Mức độ ưu tiên"] == "Hủy") {
			       		             i3++;
			       		         }
			       		     }


			       		 });
			       		  	
			       		  	});
			       		 u1_t1_s3.innerHTML = a3;
			       		u1_t2_s3.innerHTML = b3;
			       		u1_t3_s3.innerHTML = c3;

			       		u2_t1_s3.innerHTML = d3;
			       		u2_t2_s3.innerHTML = e3;
			       		u2_t3_s3.innerHTML = f3;

			       		u3_t1_s3.innerHTML = g3;
			       		u3_t2_s3.innerHTML = h3;
			       		u3_t3_s3.innerHTML = i3;
			       		  	
			       		
			    		}
			    		oReqh_3.send();
						
						
					</script>
				</tr>
				<tr class="font-size-thong-ke">
					<td></td>
					<td class="pt-0 pb-1"><b>Ưu tiên 1</b></td>
					<td class="pt-0 pb-1"><b>Ưu tiên 2</b></td>
					<td class="pt-0 pb-1"><b>Ưu tiên 3</b></td>
				</tr>
			</table>
		</div>
	</div>
</nav>

<script>
	//define a date object variable that will take the current system date
	todaydate = new Date();
	
	//find the year of the current date
	var oneJan =  new Date(todaydate.getFullYear(), 0, 1); 
	
	// calculating number of days in given year before a given date 
	var numberOfDays =  Math.floor((todaydate - oneJan) / (24 * 60 * 60 * 1000)); 
	
	// adding 1 since to current date and returns value starting from 0 
	var result = Math.ceil(( todaydate.getDay() + 1 + numberOfDays) / 7);   
	
	var d = new Date();
	var m = d.getMonth();
	var y = d.getFullYear();
	
	var file_month = m + 1;
	var file_year = y;
	
	var file_name_1 = "Báo cáo sheet 1 tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
	var file_name_2 = "Báo cáo sheet 2 tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
	var file_name_3 = "Báo cáo sheet 3 tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
	console.log(file_name_1, file_name_2, file_name_3);
	
	/* var file_name_new = "Báo cáo KH Triển khai và Kinh doanh tuần 27 tháng 7 năm 2021.xlsx";
	var check_name = file_name.localeCompare(file_name_new);
	console.log(check_name); */
	
	
	
	let u1_t1_s1 = document.getElementById('u1_t1_s1');
	let u1_t2_s1 = document.getElementById('u1_t2_s1');
	let u1_t3_s1 = document.getElementById('u1_t3_s1');
	var a1=0, b1=0, c1=0;
	
	let u2_t1_s1 = document.getElementById('u2_t1_s1');
	let u2_t2_s1 = document.getElementById('u2_t2_s1');
	let u2_t3_s1 = document.getElementById('u2_t3_s1');
	var d1=0, e1=0, f1=0;
	
	let u3_t1_s1 = document.getElementById('u3_t1_s1');
	let u3_t2_s1 = document.getElementById('u3_t2_s1');
	let u3_t3_s1 = document.getElementById('u3_t3_s1');
	var g1=0, h1=0, i1=0;
	var url1 = '<c:url value="/assets/user/upload/Cainayhayne.xlsx" />';
	var oReqh_1 = new XMLHttpRequest();

	oReqh_1.open("GET", url1, true);
	oReqh_1.responseType = "arraybuffer";
	oReqh_1.onload = function(e) {
		var arraybuffer = oReqh_1.response;

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
  		 	XL_row_object.forEach(item => {
  		 		
      	        if (item["Priority"] == "High") {
      	            if (item["Mức độ tình trạng"] == "Đang hoàn thành" || item["Mức độ tình trạng"] == "x" || item["Mức độ tình trạng"] == "Hủy") {
      	                a1++;
      	            } else if (item["Mức độ tình trạng"] == "Chậm tiến độ") {
      	                b1++;
      	            } else if (item["Mức độ tình trạng"] == "Tiến độ rất chậm") {
      	                c1++;
      	            }
      	        } else if (item["Priority"] == "" || item["Priority"] == "x" || typeof item["Priority"] === 'undefined') {
      	            if (item["Mức độ tình trạng"] == "Đang hoàn thành" || item["Mức độ tình trạng"] == "x" || typeof item["Mức độ tình trạng"] === 'undefined'|| item["Mức độ tình trạng"] == "Hủy") {
      	                d1++;
      	            } else if (item["Mức độ tình trạng"] == "Chậm tiến độ") {
      	                e1++;
      	            } else if (item["Mức độ tình trạng"] == "Tiến độ rất chậm") {
      	                f1++;
      	            }
      	        } else if (item["Priority"] == "2" || item["Priority"] == "medium") {
      	            if (item["Mức độ tình trạng"] == "Đang hoàn thành" || item["Mức độ tình trạng"] == "Hủy") {
      	                g1++;
      	            } else if (item["Mức độ tình trạng"] == "Chậm tiến độ") {
      	                h1++;
      	            } else if (item["Mức độ tình trạng"] == "Tiến độ rất chậm") {
      	                i1++;
      	            }
      	        }


      	    });
   		
	  	});
	 	u1_t1_s1.innerHTML = a1;
   	    u1_t2_s1.innerHTML = b1;
   	    u1_t3_s1.innerHTML = c1;

   	    u2_t1_s1.innerHTML = d1;
   	    u2_t2_s1.innerHTML = e1;
   	    u2_t3_s1.innerHTML = f1;

   	    u3_t1_s1.innerHTML = g1;
   	    u3_t2_s1.innerHTML = h1;
   	    u3_t3_s1.innerHTML = i1;
	}
	oReqh_1.send();



	// Thống kê Sheet 2:
	let u1_t1_s2 = document.getElementById("u1_t1_s2");
	let u1_t2_s2 = document.getElementById("u1_t2_s2");
	let u1_t3_s2 = document.getElementById("u1_t3_s2");
	let a2=0,b2=0,c2=0;
	
	let u2_t1_s2 = document.getElementById("u2_t1_s2");
	let u2_t2_s2 = document.getElementById("u2_t2_s2");
	let u2_t3_s2 = document.getElementById("u2_t3_s2");
	let d2=0,e2=0,f2=0;
	
	let u3_t1_s2 = document.getElementById("u3_t1_s2");
	let u3_t2_s2 = document.getElementById("u3_t2_s2");
	let u3_t3_s2 = document.getElementById("u3_t3_s2");
	let g2=0,h2=0,i2=0;
	var url2 = '<c:url value="/assets/user/upload/Sheet2.xlsx" />';
	var oReqh_2 = new XMLHttpRequest();

	oReqh_2.open("GET", url2, true);
	oReqh_2.responseType = "arraybuffer";
	oReqh_2.onload = function(e) {
		var arraybuffer = oReqh_2.response;

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
		  	
		 	XL_row_object.forEach(item => {
		 		
		 	if(item["Mức độ ưu tiên"]=="1")
		 	{
				if(item["Tình trạng dự án"]=="Đang hoàn thành" || item["Tình trạng dự án"]=="" || typeof  item["Tình trạng dự án"] === 'undefined' || item["Tình trạng dự án"]=="Hủy")
				{
					a2++;
				}
				else if(item["Tình trạng dự án"]=="Chậm tiến độ")
				{
					b2++;
				}
				else if(item["Tình trạng dự án"]=="Tiến độ rất chậm")
				{
					c2++;
				}
			} else if(item["Mức độ ưu tiên"]=="2")
			{
				if(item["Tình trạng dự án"]=="Đang hoàn thành" || item["Tình trạng dự án"]=="" || typeof  item["Tình trạng dự án"] === 'undefined' || item["Tình trạng dự án"]=="Hủy")
				{
					d2++;
				}
				else if(item["Tình trạng dự án"]=="Chậm tiến độ")
				{
					e2++;
				}
				else if(item["Tình trạng dự án"]=="Tiến độ rất chậm")
				{
					f2++;
				}
			}else if(item["Mức độ ưu tiên"]=="3" || typeof  item["Mức độ ưu tiên"] === 'undefined'){
			if(item["Tình trạng dự án"]=="Đang hoàn thành" || item["Tình trạng dự án"]=="" || typeof  item["Tình trạng dự án"] === 'undefined' || item["Tình trạng dự án"]=="Hủy"){
				g2++;
			}else if(item["Tình trạng dự án"]=="Chậm tiến độ"){
				h2++;
			}else if(item["Tình trạng dự án"]=="Tiến độ rất chậm"){
				i2++;
			}
		}


   	    });
   		
		  	});
		u1_t1_s2.innerHTML = a2;
	    u1_t2_s2.innerHTML = b2;
	    u1_t3_s2.innerHTML = c2;

	    u2_t1_s2.innerHTML = d2;
	    u2_t2_s2.innerHTML = e2;
	    u2_t3_s2.innerHTML = f2;

	    u3_t1_s2.innerHTML = g2;
	    u3_t2_s2.innerHTML = h2;
	    u3_t3_s2.innerHTML = i2;
	}
	oReqh_2.send();
</script>
<!-- End Header -->