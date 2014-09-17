<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,java.sql.Statement,java.sql.ResultSet" session="true"%>
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

function  validateform1(){
	var index = document.getElementById("approve1").selectedIndex;
	if(index == 1){
		document.getElementById('sub1').style.visibility='visible';
	}else if(index == 2){
		var r=confirm("Confirmation : Are you sure you want to delete click ok and click Delete Button");
		if (r==true)
		  {
		  	document.getElementById('sub1').style.visibility='visible';
		  }
		else
		  {
		  	alert("You have cancelled Deletion");
		  } 
	}
}

function  validateform2(){
	var index = document.getElementById("approve2").selectedIndex;
	if(index == 1){
		document.getElementById('sub2').style.visibility='visible';
	}else if(index == 2){
		var r=confirm("Confirmation : Are you sure you want to delete click ok and click Delete Button");
		if (r==true)
		  {
		  	document.getElementById('sub2').style.visibility='visible';
		  }
		else
		  {
		  	alert("You have cancelled Deletion");
		  } 
	}
}

function  validateform3(){
	var index = document.getElementById("approve3").selectedIndex;
	if(index == 1){
		document.getElementById('sub3').style.visibility='visible';
	}else if(index == 2){
		var r=confirm("Confirmation : Are you sure you want to delete click ok and click Delete Button");
		if (r==true)
		  {
		  	document.getElementById('sub3').style.visibility='visible';
		  }
		else
		  {
		  	alert("You have cancelled Deletion");
		  } 
	}
}
function successCallback(){
   	var name = '<%= session.getAttribute( "suidApprove" ) %>';
	var details = '<%= session.getAttribute( "ruidApprove" ) %>';
	var name1 = '<%= session.getAttribute( "sdeptApprove" ) %>';
	var details1 = '<%= session.getAttribute( "rdeptApprove" ) %>';
	var name2 = '<%= session.getAttribute( "awardApprove" ) %>';
	var details2 = '<%= session.getAttribute( "smailApprove" ) %>';
	var name3 = '<%= session.getAttribute( "rmailApprove" ) %>';
		var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		
		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		var array1Token1 = name1.toString();
		array1Token1 = array1Token1.slice(1, array1Token1.length-1); 
		var fields3 = array1Token1.split(/,/);
		
		var array2Token2 = details1.toString();
		array2Token2 = array2Token2.slice(1, array2Token2.length-1); 
		var fields4 = array2Token2.split(/,/);
		
		var array1Token3 = name2.toString();
		array1Token3 = array1Token3.slice(1, array1Token3.length-1); 
		var fields5 = array1Token3.split(/,/);
		
		var array2Token4 = details2.toString();
		array2Token4 = array2Token4.slice(1, array2Token4.length-1); 
		var fields6 = array2Token4.split(/,/);
		
		var array1Token5 = name3.toString();
		array1Token5 = array1Token5.slice(1, array1Token5.length-1); 
		var fields7 = array1Token5.split(/,/);
		loc = -1;
		
 		for (var i = 0; i < 3 ; i++) {
					var num = i + 1;
					var n = num.toString(); 
					
					var name = "name".concat(n);
					document.getElementById(name).value = "";
					
					var sssn = "detail".concat(n);
					document.getElementById(sssn).value = "";
					
					var sdept = "sdept".concat(n);
					document.getElementById(sdept).value = "";
					
					var rdept = "rdept".concat(n);
					document.getElementById(rdept).value = "";
					
					var award = "award".concat(n);
					document.getElementById(award).value = "";
					
					var smail = "smail".concat(n);
					document.getElementById(smail).value = "";
					
					var rmail = "rmail".concat(n);
					document.getElementById(rmail).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
		}
										
		for (var i = 0; i < fields.length ; i++) {
					if(i >= 3) {
						loc = loc + 1;
					
							document.getElementById("name1").value = fields[i-2];
							document.getElementById("detail1").value = fields2[i-2];
							document.getElementById("sdept1").value = fields3[i-2];
							document.getElementById("rdept1").value = fields4[i-2];
							document.getElementById("award1").value = fields5[i-2];
							document.getElementById("smail1").value = fields6[i-2];
							document.getElementById("rmail1").value = fields7[i-2];
							document.getElementById("pos1").value = i-2;
							
							document.getElementById("name2").value = fields[i-1];
							document.getElementById("detail2").value = fields2[i-1];
							document.getElementById("sdept2").value = fields3[i-1];
							document.getElementById("rdept2").value = fields4[i-1];
							document.getElementById("award2").value = fields5[i-1];
							document.getElementById("smail2").value = fields6[i-1];
							document.getElementById("rmail2").value = fields7[i-1];
							document.getElementById("pos2").value = i-1;

							document.getElementById("name3").value = fields[i];
							document.getElementById("detail3").value = fields2[i];
							document.getElementById("sdept3").value = fields3[i];
							document.getElementById("rdept3").value = fields4[i];
							document.getElementById("award3").value = fields5[i];
							document.getElementById("smail3").value = fields6[i];
							document.getElementById("rmail3").value = fields7[i];
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
							
							var sdept = "sdept".concat(n);
					document.getElementById(sdept).value = fields3[i];
					
					var rdept = "rdept".concat(n);
					document.getElementById(rdept).value = fields4[i];
					
					var award = "award".concat(n);
					document.getElementById(award).value = fields5[i];
					
					var smail = "smail".concat(n);
					document.getElementById(smail).value =fields6[i];
					
					var rmail = "rmail".concat(n);
					document.getElementById(rmail).value = fields7[i];
					
							var pos = "pos".concat(n);
							document.getElementById(pos).value = i;
						
					}
					
				}
				
}

