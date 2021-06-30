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
}
.content-wrapper{
background: #000000c4;
color: #fff;}
</style>

<div class="content-wrapper" >
	<!-- Content Header (Page header) -->
	
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid ">
			<h2 id="title">VNPT Net</h2>
    <div class="container bg-dark text-white">
        <nav>
            <ul class="nav nav-tabs" id="data_ul">
            </ul>
        </nav>
        <div class="tab-content" id="detail" name="abc">

        </div>
        <script>
        	
            var title = document.getElementById('title').textContent;
            console.log(title);
            var data_ul = document.getElementById("data_ul");
            var detail_data = document.getElementById("detail");
            $.getJSON('<c:url value="/assets/user/upload/data-new.json"/>', function(json) {
                console.log(json); // this will show the info it in firebug console
                var idx = 0;
                function format_date(x) {
                	let date = new Date("1899-12-30");
        			date.setDate(date.getDate() + x);
        			if(x=="x" || x==""){
        				return "x";
        			}else if(typeof x === 'undefined'){
        				return "";
        			}
        			else{
        				return date.toLocaleDateString();
        			}
        			
				}
                json.forEach((item) => {
                	
                    if (item["Khách hàng"] == title) {
                    	/* console.log(item["Khách hàng"]); */
                    	/* console.log(item);  */
                    	console.log(item["Khách hàng"]);
                        idx++;
                        let row1 = '<li class="nav-item">'+
             			'<a class="nav-link" href="#'+idx +'" onclick="return class_fade('+idx+')">'+item['Dự án/Gói thầu']+'</a>'
                		+'</li>';
                        data_ul.innerHTML += row1;
                		let row2="";
                        if (idx == 1) {
                           
                            	row2 +='<div id="'+idx+'" class="container tab-pane active" name="abc"><br>'
                                   +'<div>' 
                                        +'<p>Người phụ trách: '+item["PIC"]+'</p>'
                                        +'<p>Tên dự án: '+item["Dự án/Gói thầu"]+'</p>'
                                        +'<p>Phạm vi cung cấp: '+item["Phạm vi cung cấp"]+'</p>'
                                        +'<p>Tổng giá trị: '+item["Tổng giá trị"]+'</p>'
                                        +'<p>Mức độ ưu tiên: '+item["Priority"]+'</p>'
                                        
                                    +'</div>'
                                    +'<div class="table-responsive">'
                                         +'<table class="table table-bordered table-dark">'
                                            +'<thead>'
                                                +'<tr>'
                                                    +'<th colspan="3">Kế hoạch nghiệm thu</th>'
                                                    +'<th colspan="2">Thanh toán tạm ứng</th>'
                                                    +'<th colspan="2">Thanh toán DAC</th>'
                                                    +'<th colspan="2">Thanh toán PAC</th>'
                                                    +'<th colspan="2">Thanh toán FAC</th>'
                                                +'</tr>'
                                                +'<tr>'
                                                    +'<th>DAC</th>'
                                                    +'<th>PAC</th>'
                                                    +'<th>FAC</th>'
                                                    +'<th>Số tiền</th>'
                                                    +'<th>Kế hoạch</th>'
                                                    +'<th>Số tiền</th>'
                                                    +'<th>Kế hoạch</th>'
                                                    +'<th>Số tiền</th>'
                                                    +'<th>Kế hoạch</th>'
                                                    +'<th>Số tiền</th>'
                                                    +'<th>Kế hoạch</th>'
                                                    +'</tr>'
                                            +'</thead>'
                                            +'<tbody>'
                                                +'<td>'+format_date(item["DAC"])+'</td>'
                                                +'<td>'+format_date(item["PAC"])+'</td>'
                                                +'<td>'+format_date(item["FAC"])+'</td>'
                                                +'<!--Kế hoạch nghiệm thu -->'
                                                +'<td>'+item["Số tiền thanh toán tạm ưng"]+'</td>'
                                                +'<td>'+format_date(item["Kế hoạch tạm ứng"])+'</td>'
                                               
                                                <!-- Thanh toán tạm ứng -->
                                                +'<td>'+item["Số tiền thanh toán DAC"]+'</td>'
                                                +'<td>'+format_date(item["Kế hoạch Thanh toán DAC"])+'</td>'
                                                
                                                <!-- Thanh toán DAC -->
                                                +'<td>'+item["Số tiền Thanh toán PAC"]+'</td>'
                                                +'<td>'+format_date(item["Kế hoạch Thanh toán PAC"])+'</td>'
                                                
                                                <!-- Thanh toán PAC -->
                                                +'<td>'+item["Số tiền Thanh toán FAC"]+'</td>'
                                                +'<td>'+format_date(item["Kế hoạch Thanh toán FAC"])+'</td>'
                                                
                                                <!-- Thanh toán FAC -->
                                            +'</tbody>'
                                        +'</table>' 
                                    +'</div>'
                                    +'<div class="d-flex">'
                                        +'<div style="width: 70%;">'
                                            +'<p>Tình trạng:</p>'
                                            +'<p> '+item["Tình trạng"]+'</p>'
                                        +'</div>'
                                        +'<div class="pl-5">'
                                            +'<p>Kết quả thực hiện kế hoạch:</p>'
                                            +'<p> '+item["Kết quả thực hiện kế hoạch"]+'</p>'
                                        +'</div>'
                                    +'</div>'
                                +'</div>'
                                ;

                        } else {
                            row2 += '<div id="'+idx+'" class="container tab-pane fade" name="abc"><br>'
                                +'<div>' 
                                +'<p>Người phụ trách: '+item["PIC"]+'</p>'
                                +'<p>Tên dự án: '+item["Dự án/Gói thầu"]+'</p>'
                                +'<p>Phạm vi cung cấp: '+item["Phạm vi cung cấp"]+'</p>'
                                +'<p>Tổng giá trị: '+item["Tổng giá trị"]+'</p>'
                                +'<p>Mức độ ưu tiên: '+item["Priority"]+'</p>'
                                
                            +'</div>'
                            +'<div class="table-responsive">'
                                 +'<table class="table table-bordered table-dark">'
                                    +'<thead>'
                                        +'<tr>'
                                            +'<th colspan="3">Kế hoạch nghiệm thu</th>'
                                            +'<th colspan="2">Thanh toán tạm ứng</th>'
                                            +'<th colspan="2">Thanh toán DAC</th>'
                                            +'<th colspan="2">Thanh toán PAC</th>'
                                            +'<th colspan="2">Thanh toán FAC</th>'
                                        +'</tr>'
                                        +'<tr>'
                                            +'<th>DAC</th>'
                                            +'<th>PAC</th>'
                                            +'<th>FAC</th>'
                                            +'<th>Số tiền</th>'
                                            +'<th>Kế hoạch</th>'
                                            +'<th>Số tiền</th>'
                                            +'<th>Kế hoạch</th>'
                                            +'<th>Số tiền</th>'
                                            +'<th>Kế hoạch</th>'
                                            +'<th>Số tiền</th>'
                                            +'<th>Kế hoạch</th>'
                                            +'</tr>'
                                    +'</thead>'
                                    +'<tbody>'
                                        +'<td>'+format_date(item["DAC"])+'</td>'
                                        +'<td>'+format_date(item["PAC"])+'</td>'
                                        +'<td>'+format_date(item["FAC"])+'</td>'
                                        +'<!--Kế hoạch nghiệm thu -->'
                                        +'<td>'+item["Số tiền thanh toán tạm ưng"]+'</td>'
                                        +'<td>'+format_date(item["Kế hoạch tạm ứng"])+'</td>'
                                       
                                        <!-- Thanh toán tạm ứng -->
                                        +'<td>'+item["Số tiền thanh toán DAC"]+'</td>'
                                        +'<td>'+format_date(item["Kế hoạch Thanh toán DAC"])+'</td>'
                                        
                                        <!-- Thanh toán DAC -->
                                        +'<td>'+item["Số tiền Thanh toán PAC"]+'</td>'
                                        +'<td>'+format_date(item["Kế hoạch Thanh toán PAC"])+'</td>'
                                        
                                        <!-- Thanh toán PAC -->
                                        +'<td>'+item["Số tiền Thanh toán FAC"]+'</td>'
                                        +'<td>'+format_date(item["Kế hoạch Thanh toán FAC"])+'</td>'
                                        
                                        <!-- Thanh toán FAC -->
                                    +'</tbody>'
                                +'</table>' 
                            +'</div>'
                            +'<div class="d-flex">'
                                +'<div style="width: 70%;">'
                                    +'<p>Tình trạng:</p>'
                                    +'<p> '+item["Tình trạng"]+'</p>'
                                +'</div>'
                                +'<div class="pl-5">'
                                    +'<p>Kết quả thực hiện kế hoạch:</p>'
                                    +'<p> '+item["Kết quả thực hiện kế hoạch"]+'</p>'
                                +'</div>'
                            +'</div>'
                        +'</div>';

                        }
                        detail_data.innerHTML += row2;                                     
                    }

                })
            });
        </script>
    </div>
    <script>
        function class_fade(id) {
            var element = document.getElementById(id);
			console.log(element);
            var element_2 = document.getElementsByName("abc");

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
<script>
	$(document).ready(function() {
		$(".nav-tabs a ").click(function() {
			$(this).tab('show');
		});
		// $('.nav-tabs a').on('shown.bs.tab', function(event) {
		//     var x = $(event.target).text(); // active tab
		//     var y = $(event.relatedTarget).text(); // previous tab
		//     $(".act span ").text(x);
		//     $(".prev span ").text(y);
		// });
	});
</script>
