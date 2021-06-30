$(document).ready(function(){
	
	let params = (new URL(document.location)).searchParams;

     /*Active menu báo cáo 1 theo khách hàng*/

	var kh_s1_id = params.get("kh_s1_id");
	
	if (kh_s1_id) {
		var sheet1_id ="sheet1-"+kh_s1_id; 
		var target3 = document.getElementById(sheet1_id);
		target3.classList.add("active");
		target3.parentElement.parentElement.parentElement.classList.add("menu-open");
		target3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
	}
	
	/*Active menu báo cáo 2 theo khách hàng*/
    
	var kh_s2_id = params.get("kh_s2_id");
	
	if (kh_s2_id) {
		var sheet2_id ="sheet2-"+kh_s2_id; 
		
		var target_s2 = document.getElementById(sheet2_id);
	
		target_s2.classList.add("active");
		target_s2.parentElement.parentElement.parentElement.classList.add("menu-open");
		target_s2.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
	}
	
	/*Active menu báo cáo 3 theo khách hàng */
	
	var kh_s3_id = params.get("kh_s3_id");
	
	if (kh_s3_id) {
		var sheet3_id ="sheet3-"+kh_s3_id; 
		
		var target_s3 = document.getElementById(sheet3_id);
	
		target_s3.classList.add("active");
		target_s3.parentElement.parentElement.parentElement.classList.add("menu-open");
		target_s3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
	}
	
    /*Active danh sách project theo người phụ trách báo cáo 1*/
  	
  	var id_p1 = parseInt(params.get("id_p1"));
  	if(id_p1){
  		var project1_id = "project1-"+id_p1;
  		var target_p1 = document.getElementById(project1_id);
  		
  		target_p1.classList.add("active");
  		target_p1.parentElement.parentElement.parentElement.classList.add("menu-open");
  		target_p1.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
  	}


/*Active danh sách project theo người phụ trách báo cáo 2*/
  	
  	var id_p2 = parseInt(params.get("id_p2"));
  	if(id_p2){
  		var project2_id = "project2-"+id_p2;
  		var target_p2 = document.getElementById(project2_id);
  		target_p2.classList.add("active");
  		target_p2.parentElement.parentElement.parentElement.classList.add("menu-open");
  		target_p2.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
  	}

/*Active danh sách project theo người phụ trách báo cáo 2*/
  	
  	var id_p3 = parseInt(params.get("id_p3"));
  	if(id_p3){
  		var project3_id = "project3-"+id_p3;
  		var target_p3 = document.getElementById(project3_id);
  		target_p3.classList.add("active");
  		target_p3.parentElement.parentElement.parentElement.classList.add("menu-open");
  		target_p3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
  	}
    /*$(function () {
	  	$('[data-toggle="tooltip"]').tooltip()
	})*/
});



 function format(value){ 
	if(value == 'x' ||value =="null" || value =="" || typeof value === 'undefined'){
		return " ";
	}else{
	return value;
     }		
}


function format_date(x) {
	 
 	let date = new Date("1899-12-30");
	date.setDate(date.getDate() + x);
	if(x=="x" || x==""){
		return "";
	}else if(typeof x === 'undefined'){
		return "";
	}
	else if(typeof x === 'string') {
		return x;
	}
	else {
		
		return date.toLocaleDateString();
	}
}