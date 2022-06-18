$(function(){
	var year = document.getElementById("year");
	    var month = document.getElementById("month");
	    var day = document.getElementById("day");
	
	    var time = new Date();
	    year_now = time.getFullYear();
	
	    for(var i = year_now - 100; i < year_now + 100; i++) {
	        year.innerHTML += "<option>" + i + "</option>"
	    }
	    for(var i = 1; i < 13; i++) {
	        month.innerHTML += "<option>" + i + "</option>";
	    }
	
	    function days(max) {
	        day.innerHTML = "";
	        for(var i = 1; i <= max; i++) {
	            day.innerHTML += "<option value='"+i+"'>" + i + "</option>";
	        }
	    }
	    
	    year.onchange = function(){
	        if( month.selectedOptions[0].innerHTML==1   ||
	            month.selectedOptions[0].innerHTML==3   ||
	            month.selectedOptions[0].innerHTML==5   ||
	            month.selectedOptions[0].innerHTML==7   ||
	            month.selectedOptions[0].innerHTML==8   ||
	            month.selectedOptions[0].innerHTML==10  ||
	            month.selectedOptions[0].innerHTML==12 
	        ){
	            days(31);
	        }else if(
	            month.selectedOptions[0].innerHTML==4   ||
	            month.selectedOptions[0].innerHTML==6   ||
	            month.selectedOptions[0].innerHTML==9   ||
	            month.selectedOptions[0].innerHTML==11  
	        ){
	            days(30);
	        }else{
	            var year_selected = year.selectedOptions[0].innerHTML;
	            if((year_selected%4==0&&year_selected%100!=0)||year_selected%400==0){
	                days(29);
	            }else{
	                days(28);
	            }
	        }
	    }
	    month.onchange = function(){
	        if( month.selectedOptions[0].innerHTML==1   ||
	            month.selectedOptions[0].innerHTML==3   ||
	            month.selectedOptions[0].innerHTML==5   ||
	            month.selectedOptions[0].innerHTML==7   ||
	            month.selectedOptions[0].innerHTML==8   ||
	            month.selectedOptions[0].innerHTML==10  ||
	            month.selectedOptions[0].innerHTML==12 
	        ){
	            days(31);
	        }else if(
	            month.selectedOptions[0].innerHTML==4   ||
	            month.selectedOptions[0].innerHTML==6   ||
	            month.selectedOptions[0].innerHTML==9   ||
	            month.selectedOptions[0].innerHTML==11  
	        ){
	            days(30);
	        }else{
	            var year_selected = year.selectedOptions[0].innerHTML;
	            if((year_selected%4==0&&year_selected%100!=0)||year_selected%400==0){
	                days(29);
	            }else{
	                days(28);
	            }
	        }
	    }
});