function scrollDown()
{	
		var scrollstatus = document.getElementById("pos1").value;
		
		var name = '<%= session.getAttribute( "suidApprove" ) %>';
	var details = '<%= session.getAttribute( "ruidApprove" ) %>';
	var name1 = '<%= session.getAttribute( "sdeptApprove" ) %>';
	var details1 = '<%= session.getAttribute( "rdeptApprove" ) %>';
	var name2 = '<%= session.getAttribute( "awardApprove" ) %>';
	var details2 = '<%= session.getAttribute( "smailApprove" ) %>';
	var name3 = '<%= session.getAttribute( "rmailApprove" ) %>';
		var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		
		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		var array1Token1 = name1.toString();
		array1Token1 = array1Token1.slice(1, array1Token1.length-1); 
		var fields3 = array1Token1.split(/,/);
		
		var array2Token2 = details1.toString();
		array2Token2 = array2Token2.slice(1, array2Token2.length-1); 
		var fields4 = array2Token2.split(/,/);
		
		var array1Token3 = name2.toString();
		array1Token3 = array1Token3.slice(1, array1Token3.length-1); 
		var fields5 = array1Token3.split(/,/);
		
		var array2Token4 = details2.toString();
		array2Token4 = array2Token4.slice(1, array2Token4.length-1); 
		var fields6 = array2Token4.split(/,/);
		
		var array1Token5 = name3.toString();
		array1Token5 = array1Token5.slice(1, array1Token5.length-1); 
		var fields7 = array1Token5.split(/,/);	
		
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
					
					var sdept = "sdept".concat(n);
					document.getElementById(sdept).value = "";
					
					var rdept = "rdept".concat(n);
					document.getElementById(rdept).value = "";
					
					var award = "award".concat(n);
					document.getElementById(award).value = "";
					
					var smail = "smail".concat(n);
					document.getElementById(smail).value = "";
					
					var rmail = "rmail".concat(n);
					document.getElementById(rmail).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
		}
	
		var i = parseInt(parseInt(scrollstatus));
							
							document.getElementById("name1").value = fields[i+1];
							document.getElementById("detail1").value = fields2[i+1];
							document.getElementById("sdept1").value = fields3[i+1];
							document.getElementById("rdept1").value = fields4[i+1];
							document.getElementById("award1").value = fields5[i+1];
							document.getElementById("smail1").value = fields6[i+1];
							document.getElementById("rmail1").value = fields7[i+1];
							document.getElementById("pos1").value = i+1;

							document.getElementById("name2").value = fields[i+2];
							document.getElementById("detail2").value = fields2[i+2];
							document.getElementById("sdept2").value = fields3[i+2];
							document.getElementById("rdept2").value = fields4[i+2];
							document.getElementById("award2").value = fields5[i+2];
							document.getElementById("smail2").value = fields6[i+2];
							document.getElementById("rmail2").value = fields7[i+2];
							document.getElementById("pos2").value = i+2;

							document.getElementById("name3").value = fields[i+3];
							document.getElementById("detail3").value = fields2[i+3];
							document.getElementById("sdept3").value = fields3[i+3];
							document.getElementById("rdept3").value = fields4[i+3];
							document.getElementById("award3").value = fields5[i+3];
							document.getElementById("smail3").value = fields6[i+3];
							document.getElementById("rmail3").value = fields7[i+3];
							document.getElementById("pos3").value = i+3;					
		}
}

