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
 function validateform() {
 var index = document.getElementById("r8").selectedIndex;
	document.getElementById("r3").selectedIndex = 0;
	
		 if(parseInt(index) == 1){
			document.getElementById('lr1').style.visibility='visible';
			document.getElementById('r1').style.visibility='visible';
			document.getElementById('lr2').style.visibility='hidden';
			document.getElementById('r2').style.visibility='hidden';
			document.getElementById('lr3').style.visibility='hidden';
			document.getElementById('r3').style.visibility='hidden';
			document.getElementById('Delete').style.visibility='hidden';
			document.getElementById('update').style.visibility='hidden';
			document.getElementById('lr4').style.visibility='hidden';
		document.getElementById('r4').style.visibility='hidden';
		 }else if(parseInt(index) == 2){
		 	document.getElementById('lr1').style.visibility='visible';
			document.getElementById('r1').style.visibility='visible';
			document.getElementById('lr2').style.visibility='hidden';
			document.getElementById('r2').style.visibility='hidden';
			document.getElementById('lr3').style.visibility='hidden';
			document.getElementById('r3').style.visibility='hidden';
			document.getElementById('Delete').style.visibility='hidden';
			document.getElementById('update').style.visibility='hidden';
			document.getElementById('lr4').style.visibility='hidden';
		document.getElementById('r4').style.visibility='hidden';
		 }
}

function validateform1() {
			var varCity = /^[a-zA-Z]*$/;
			if(!(varCity.test(document.getElementById("r1").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r1").select();
				document.getElementById("r1").focus();
				return false;
			}
			document.getElementById('lr2').style.visibility='visible';
			document.getElementById('r2').style.visibility='visible';
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
			document.getElementById('lr3').style.visibility='visible';
			document.getElementById('r3').style.visibility='visible';
}
function validateform3() {
	var index = document.getElementById("r3").selectedIndex;
	var index1 = document.getElementById("r8").selectedIndex;
	if(index > 0 && index1 == 1){
		document.getElementById('Delete').style.visibility='visible';
	}else{
		document.getElementById('lr4').style.visibility='visible';
		document.getElementById('r4').style.visibility='visible';
	}
}

function validateform4(){
	var index = document.getElementById("r4").selectedIndex;
	var index1 = document.getElementById("r8").selectedIndex;
	if(index > 0 && index1 == 2){
		document.getElementById('update').style.visibility='visible';
	}
}
</script>
</head>
<body>
<h1>Welcome to YEA! Program</h1>
<h1>Select from drop down Delete/Update... Follow Instruction and Enter Data Accordingly.. Finally Click Delete/Update Button Below </h1>

<form method="POST" action="finalAdminReport">
<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >

       <h1>Report Results</h1>
        <table width="page" align="center" >
            <!-- column headers -->
            <tr>
                <core:forEach var="columnName" items="${colNames}">
                    <th><core:out value="${columnName}"/></th>
                </core:forEach>
            </tr>
            <!-- column data -->
            <core:forEach var="row" items="${resultReport}">
                <tr>
                    <core:forEach var="column" items="${row}">
                         <td><core:out value="${column}"/></td>
                    </core:forEach>
                </tr>
            </core:forEach>
            
            <tr>
					 <td height="40" align="center"> <label id="lr8" style="color:#ffffff;font-size:24px;" >Award Selection</label> </td>
					 
					 
					 <td>
 					    <select name="r8" id="r8" onchange="validateform()">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  </OPTION>
					        <OPTION  value="Delete"> Delete </OPTION>
					        <OPTION  value="Update"> Update </OPTION>  
					    </select> 
					    </td>   
 			</tr>
 			
            <tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter Sender Serial ID</label> </td>
             		 <td align="center"> <input id="r1" name="r1" onchange="validateform1()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			
 			 <tr>
					 <td height="40" align="center"> <label id="lr2" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter Reciever Serial ID</label> </td>
             		 <td align="center"> <input id="r2" name="r2" onchange="validateform2()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			
 			 <tr>
					 <td height="40" align="center"> <label id="lr3" style="color:#ffffff;font-size:24px;visibility:hidden;" >Award Existing Selection</label> </td>
					 
					 
					 <td>
 					    <select name="r3" id="r3" onchange="validateform3()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.aawardname}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>   
 			</tr>
 			
 			<tr>
					 <td height="40" align="center"> <label id="lr4" style="color:#ffffff;font-size:24px;visibility:hidden;" >Award New Selection</label> </td>
					 
					 
					 <td>
 					    <select name="r4" id="r4" onchange="validateform4()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.aawardname}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>   
 			</tr>
 			
            <tr>
         	<td align="center"><input type="submit" name="sub" id="Delete" value="Delete" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
			<td align="center"><input type="submit" name="sub" id="update" value="update" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
			</tr>	 
        </table>
        </form>
    </body>
</html>