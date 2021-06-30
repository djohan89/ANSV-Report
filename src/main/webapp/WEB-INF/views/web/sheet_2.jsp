<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>
<style>
a {
	color: #fff;
}

a:hover {
	color: #fff;
	text-decoration: none;
}
.content-wrapper{
background: #000000c4;
color: #fff;}
</style>
<script type="text/javascript">
	$( document ).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = params.get("kh_s2_id");
		return_id(id);
	});
</script>

<div class="content-wrapper" >
	<!-- Content Header (Page header) -->
	
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid ">
			<h2 id="title"></h2>
    <div class="container bg-dark text-white">
        <nav>
            <ul class="nav nav-tabs" id="data_ul">
            </ul>
        </nav>
        <div class="tab-content" id="detail" >
  				   
        </div>
       
        <script>
        	function return_id(id){
        		var title = document.getElementById('title');
                var data_ul = document.getElementById("data_ul");
                var detail_data = document.getElementById("detail");
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
        		    	var idx = 0;
        		    	function groupArrayOfObjects(list, key) {
			                    return list.reduce(function(rv, x) {
			                        (rv[x[key]] = rv[x[key]] || []).push(x);
			                        return rv;
			                    }, {});
			                };
			                var groupedPeople = groupArrayOfObjects(XL_row_object, "Khách hàng");
		
			                title.innerHTML += id;
			                XL_row_object.forEach((item) => {
			                    if (item["Khách hàng"] == id) {
			                          
			                        idx++;
			                        let row1 = "";
			                        if (idx == 1) {
			                            row1 += '<li class="nav-item">' +
			                                '<a class="nav-link link-active active" id="a-' + idx + '" href="#' + idx + '" onclick=" return class_fade(' + idx + ')">' + item['Dự án/Gói thầu'] + '</a>' +
			                                '</li>';
			                        } else {
			                            row1 += '<li class="nav-item">' +
			                                '<a class="nav-link link-active" id="a-' + idx + '" href="#' + idx + '" onclick=" return class_fade(' + idx + ')">' + item['Dự án/Gói thầu'] + '</a>' +
			                                '</li>';
			                        }
			                        data_ul.innerHTML += row1;
			                        let row2 = "";
			                        if (idx == 1) {

			                            row2 += '<div id="' + idx + '" class="container tab-pane active" ><br>' +
			                                '<div class="row ">' +
			                                '<div class="text-center col-md-12">' +
			                                '<h4><a href="bao_cao_sheet_2?id_p2=' + item["STT"] + '" onclick="return project_link_2(' + item["STT"] + ')"' +
			                                'target="_blank"> ' + format(item["Dự án/Gói thầu"]) + '</a></h4>' +
			                                '</div>' +
			                                '</div>'

			                            +
			                            '<p><b>Người phụ trách:</b> ' + format(item["Phụ trách"]) + '</p>' +
			                                '<p style="white-space: pre-wrap;"><b>Mô tả dự án:</b> ' + format(item["Mô tả dự án"]) + ' </p>' +
			                                '<p><b>Tổng mức đầu tư:</b> ' + format(item["Tổng mức đầu tư"]) + '</p>' +
			                                '<p><b>Đăng ký kế hoạch dự án:</b> ' + format_date(item["Đăng ký kế hoạch dự án"]) + '</p>' +
			                                '<p><b>Hình thức đầu tư:</b> ' + format(item["Hình thức đầu tư"]) + '</p>' +
			                                '<p><b>Mức độ ưu tiên:</b> ' + format(item["Mức độ ưu tiên"]) + '</p>' +
			                                '<p><b>Mức độ khả thi:</b> ' + format(item["Mức độ khả thi"]) + ' </p>' +
			                                '<p style="white-space: pre-wrap;"><b>Tình trạng:</b> ' + format(item["Tình trạng dự án"]) + '</p>' +
			                                '<p><b>Kết quả thực hiện kế hoạch:</b> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
			                                '<p><b>Tồn tại vướng mắc:</b> ' + format(item["Tồn tại, vướng mắc, đề xuất giải pháp"]) + ' </p>' +
			                                '</div>';

			                        } else {
			                            row2 += '<div id="' + idx + '" class="container tab-pane fade" ><br>' +
			                                '<div class="row ">' +
			                                '<div class="text-center col-md-12">' +
			                                '<h4><a href="bao_cao_sheet_2?id_p2=' + item["STT"] + '" onclick="return project_link_2(' + item["STT"] + ')"' +
			                                'target="_blank"> ' + format(item["Dự án/Gói thầu"]) + '</a></h4>' +
			                                '</div>' +
			                                '</div>'

			                            +
			                            '<p><b>Người phụ trách:</b> ' + format(item["Phụ trách"]) + '</p>' +
			                                '<p style="white-space: pre-wrap;"><b>Mô tả dự án:</b> ' + format(item["Mô tả dự án"]) + ' </p>' +
			                                '<p><b>Tổng mức đầu tư:</b> ' + format(item["Tổng mức đầu tư"]) + '</p>' +
			                                '<p><b>Đăng ký kế hoạch dự án:</b> ' + format(item["Đăng ký kế hoạch dự án"]) + '</p>' +
			                                '<p><b>Hình thức đầu tư:</b> ' + format(item["Hình thức đầu tư"]) + '</p>' +
			                                '<p><b>Mức độ ưu tiên:</b> ' + format(item["Mức độ ưu tiên"]) + '</p>' +
			                                '<p><b>Mức độ khả thi:</b> ' + format(item["Mức độ khả thi"]) + ' </p>' +
			                                '<p style="white-space: pre-wrap;"><b>Tình trạng:</b> ' + format(item["Tình trạng dự án"]) + '</p>' +
			                                '<p><b>Kết quả thực hiện kế hoạch:</b> ' + format(item["Kết quả thực hiện kế hoạch"]) + '</p>' +
			                                '<p><b>Tồn tại vướng mắc:</b> ' + format(item["Tồn tại, vướng mắc, đề xuất giải pháp"]) + ' </p>' +
			                                '</div>';

			                        }
			                        detail_data.innerHTML += row2;
			                    }

			                });
        		  	});
         		}
         		oReq.send();
                function project_link_2(id) {
             		window.open("bao_cao_sheet_2?id_p2="+id); //Link đến trang khác với tab mới
             		//window.location.href = "http://www.w3schools.com"; //Link đến trang khác ở tab hiện tại
             	  	//location.replace("https://www.w3schools.com"); //Link đến trang khác thay thế trang hiện tại
             	}
        	}
        	
           
        </script>
    </div>
    <script>
        function class_fade(id) {
        	let a_id = "a-"+id;
        	var a = document.getElementById(a_id);
        	var numa = document.getElementsByClassName("link-active");
        	for(j=1; j<=numa.length; j++){
        		let a_jd = "a-"+j;
        		var remove = document.getElementById(a_jd);
       			var check = remove.classList.contains("active");
       			if(check == true){
       				remove.classList.remove("active")
       			}
        	}
        	a.classList.add("active"); 
        	
        	
            var element = document.getElementById(id);
            var numItems = document.getElementsByClassName(" tab-pane ");
            for (i = 1; i <= numItems.length; i++) {
                var remove_class = document.getElementById(i);
                // console.log(remove_class);

                var check_active = remove_class.classList.contains("active");
                // console.log(check_active);
                if (check_active == true) {
                    remove_class.classList.remove("active");
                } else {
                    remove_class.classList.remove("fade");
                }
            }
            element.classList.add("active");

        }
    </script>


		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->

</div>

