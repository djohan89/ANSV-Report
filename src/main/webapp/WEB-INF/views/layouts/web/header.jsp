<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>



<!-- ======= Header ======= -->
<!-- <nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark"> -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark pb-0 mb-0" 
	style="border-bottom: 0px solid #343a40; height: 130px;">
    <!-- Left navbar links -->
    <ul class="navbar-nav" style="margin-top: -6%;">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button">
            	<i class="fas fa-bars" style="color: white; font-size: 25px;"></i>
            </a>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav" style="margin-top: -6%;">
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            	<i class="fas fa-expand-arrows-alt" style="color: white; font-size: 25px;"></i>
            </a>
        </li>
    </ul>

    <!-- === Thống kê === -->
    <div class="row" style="width: 100%; height: 120px;">
    	
    	<div class="col-lg-2" style="height: 30px;">
    		<font color="orange" style="font-size: 18px; padding-top: 1px">
    			<b>Báo cáo tuần:</b>
    		</font><br>
    		<select id="select_week"></select>
    	</div>
        <div class="col-lg-10">
            <table class="table">
                <tr>
                    <td class="font-size-thong-ke pt-1 pb-1" id="name_sheet_header_1">
                        BÁO CÁO VƯỚNG MẮC TUẦN 4-THÁNG 4
                    </td>
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
                    <td class="font-size-thong-ke pt-1 pb-1" id="name_sheet_header_2">
                        DỰ ÁN KINH DOANH TUẦN 21.17 (AM-BDC)
                    </td>
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
                    <td class="font-size-thong-ke pt-1 pb-1" id="name_sheet_header_3">
                        DỰ ÁN KINH DOANH TUẦN 21.17 (A.Khanh + A.Tú + A. Đoàn Tuấn)
                    </td>
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



<style>
  
    
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
        font-size: 15px;
        text-transform: uppercase;
    }
    
    .badge {
        width: 20px;
    }
    
    .select2-container--default .select2-selection--single{
        margin-left: 10px;
        padding: 2px 0;
        height: 30px;
        width: 65px; 
        font-size: 1.2em;  
        position: relative;
    }
    
    .select2-container--default .select2-dropdown.select2-dropdown--below {
        margin-left: 10px;
        width: 65px !important;
    }
</style>



<script>
	//define a date object variable that will take the current system date
    todaydate = new Date();

    //find the year of the current date
    var oneJan = new Date(todaydate.getFullYear(), 0, 1);

    // calculating number of days in given year before a given date 
    var numberOfDays = Math.floor((todaydate - oneJan) / (24 * 60 * 60 * 1000));

    // adding 1 since to current date and returns value starting from 0 
    var result = Math.ceil((todaydate.getDay() + 1 + numberOfDays) / 7);

    var d = new Date();
    var m = d.getMonth();
    var y = d.getFullYear();

    var file_month = m + 1;
    var file_year = y;

// Khai báo tuần hiện tại
	var tuan_nay = result + 1;

    // Khai báo tên đúng của file muốn thực hiện upload: File muốn upload là báo cáo của tuần này
    var file_upload_accept_1 = "Báo cáo KH Triển khai tuần " + tuan_nay + " tháng " + file_month + " năm " + file_year + ".xlsx";
    var file_upload_accept_2 = "Báo cáo KH KD Viễn thông tuần " + tuan_nay + " tháng " + file_month + " năm " + file_year + ".xlsx";
    var file_upload_accept_3 = "Báo cáo KH KD Chuyển đổi số tuần " + tuan_nay + " tháng " + file_month + " năm " + file_year + ".xlsx";
    // Console thông tin để fix bug
    console.log("(*) Tuần này:");
    console.log(file_upload_accept_1);
    console.log(file_upload_accept_2);
    console.log(file_upload_accept_3);
    console.log("");
    
    // Khai báo tên đúng của file muốn thực hiện lấy dữ liệu: File muốn hiển thị thông tin là báo cáo của tuần trước
    var file_view_1 = "Báo cáo KH Triển khai tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
    var file_view_2 = "Báo cáo KH KD Viễn thông tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
    var file_view_3 = "Báo cáo KH KD Chuyển đổi số tuần " + result + " tháng " + file_month + " năm " + file_year + ".xlsx";
    // Console thông tin để fix bug
    console.log("(*) Tuần trước:");
    console.log(file_view_1);
    console.log(file_view_2);
    console.log(file_view_3);
    console.log("");