function scrollUp()
{
		var scrollstatus = document.getElementById("pos3").value;
	
	var name = '<%= session.getAttribute( "suidApprove" ) %>';
	var details = '<%= session.getAttribute( "ruidApprove" ) %>';
	var name1 = '<%= session.getAttribute( "sdeptApprove" ) %>';
	var details1 = '<%= session.getAttribute( "rdeptApprove" ) %>';
	var name2 = '<%= session.getAttribute( "awardApprove" ) %>';
	var details2 = '<%= session.getAttribute( "smailApprove" ) %>';
	var name3 = '<%= session.getAttribute( "rmailApprove" ) %>';
		var array1Token = name.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		
		var array2Token = details.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		var array1Token1 = name1.toString();
		array1Token1 = array1Token1.slice(1, array1Token1.length-1); 
		var fields3 = array1Token1.split(/,/);
		
		var array2Token2 = details1.toString();
		array2Token2 = array2Token2.slice(1, array2Token2.length-1); 
		var fields4 = array2Token2.split(/,/);
		
		var array1Token3 = name2.toString();
		array1Token3 = array1Token3.slice(1, array1Token3.length-1); 
		var fields5 = array1Token3.split(/,/);
		
		var array2Token4 = details2.toString();
		array2Token4 = array2Token4.slice(1, array2Token4.length-1); 
		var fields6 = array2Token4.split(/,/);
		
		var array1Token5 = name3.toString();
		array1Token5 = array1Token5.slice(1, array1Token5.length-1); 
		var fields7 = array1Token5.split(/,/);
		
		
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
					
					var sdept = "sdept".concat(n);
					document.getElementById(sdept).value = "";
					
					var rdept = "rdept".concat(n);
					document.getElementById(rdept).value = "";
					
					var award = "award".concat(n);
					document.getElementById(award).value = "";
					
					var smail = "smail".concat(n);
					document.getElementById(smail).value = "";
					
					var rmail = "rmail".concat(n);
					document.getElementById(rmail).value = "";
					
					var pos = "pos".concat(n);
					document.getElementById(pos).value = "";
					
		}
	
		var i = parseInt(parseInt(scrollstatus));
							document.getElementById("name1").value = fields[i-3];
							document.getElementById("detail1").value = fields2[i-3];
							document.getElementById("sdept1").value = fields3[i-3];
							document.getElementById("rdept1").value = fields4[i-3];
							document.getElementById("award1").value = fields5[i-3];
							document.getElementById("smail1").value = fields6[i-3];
							document.getElementById("rmail1").value = fields7[i-3];
							document.getElementById("pos1").value = i-3;

							document.getElementById("name2").value = fields[i-2];
							document.getElementById("detail2").value = fields2[i-2];
							document.getElementById("sdept2").value = fields3[i-2];
							document.getElementById("rdept2").value = fields4[i-2];
							document.getElementById("award2").value = fields5[i-2];
							document.getElementById("smail2").value = fields6[i-2];
							document.getElementById("rmail2").value = fields7[i-2];
							document.getElementById("pos2").value = i-2;

							document.getElementById("name3").value = fields[i-1];
							document.getElementById("detail3").value = fields2[i-1];
							document.getElementById("sdept3").value = fields3[i-1];
							document.getElementById("rdept3").value = fields4[i-1];
							document.getElementById("award3").value = fields5[i-1];
							document.getElementById("smail3").value = fields6[i-1];
							document.getElementById("rmail3").value = fields7[i-1];
							document.getElementById("pos3").value = i-1;
						
		}
}

