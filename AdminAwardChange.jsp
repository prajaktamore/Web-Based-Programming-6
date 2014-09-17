<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" session="true"%>
<%@ page errorPage="ShowError.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Award</title>
<link href="more.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">

function checkDate(varBirthDate) {

            var month = varBirthDate.substring(0, 2);
            var date = varBirthDate.substring(3, 5);
            var year = varBirthDate.substring(6, 10);

			if(parseInt(month) < 1 || parseInt(month) > 12){
			return false;
			}else if(parseInt(date) < 1 || parseInt(date) > 31){
			return false;
			}else if(parseInt(year) < 1900 || parseInt(year) > 2014){
			return false;
			}
			
            var myDate = new Date(year, month - 1, date);

            var today = new Date();
			
			
            if (myDate > today) {
                return false;
            }
            else {
                return true;
            }
}

function checktwoDate(vartoolcountDate,vartoolcountDate1) {
            var month = vartoolcountDate.substring(0, 2);
            var date = vartoolcountDate.substring(3, 5);
            var year = vartoolcountDate.substring(6, 10);
            var myDate = new Date(year, month - 1, date);
            
            var month1 = vartoolcountDate1.substring(0, 2);
            var date1 = vartoolcountDate1.substring(3, 5);
            var year1 = vartoolcountDate1.substring(6, 10);
            var myDate1 = new Date(year1, month1 - 1, date1);
            
            if (myDate > myDate1) {
                return false;
            }
            else {
                return true;
            }
}
function validateform1() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r1").value) && checkDate(document.getElementById("r1").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r1").select();
			document.getElementById("r1").focus();
			return false;
		}
		
		document.getElementById('dlr1').style.visibility='visible';
   		document.getElementById('dr1').style.visibility='visible';
}

function validateformd1() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("dr1").value) && checkDate(document.getElementById("dr1").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("dr1").select();
			document.getElementById("dr1").focus();
			return false;
		}
		if(!checktwoDate(document.getElementById("r1").value,document.getElementById("dr1").value)){
			alert("Start Date Should Be less than End Date");
			document.getElementById("dr1").select();
			document.getElementById("dr1").focus();
			return false;
		}
		document.getElementById('Search').style.visibility='visible';
}


function validateform9() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r9").value) && checkDate(document.getElementById("r9").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r9").select();
			document.getElementById("r9").focus();
			return false;
		}
		document.getElementById('dlr9').style.visibility='visible';
		document.getElementById('dr9').style.visibility='visible';
}
function validateformd9() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("dr9").value) && checkDate(document.getElementById("dr9").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("dr9").select();
			document.getElementById("dr9").focus();
			return false;
		}
		if(!checktwoDate(document.getElementById("r1").value,document.getElementById("dr9").value)){
			alert("Start Date Should Be less than End Date");
			document.getElementById("dr9").select();
			document.getElementById("dr9").focus();
			return false;
		}
		document.getElementById('Search').style.visibility='visible';
}
function validateform6() {
				re = /^\d+$/; 
				if(!re.test(document.getElementById("r6").value))
				{ 
					alert("Error: password must contain at least one number (0-9)!"); 
					document.getElementById("r6").select();
					document.getElementById("r6").focus();
					return false; 
				} 
				document.getElementById('Search').style.visibility='visible';
}
function validateform7() {
				re = /^\d+$/; 
				if(!re.test(document.getElementById("r7").value))
				{ 
					alert("Error: password must contain at least one number (0-9)!"); 
					document.getElementById("r7").select();
					document.getElementById("r7").focus();
					return false; 
				} 
				document.getElementById('Search').style.visibility='visible';
}
function  validateform8(){
	var index = document.getElementById("r8").selectedIndex;
	if(index > 0){
		document.getElementById('Search').style.visibility='visible';
	}
}

function validateform10() {
				re = /^\d+$/; 
				if(!re.test(document.getElementById("r10").value) && (document.getElementById("r10").value < 1) && (document.getElementById("r10").value > 100))
				{ 
					alert("Error: password must contain at least one number (0-9)! and min 1, max 100"); 
					document.getElementById("r10").select();
					document.getElementById("r10").focus();
					return false; 
				} 
				document.getElementById('Search').style.visibility='visible';
}