// Đầu: Tạo select 2 cho phần chọn tuần
	$('#select_week').select2();

	var week_option = "";
	for (let i = tuan_nay; i >= 25; i--) {
		if (i == tuan_nay - 1) {
			week_option += '<option value="' + i + '" selected>' + i + '</option>';
		} else {
			week_option += '<option value="' + i + '">' + i + '</option>';
		}
		}
	document.getElementById("select_week").innerHTML = week_option;

    $("#select_week").change(function() {
        var week_selected = document.getElementById("select_week").value;

        var file_view_1_new = "Báo cáo KH Triển khai tuần " + week_selected + " tháng " + file_month + " năm " + file_year + ".xlsx";
        var file_view_2_new = "Báo cáo KH KD Viễn thông tuần " + week_selected + " tháng " + file_month + " năm " + file_year + ".xlsx";
        var file_view_3_new = "Báo cáo KH KD Chuyển đổi số tuần " + week_selected + " tháng " + file_month + " năm " + file_year + ".xlsx";

  	//Thay thế tiêu đề thống kê mới
        //Thay tiêu đề thống kê báo cáo 1
        var header_sheet_1_new = file_view_1_new.replaceAll(".xlsx", "");
    	document.getElementById("name_sheet_header_1").innerHTML = header_sheet_1_new;
    	
    	//Thay tiêu đề thống kê báo cáo 2
        var header_sheet_2_new = file_view_2_new.replaceAll(".xlsx", "");
    	document.getElementById("name_sheet_header_2").innerHTML = header_sheet_2_new;
    	
    	//Thay tiêu đề thống kê báo cáo 3
        var header_sheet_3_new = file_view_3_new.replaceAll(".xlsx", "");
    	document.getElementById("name_sheet_header_3").innerHTML = header_sheet_3_new;
        
    //Thay thế tiêu đề cho datatable
    	// Hiển thị tiêu đề cho datatable 1
		var sheet_1_new_1 = file_view_1_new.replaceAll("tuần", "<br>Tuần");
		var sheet_1_new_2 = sheet_1_new_1.replaceAll(".xlsx", "");
		document.getElementById("name_sheet_1").innerHTML = sheet_1_new_2;
		
		// Hiển thị tiêu đề cho datatable 2
		var sheet_2_new_1 = file_view_2_new.replaceAll("tuần", "<br>Tuần");
		var sheet_2_new_2 = sheet_2_new_1.replaceAll(".xlsx", "");
		document.getElementById("name_sheet_2").innerHTML = sheet_2_new_1;
		
		// Hiển thị tiêu đề cho datatable 3
		var sheet_3_new_1 = file_view_3_new.replaceAll("tuần", "<br>Tuần");
		var sheet_3_new_2 = sheet_3_new_1.replaceAll(".xlsx", "");
		document.getElementById("name_sheet_3").innerHTML = sheet_3_new_2;
    
        var url1_new = '<c:url value="/assets/user/upload/' + file_view_1_new + '" />';
        var url2_new = '<c:url value="/assets/user/upload/' + file_view_2_new + '" />';
        var url3_new = '<c:url value="/assets/user/upload/' + file_view_3_new + '" />';
        show_data(url1_new, url2_new, url3_new, week_selected);
    });
	
	/*$('#select_week').on('select2:select', function (e) {
		tuan_nay = document.getElementById("select_week").value;
		  	console.log(file_upload_accept_1);
		  	
   		$.ajax({
 			url : 'change_content',
 			data : {
 				file_data : tuan_nay
 			},
 			success : function(responseText) {
 				console.log("Đã vào đc controller r đó, 10 điểm về chỗ!");
 			}
 		}).done(function(response){
 			ContentReplace(response);
			alertify.success('Chào người thành công!!!');
 	   	});
	});*/