</script>
</head>
<body  onload="successCallback()">
		<h1>Welcome to Award Form : AWARD DETAILS THAT ARE WAITING</h1>
		<h4>Select Drop down option Either to Approve the Waiting Award/Delete Award, once you Select the choice Button will be visible in fornt of that row, click the button to Change the Award to Approved/Delete</h4>
			<form name="myForm"  method="POST" action="Waiting">
				<table width="page">
					<tr>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Click Repective Button</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Sender UID</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Reciever UID</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Sender Department</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Receiver Department</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Award</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Sender Email</label></td>
					<td><label style="color:#ffffff;font-size:24px;visibility:visible;" >Receiver Email</label></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub1" value="Select1" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;"></td>
						<td><input id="name1" type="text" name="name1" readonly></td>
						<td><input id="detail1" type="text" name="detail1" readonly></td>
						<td><input id="sdept1" type="text" name="sdept1" readonly></td>
						<td><input id="rdept1" type="text" name="rdept1" readonly></td>
						<td><input id="award1" type="text" name="award1" readonly></td>
						<td><input id="smail1" type="text" name="smail1" readonly></td>
						<td><input id="rmail1" type="text" name="rmail1" readonly></td>
						<td>
	 					    <select name="approve1" id="approve1" onchange="validateform1()">  
						        <OPTION  value="-1" label="--Select--" selected="selected">  
						        <option value="Approve">Approve</option>
						        <option value="Delete">Delete</option>
						     </select> 
					    </td>
						<td><input type="button" name="up" value="Scroll Up" onClick="scrollUp()"></td>
						<td><input id="pos1" type="hidden" readonly></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub2" value="Select2" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;"></td>
						<td><input id="name2" type="text" name="name2" readonly></td>
						<td><input id="detail2" type="text" name="detail2" readonly></td>
						<td><input id="sdept2" type="text" name="sdept2" readonly></td>
						<td><input id="rdept2" type="text" name="rdept2" readonly></td>
						<td><input id="award2" type="text" name="award2" readonly></td>
						<td><input id="smail2" type="text" name="smail2" readonly></td>
						<td><input id="rmail2" type="text" name="rmail2" readonly></td>
						<td>
	 					    <select name="approve2" id="approve2" onchange="validateform2()">  
						        <OPTION  value="-1" label="--Select--" selected="selected">  
						         <option value="Approve">Approve</option>
						        <option value="Delete">Delete</option>
						     </select> 
					    </td>
						<td><input id="pos2" type="hidden" readonly></td>
					</tr>
					<tr>
						<td><input type="submit" name="sub" id="sub3" value="Select3" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;"></td>
						<td><input id="name3" type="text" name="name3" readonly></td>
						<td><input id="detail3" type="text" name="detail3" readonly></td>
						<td><input id="sdept3" type="text" name="sdept3" readonly></td>
						<td><input id="rdept3" type="text" name="rdept3" readonly></td>
						<td><input id="award3" type="text" name="award3" readonly></td>
						<td><input id="smail3" type="text" name="smail3" readonly></td>
						<td><input id="rmail3" type="text" name="rmail3" readonly></td>
						<td>
	 					    <select name="approve3" id="approve3" onchange="validateform3()">  
						        <OPTION  value="-1" label="--Select--" selected="selected">  
						         <option value="Approve">Approve</option>
						        <option value="Delete">Delete</option>
						     </select> 
					    </td>
						<td><input type="button" name="down" value="Scroll Down" onClick="scrollDown()"></td>
						<td><input id="pos3" type="hidden" readonly></td>
					</tr>
				</table>
			</form>
</body>
</html>