function validateform2() {
			var varCity = /^[a-zA-Z]*$/;
			if(!(varCity.test(document.getElementById("r2").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r2").select();
				document.getElementById("r2").focus();
				return false;
			}
			document.getElementById('Search').style.visibility='visible';
}

function validateform3() {
			var varCity = /^[a-zA-Z\s]*$/;
			if(!(varCity.test(document.getElementById("r3").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r3").select();
				document.getElementById("r3").focus();
				return false;
			}
			document.getElementById('Search').style.visibility='visible';
}

function validateform4() {
			var varCity = /^[a-zA-Z\s]*$/;
			if(!(varCity.test(document.getElementById("r4").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r4").select();
				document.getElementById("r4").focus();
				return false;
			}
			document.getElementById('Search').style.visibility='visible';
}
function validateform5() {
			var varCity = /^[a-zA-Z\s]*$/;
			if(!(varCity.test(document.getElementById("r5").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r5").select();
				document.getElementById("r5").focus();
				return false;
			}
			document.getElementById('Search').style.visibility='visible';
}
 function changeTest() {
   	 	
	var index = document.getElementById("rdown").selectedIndex;
	document.getElementById("r8").selectedIndex = 0;
	
		 if(parseInt(index) == 1){
       		document.getElementById('lr1').style.visibility='visible';
    		document.getElementById('r1').style.visibility='visible';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
    		
       	}else  if(parseInt(index) == 2){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='visible';
    		document.getElementById('r2').style.visibility='visible';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 3){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='visible';
    		document.getElementById('r3').style.visibility='visible';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 4){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='visible';
    		document.getElementById('r4').style.visibility='visible';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 5){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='visible';
    		document.getElementById('r5').style.visibility='visible';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 6){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='visible';
    		document.getElementById('r6').style.visibility='visible';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 7){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='visible';
    		document.getElementById('r7').style.visibility='visible';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 8){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='visible';
    		document.getElementById('r8').style.visibility='visible';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 9){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='visible';
    		document.getElementById('r9').style.visibility='visible';
    		document.getElementById('lr10').style.visibility='hidden';
    		document.getElementById('r10').style.visibility='hidden';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 10){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr8').style.visibility='hidden';
    		document.getElementById('r8').style.visibility='hidden';
    		document.getElementById('lr9').style.visibility='hidden';
    		document.getElementById('r9').style.visibility='hidden';
    		document.getElementById('lr10').style.visibility='visible';
    		document.getElementById('r10').style.visibility='visible';
    		document.getElementById('dlr1').style.visibility='hidden';
    		document.getElementById('dr1').style.visibility='hidden';
    		document.getElementById('dlr9').style.visibility='hidden';
    		document.getElementById('dr9').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}
 }


</script>
</head>
<body>	
<h1>Welcome to YEA! Program</h1>
<h1>Search Award : Select from drop down you type of Search... Follow Instruction and Enter Data Accordingly.. Finally Click Search Button Below </h1>


<form method="POST" action="AdminAwardChange">
<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >


  <table width="page" align="center" >
  			<tr>
 						
 						 <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Select Report Search</label> </td>
 					    <td>
 					    <select name="rdown" id="rdown" onchange="changeTest()">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="SubmitDate">Submit Date(From/To)</option>
					        <option value="SubmitterSerial">Submitter Serial</option>
					        <option value="SubmitterLastName">Submitter Last Name</option>
					        <option value="RecipientSerial">Recipient Serial</option>
					        <option value="RecipientLastName">Recipient Last Name</option>
					        <option value="SubmitterDepartment">Submitter Department</option>
					        <option value="RecipientDepartment">Recipient Department</option>
					        <option value="SubmitterSerial">Award Selection</option>
					        <option value="DateAward">Date Award was chosen</option>
					        <option value="Numberofresults">No of results(min 1, max 100)</option>   
					    </select> 
					    </td>  
    		</tr>
			<tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submit Date From</label> </td>
             		 <td align="center"> <input id="r1" name="r1" onchange="validateform1()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="dlr1" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submit Date To</label> </td>
             		 <td align="center"> <input id="dr1" name="dr1" onchange="validateformd1()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr2" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submitter Serial</label> </td>
             		 <td align="center"> <input id="r2" name="r2" onchange="validateform2()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr3" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submitter Last Name</label> </td>
             		 <td align="center"> <input id="r3" name="r3" onchange="validateform3()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr4" style="color:#ffffff;font-size:24px;visibility:hidden;" >Recipient Serial</label> </td>
             		 <td align="center"> <input id="r4" name="r4" onchange="validateform4()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr5" style="color:#ffffff;font-size:24px;visibility:hidden;" >Recipient Last Name</label> </td>
             		 <td align="center"> <input id="r5" name="r5" onchange="validateform5()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr6" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submitter Department</label> </td>
             		 <td align="center"> <input id="r6" name="r6" onchange="validateform6()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr7" style="color:#ffffff;font-size:24px;visibility:hidden;" >Recipient Department</label> </td>
             		 <td align="center"> <input id="r7" name="r7" onchange="validateform7()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr8" style="color:#ffffff;font-size:24px;visibility:hidden;" >Award Selection</label> </td>
					 
					 
					 <td>
 					    <select name="r8" id="r8" onchange="validateform8()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.aawardname}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>   
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr9" style="color:#ffffff;font-size:24px;visibility:hidden;" >Date Awarded From</label> </td>
             		 <td align="center"> <input id="r9" name="r9" onchange="validateform9()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			 <tr>
					 <td height="40" align="center"> <label id="dlr9" style="color:#ffffff;font-size:24px;visibility:hidden;" >Date Awarded From</label> </td>
             		 <td align="center"> <input id="dr9" name="dr9" onchange="validateformd9()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr10" style="color:#ffffff;font-size:24px;visibility:hidden;" >No of results(min 1, max 100)</label> </td>
             		 <td align="center"> <input id="r10" name="r10" onchange="validateform10()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			
  			<tr>
						<td align="center"><input type="submit" name="Search" id="Search" value="Search" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
			</tr>	  
 </table>
 </form>
</body>
</html>