// Cuối: Tạo select 2 cho phần chọn tuần
    
	
    
 	// Hiển thị tiêu đề cho thống kê 1
	var header_sheet_1_fix_1 = file_view_1.replaceAll("_", " ");
	var header_sheet_1_fix_2 = header_sheet_1_fix_1.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_header_1").innerHTML = header_sheet_1_fix_2;
	
	// Hiển thị tiêu đề cho thống kê 2
	var header_sheet_2_fix_1 = file_view_2.replaceAll("_", " ");
	var header_sheet_2_fix_2 = header_sheet_2_fix_1.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_header_2").innerHTML = header_sheet_2_fix_2;
	
	// Hiển thị tiêu đề cho thống kê 3
	var header_sheet_3_fix_1 = file_view_3.replaceAll("_", " ");
	var header_sheet_3_fix_2 = header_sheet_3_fix_1.replaceAll(".xlsx", "");
	document.getElementById("name_sheet_header_3").innerHTML = header_sheet_3_fix_2;

    /* var file_name_new = "Báo cáo KH Triển khai và Kinh doanh tuần 27 tháng 7 năm 2021.xlsx";
    var check_name = file_name.localeCompare(file_name_new);
    console.log(check_name); */



    // Thống kê Sheet 1:
    let u1_t1_s1 = document.getElementById('u1_t1_s1');
    let u1_t2_s1 = document.getElementById('u1_t2_s1');
    let u1_t3_s1 = document.getElementById('u1_t3_s1');
    var a1 = 0,
        b1 = 0,
        c1 = 0;

    let u2_t1_s1 = document.getElementById('u2_t1_s1');
    let u2_t2_s1 = document.getElementById('u2_t2_s1');
    let u2_t3_s1 = document.getElementById('u2_t3_s1');
    var d1 = 0,
        e1 = 0,
        f1 = 0;

    let u3_t1_s1 = document.getElementById('u3_t1_s1');
    let u3_t2_s1 = document.getElementById('u3_t2_s1');
    let u3_t3_s1 = document.getElementById('u3_t3_s1');
    var g1 = 0,
        h1 = 0,
        i1 = 0;
    
    var url1 = '<c:url value="/assets/user/upload/' + file_view_1 + '" />';
    var oReqh_1 = new XMLHttpRequest();

    oReqh_1.open("GET", url1, true);
    oReqh_1.responseType = "arraybuffer";
    oReqh_1.onload = function(e) {
        var arraybuffer = oReqh_1.response;

        /* convert data to binary string */
        var data = new Uint8Array(arraybuffer);
        var arr = new Array();
        for (var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
        var bstr = arr.join("");

        /* Call XLSX */
        var workbook = XLSX.read(bstr, {
            type: "binary"
        });
        /* DO SOMETHING WITH workbook HERE */

        workbook.SheetNames.forEach(function(sheetName) {
            var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
            XL_row_object.forEach(item => {
					
                if (item["Priority"] == "High" || item["Priority"] == "1") {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/ongoing/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || item["Mức độ tình trạng"] == "x" || format(item["Mức độ tình trạng"]).match(/hủy/i) != null ) {
                        a1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null) {
                        b1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null) {
                        c1++;
                    }
                } else if (item["Priority"] == "" || item["Priority"] == "2" || item["Priority"] == "Medium" || item["Priority"] == "x" || typeof item["Priority"] === 'undefined') {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/ongoing/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || item["Mức độ tình trạng"] == "x" || typeof item["Mức độ tình trạng"] === 'undefined' || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        d1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null) {
                        e1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null) {
                        f1++;
                    }
                } else if (item["Priority"] == "3" || item["Priority"] == "Low") {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/ongoing/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || format(item["Mức độ tình trạng"]).match(/hủy/i) != null || typeof item["Mức độ tình trạng"] === 'undefined') {
                        g1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null) {
                        h1++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null) {
                        i1++;
                    }
                }


            });

        });
        u1_t1_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_a1('+ a1 +')">'+ a1 + '</a>';
        u1_t2_s1.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_b1('+ b1 +')">'+ b1 + '</a>';
        u1_t3_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_c1('+ c1 +')">'+ c1 + '</a>';

        u2_t1_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_d1('+ d1 +')">'+ d1 + '</a>';
        u2_t2_s1.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_e1('+ e1 +')">'+ e1 + '</a>';
        u2_t3_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_f1('+ f1 +')">'+ f1 + '</a>';

        u3_t1_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_g1('+ g1 +')">'+ g1 + '</a>';
        u3_t2_s1.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_h1('+ h1 +')">'+ h1 + '</a>';
        u3_t3_s1.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_i1('+ i1 +')">'+ i1 + '</a>';

    }
    oReqh_1.send();

    function header_link_a1(sl){
    	window.location.href = "h1_s1?u=1&t=1&sl="+sl;
    };
    function header_link_b1(sl){
    	window.location.href = "h1_s1?u=1&t=2&sl="+sl;
    };
    function header_link_c1(sl){
    	window.location.href = "h1_s1?u=1&t=3&sl="+sl;
    };
	
    function header_link_d1(sl){
    	window.location.href ="h1_s1?u=2&t=1&sl="+sl;
    };
    function header_link_e1(sl){
    	window.location.href ="h1_s1?u=2&t=2&sl="+sl;
    };
    function header_link_f1(sl){
    	window.location.href ="h1_s1?u=2&t=3&sl="+sl;
    };
    
    function header_link_g1(sl){
    	window.location.href ="h1_s1?u=3&t=1&sl="+sl;
    };
    function header_link_h1(sl){
    	window.location.href ="h1_s1?u=3&t=2&sl="+sl;
    };
    function header_link_i1(sl){
    	window.location.href ="h1_s1?u=3&t=3&sl="+sl;
    };

    // Thống kê Sheet 2:
    let u1_t1_s2 = document.getElementById("u1_t1_s2");
    let u1_t2_s2 = document.getElementById("u1_t2_s2");
    let u1_t3_s2 = document.getElementById("u1_t3_s2");
    let a2 = 0,
        b2 = 0,
        c2 = 0;

    let u2_t1_s2 = document.getElementById("u2_t1_s2");
    let u2_t2_s2 = document.getElementById("u2_t2_s2");
    let u2_t3_s2 = document.getElementById("u2_t3_s2");
    let d2 = 0,
        e2 = 0,
        f2 = 0;

    let u3_t1_s2 = document.getElementById("u3_t1_s2");
    let u3_t2_s2 = document.getElementById("u3_t2_s2");
    let u3_t3_s2 = document.getElementById("u3_t3_s2");
    let g2 = 0,
        h2 = 0,
        i2 = 0;

    var url2 = '<c:url value="/assets/user/upload/' + file_view_2 + '" />';
    var oReqh_2 = new XMLHttpRequest();

    oReqh_2.open("GET", url2, true);
    oReqh_2.responseType = "arraybuffer";
    oReqh_2.onload = function(e) {
        var arraybuffer = oReqh_2.response;

        /* convert data to binary string */
        var data = new Uint8Array(arraybuffer);
        var arr = new Array();
        for (var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
        var bstr = arr.join("");

        /* Call XLSX */
        var workbook = XLSX.read(bstr, {
            type: "binary"
        });
        /* DO SOMETHING WITH workbook HERE */

        workbook.SheetNames.forEach(function(sheetName) {
            var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);

            XL_row_object.forEach(item => {
					
                if (item["Mức độ ưu tiên"] == "1") {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null ||  item["Mức độ tình trạng"] == "" || typeof item["Mức độ tình trạng"] === 'undefined' || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        a2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null ) {
                        b2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null ) {
                        c2++;
                    }
                } else if (item["Mức độ ưu tiên"] == "2") {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || item["Mức độ tình trạng"] == "" || typeof item["Mức độ tình trạng"] === 'undefined' || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        d2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null ) {
                        e2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null ) {
                        f2++;
                    }
                } else if (item["Mức độ ưu tiên"] == "3" || typeof item["Mức độ ưu tiên"] === 'undefined') {
                    if (format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || item["Mức độ tình trạng"] == "" || typeof item["Mức độ tình trạng"] === 'undefined' || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        g2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null ) {
                        h2++;
                    } else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null ) {
                        i2++;
                    }
                }


            });

        });
        u1_t1_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_a2('+ a2 +')">'+ a2 +'</a>';
        u1_t2_s2.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_b2('+ b2 +')">'+ b2 +'</a>';
        u1_t3_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_c2('+ c2 +')">'+ c2 +'</a>';

        u2_t1_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_d2('+ d2 +')">'+ d2 +'</a>';
        u2_t2_s2.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_e2('+ e2 +')">'+ e2 +'</a>';
        u2_t3_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_f2('+ f2 +')">'+ f2 +'</a>';

        u3_t1_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_g2('+ g2 +')">'+ g2 +'</a>';
        u3_t2_s2.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_h2('+ h2 +')">'+ h2 +'</a>';
        u3_t3_s2.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_i2('+ i2 +')">'+ i2 +'</a>';

    }
    oReqh_2.send();

    function header_link_a2(sl){
    	window.location.href = "h2_s2?u=1&t=1&sl="+sl;
    };
    function header_link_b2(sl){
    	window.location.href = "h2_s2?u=1&t=2&sl="+sl;
    };
    function header_link_c2(sl){
    	window.location.href = "h2_s2?u=1&t=3&sl="+sl;
    };
    
    function header_link_d2(sl){
    	window.location.href = "h2_s2?u=2&t=1&sl="+sl;
    };
    function header_link_e2(sl){
    	window.location.href = "h2_s2?u=2&t=2&sl="+sl;
    };
    function header_link_f2(sl){
    	window.location.href = "h2_s2?u=2&t=3&sl="+sl;
    };
    
    function header_link_g2(sl){
    	window.location.href = "h2_s2?u=3&t=1&sl="+sl;
    };
    function header_link_h2(sl){
    	window.location.href = "h2_s2?u=3&t=2&sl="+sl;
    };
    function header_link_i2(sl){
    	window.location.href = "h2_s2?u=3&t=3&sl="+sl;
    };


    // Thống kê Sheet 3:
    let u1_t1_s3 = document.getElementById("u1_t1_s3");
    let u1_t2_s3 = document.getElementById("u1_t2_s3");
    let u1_t3_s3 = document.getElementById("u1_t3_s3");
    let a3 = 0,
        b3 = 0,
        c3 = 0;

    let u2_t1_s3 = document.getElementById("u2_t1_s3");
    let u2_t2_s3 = document.getElementById("u2_t2_s3");
    let u2_t3_s3 = document.getElementById("u2_t3_s3");
    let d3 = 0,
        e3 = 0,
        f3 = 0;

    let u3_t1_s3 = document.getElementById("u3_t1_s3");
    let u3_t2_s3 = document.getElementById("u3_t2_s3");
    let u3_t3_s3 = document.getElementById("u3_t3_s3");
    let g3 = 0,
        h3 = 0,
        i3 = 0;

    var url3 = '<c:url value="/assets/user/upload/' + file_view_3 + '" />';
    var oReqh_3 = new XMLHttpRequest();
    
    oReqh_3.open("GET", url3, true);
    oReqh_3.responseType = "arraybuffer";
    oReqh_3.onload = function(e) {
        var arraybuffer = oReqh_3.response;

        /* convert data to binary string */
        var data = new Uint8Array(arraybuffer);
        var arr = new Array();
        for (var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
        var bstr = arr.join("");

        /* Call XLSX */
        var workbook = XLSX.read(bstr, {
            type: "binary"
        });
        /* DO SOMETHING WITH workbook HERE */

        workbook.SheetNames.forEach(function(sheetName) {
            var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
            XL_row_object.forEach(item => {
                if (item["Mức độ ưu tiên"] == "1") {
                    if (item["Mức độ tình trạng"] == "" || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || typeof item["Mức độ tình trạng"] === "undefined" || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        a3++;
                    } else if ( format(item["Mức độ tình trạng"]).match(/sắp/i) != null) {
                        b3++;
                    } else if ( format(item["Mức độ tình trạng"]).match(/chậm/i) != null) {
                        c3++;
                    }
                } else if (item["Mức độ ưu tiên"] == "2" ) {
                    if (item["Mức độ tình trạng"] == "" || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || typeof item["Mức độ tình trạng"] === "undefined" || format(item["Mức độ tình trạng"]).match(/hủy/i) != null) {
                        d3++;
                    } else if ( format(item["Mức độ tình trạng"]).match(/sắp/i) != null) {
                        e3++;
                    } else if ( format(item["Mức độ tình trạng"]).match(/chậm/i) != null) {
                        f3++;
                    }
                } else if (item["Mức độ ưu tiên"] == "3" || typeof item["Mức độ ưu tiên"] === "undefined") {
                    if (item["Mức độ tình trạng"] == "" || format(item["Mức độ tình trạng"]).match(/đúng/i) != null || format(item["Mức độ tình trạng"]).match(/hoàn thành/i) != null || typeof item["Mức độ tình trạng"] === "undefined" || format(item["Mức độ tình trạng"]).match(/hủy/i) != null ) {
                        g3++;
                    }
                    else if (format(item["Mức độ tình trạng"]).match(/sắp/i) != null ) {
                        h3++;
                    }
                    else if (format(item["Mức độ tình trạng"]).match(/chậm/i) != null ) {
                        i3++;
                    }
                }


            });

        });
        u1_t1_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_a3('+ a3 +')">'+ a3 +'</a>';
        u1_t2_s3.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_b3('+ b3 +')">'+ b3 +'</a>';
        u1_t3_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_c3('+ c3 +')">'+ c3 +'</a>';

        u2_t1_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_d3('+ d3 +')">'+ d3 +'</a>';
        u2_t2_s3.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_e3('+ e3 +')">'+ e3 +'</a>';
        u2_t3_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_f3('+ f3 +')">'+ f3 +'</a>';

        u3_t1_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_g3('+ g3 +')">'+ g3 +'</a>';
        u3_t2_s3.innerHTML = '<a style="color:black;" href="#" onclick="return header_link_h3('+ h3 +')">'+ h3 +'</a>';
        u3_t3_s3.innerHTML = '<a style="color:white;" href="#" onclick="return header_link_i3('+ i3 +')">'+ i3 +'</a>';

    }
    oReqh_3.send();
    
    function header_link_a3(sl){
    	window.location.href = "h3_s3?u=1&t=1&sl="+sl;
    };
    function header_link_b3(sl){
    	window.location.href = "h3_s3?u=1&t=2&sl="+sl;
    };
    function header_link_c3(sl){
    	window.location.href = "h3_s3?u=1&t=3&sl="+sl;
    };
    
    function header_link_d3(sl){
    	window.location.href = "h3_s3?u=2&t=1&sl="+sl;
    };
    function header_link_e3(sl){
    	window.location.href = "h3_s3?u=2&t=2&sl="+sl;
    };
    function header_link_f3(sl){
    	window.location.href = "h3_s3?u=2&t=3&sl="+sl;
    };
    
    function header_link_g3(sl){
    	window.location.href = "h3_s3?u=3&t=1&sl="+sl;
    };
    function header_link_h3(sl){
    	window.location.href = "h3_s3?u=3&t=2&sl="+sl;
    };
    function header_link_i3(sl){
    	window.location.href = "h3_s3?u=3&t=3&sl="+sl;
    };
    
    
    function format(value){ 
    	if(value == 'x' ||value =="null" || value =="" || typeof value === 'undefined'){
    		return " ";
    	}else{
    		return value;
        }		
    }
</script>
<!-- End Header -->