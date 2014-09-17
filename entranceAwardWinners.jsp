<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" session="true"%>
<%@ page errorPage="ShowError.jsp" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Awards</title>
<link href="more.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
var myArray = new Array();
var loc = -1;
var insertflag1;

var upstatus;
function successCallback(){
  	var name = '<%= session.getAttribute( "award" ) %>';
	var details = '<%= session.getAttribute( "details" ) %>';
	
	var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		
		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		loc = -1;
		
 		for (var i = 0; i < 3 ; i++) {
					var num = i + 1;
					var n = num.toString(); 
					
					var name = "name".concat(n);
					document.getElementById(name).value = "";
					
					var sssn = "detail".concat(n);
					document.getElementById(sssn).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
		}
										
		for (var i = 0; i < fields.length ; i++) {
					if(i >= 3) {
						loc = loc + 1;
					
							document.getElementById("name1").value = fields[i-2];
							document.getElementById("detail1").value = fields2[i-2];
							document.getElementById("pos1").value = i-2;

							document.getElementById("name2").value = fields[i-1];
							document.getElementById("detail2").value = fields2[i-1];
							document.getElementById("pos2").value = i-1;

							document.getElementById("name3").value = fields[i];
							document.getElementById("detail3").value = fields2[i];
							document.getElementById("pos3").value = i;
					}
					else{
						
							loc = loc + 1;
							var num = i + 1;
							var n = num.toString(); 
							
							var name = "name".concat(n);
							document.getElementById(name).value = fields[i];
							
							var sssn = "detail".concat(n);
							document.getElementById(sssn).value = fields2[i];
					
							var pos = "pos".concat(n);
							document.getElementById(pos).value = i;
							alert(pos);
					}
					
				}
				
}

function scrollDown()
{	
		var scrollstatus = document.getElementById("pos1").value;
		
		var name = '<%= session.getAttribute( "award" ) %>';
		var details = '<%= session.getAttribute( "details" ) %>';
	
		var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		

		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		loc = -1;
		
	if(fields.length < 3 || (parseInt(parseInt(scrollstatus) + 3))== fields.length){
			alert("Cannot scroll down");
	}else {
 		for (var i = 0; i < 3 ; i++) {
					var num = i + 1;
					var n = num.toString(); 
					
					var name = "name".concat(n);
					document.getElementById(name).value = "";
					
					var sssn = "detail".concat(n);
					document.getElementById(sssn).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
		}
	
		var i = parseInt(parseInt(scrollstatus));
							
							document.getElementById("name1").value = fields[i+1];
							document.getElementById("detail1").value = fields2[i+1];
							document.getElementById("pos1").value = i+1;

							document.getElementById("name2").value = fields[i+2];
							document.getElementById("detail2").value = fields2[i+2];
							document.getElementById("pos2").value = i+2;

							document.getElementById("name3").value = fields[i+3];
							document.getElementById("detail3").value = fields2[i+3];
							document.getElementById("pos3").value = i+3;					
		}
}

function scrollUp()
{
		var scrollstatus = document.getElementById("pos3").value;
		var name = '<%= session.getAttribute( "award" ) %>';
		var details = '<%= session.getAttribute( "details" ) %>';
	
		var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		

		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		loc = -1;
		
		if(fields.length < 3 || (parseInt(parseInt(scrollstatus) - 3)) < 0){
				alert("Cannot scroll up");
		}else {
	 		for (var i = 0; i < 3 ; i++) {
					var num = i + 1;
					var n = num.toString(); 
					
					var name = "name".concat(n);
					document.getElementById(name).value = "";
					
					var sssn = "detail".concat(n);
					document.getElementById(sssn).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
		}
	
		var i = parseInt(parseInt(scrollstatus));
							document.getElementById("name1").value = fields[i-3];
							document.getElementById("detail1").value = fields2[i-3];
							document.getElementById("pos1").value = i-3;

							document.getElementById("name2").value = fields[i-2];
							document.getElementById("detail2").value = fields2[i-2];
							document.getElementById("pos2").value = i-2;

							document.getElementById("name3").value = fields[i-1];
							document.getElementById("detail3").value = fields2[i-1];
							document.getElementById("pos3").value = i-1;
						
		}
}

</script>
</head>
<body  onload="successCallback()">
		<h1>Welcome to Award Form : AWARD DETAILS THAT ARE WAITING</h1>
		<h4>Click Button will be visible in fornt of that row, click the button to Change the Award</h4>
		
			<form name="myForm"  method="POST" action="entranceAwardWinners">
				<table width="page">
					<tr>
						<td align="center">Award</td>
						<td align="center">Details</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub1" value="Select1"></td>
						<td><input id="name1" type="text" name="name1" readonly></td>
						<td><input id="detail1" type="text" name="detail" readonly></td>
						<td><input type="button" name="up" value="Scroll Up" onClick="scrollUp()"></td>
						<td><input id="pos1" type="hidden" readonly></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub2" value="Select2"></td>
						<td><input id="name2" type="text" name="name2" readonly></td>
						<td><input id="detail2" type="text" name="detail" readonly></td>
						<td><input id="pos2" type="hidden" readonly></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub3" value="Select3"></td>
						<td><input id="name3" type="text" name="name3" readonly></td>
						<td><input id="detail3" type="text" name="detail" readonly></td>
						<td><input type="button" name="down" value="Scroll Down" onClick="scrollDown()"></td>
						<td><input id="pos3" type="hidden" readonly></td>
					</tr>
				</table>
			</form>
</body>
</html>