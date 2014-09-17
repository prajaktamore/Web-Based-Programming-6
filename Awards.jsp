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
 function changeTest() {
   	   
		var index = document.getElementById("rdown").selectedIndex;
	
		var array1 = '<%= session.getAttribute( "rLastname" ) %>';
		var array2 = '<%= session.getAttribute( "rName" ) %>';
		var array3 = '<%= session.getAttribute( "rmailid" ) %>';
		var array4 = '<%= session.getAttribute( "rdept" ) %>';
		var array5 = '<%= session.getAttribute( "ruid" ) %>';
		
		var array1Token = array1.toString();
		array1Token = array1Token.slice(1, array1Token.length-1); 
		var fields = array1Token.split(/,/);
		

		var array2Token = array2.toString();
		array2Token = array2Token.slice(1, array2Token.length-1); 
		var fields2 = array2Token.split(/,/);
		
		var array3Token = array3.toString();
		array3Token = array3Token.slice(1, array3Token.length-1); 
		var fields3 = array3Token.split(/,/);
		
		var array4Token = array4.toString();
		array4Token = array4Token.slice(1, array4Token.length-1); 
		var fields4 = array4Token.split(/,/);
		  	
		var array5Token = array5.toString();
		array5Token = array5Token.slice(1, array5Token.length-1); 
		var fields5 = array5Token.split(/,/);
		
				 if(parseInt(index) > 0 && parseInt(array1.length) > 0){
	        		document.getElementById('lr2').style.visibility='visible';
	        		document.getElementById('r2').style.visibility='visible';
	        		document.getElementById('r2').value = fields[index-1];
	        		document.getElementById('lr3').style.visibility='visible';
	        		document.getElementById('r3').style.visibility='visible';
	        		document.getElementById('r3').value = fields2[index-1];
	        		document.getElementById('lr4').style.visibility='visible';
	        		document.getElementById('r4').style.visibility='visible';
	        		document.getElementById('r4').value = fields3[index-1];
	        		document.getElementById('lr5').style.visibility='visible';
	        		document.getElementById('r5').style.visibility='visible';
	        		document.getElementById('r5').value = fields4[index-1];
	        		document.getElementById('lr6').style.visibility='visible';
	        		document.getElementById('rdownlist').style.visibility='visible';
	        		document.getElementById('lr7').style.visibility='visible';
	        		document.getElementById('r7').style.visibility='visible';
	        		document.getElementById('r8').value = fields5[index-1];
	        	}
 }
 
 function resetTest() {
 					document.getElementById("rdown").selectedIndex = -1;
 					document.getElementById("r6").selectedIndex = 0;
 					document.getElementById('lr6').style.visibility='hidden';
 					document.getElementById('rdownlist').style.visibility='hidden';
 					document.getElementById('r7').style.visibility='hidden';
 					document.getElementById('lr7').style.visibility='hidden';
 					document.getElementById('lr2').style.visibility='hidden';
	        		document.getElementById('r2').style.visibility='hidden';
	        		document.getElementById('lr3').style.visibility='hidden';
	        		document.getElementById('r3').style.visibility='hidden';
	        		document.getElementById('lr4').style.visibility='hidden';
	        		document.getElementById('r4').style.visibility='hidden';
	        		document.getElementById('lr5').style.visibility='hidden';
	        		document.getElementById('r5').style.visibility='hidden';
 } 
</script>
</head>
<body>
<form method="POST" action="Awards">
  <table width="page" align="center" >
  					<tr>
  					<td>Your Details</td>
  					</tr>
					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >First Name</label> </td>
             			 <td align="center"> <input id="u1" name="u1" value="${sessionScope.sfname}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >SurName</label> </td>
             			 <td align="center"> <input id="u2" name="u2" value="${sessionScope.ssname}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Middle Name</label> </td>
             			 <td align="center"> <input id="u3" name="u3" value="${sessionScope.slname}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Email</label> </td>
             			 <td align="center"> <input id="u4" name="u4" value="${sessionScope.smail}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Dept ID</label> </td>
             			 <td align="center"> <input id="u5" name="u5" value="${sessionScope.sdept}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
 					<td>Select Award Winner</td>
 					</tr>
 					<tr>
 						
 						 <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >First Name</label> </td>
 					    <td>
 					    <select name="rdown" id="rdown" onchange="changeTest()">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.rFname}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>  
    				</tr>
    				<tr>
					  <td height="40" align="center"> <label id="lr2" style="color:#ffffff;font-size:24px;visibility:hidden;" >SurName</label> </td>
             			 <td align="center"> <input id="r2" name="r2" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label id="lr3" style="color:#ffffff;font-size:24px;visibility:hidden;" >Middle Name</label> </td>
             			 <td align="center"> <input id="r3" name="r3" type="text" style ="background: #33CC99; visibility:hidden;height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label id="lr4" style="color:#ffffff;font-size:24px;visibility:hidden;" >Email</label> </td>
             			 <td align="center"> <input id="r4" name="r4" type="text" style ="background: #33CC99; visibility:hidden;height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label id="lr5" style="color:#ffffff;font-size:24px;visibility:hidden;" >Dept ID</label> </td>
             			 <td align="center"> <input id="r5" name="r5" type="text" style ="background: #33CC99; visibility:hidden;height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label id="lr6" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Award</label> </td>
             			<td>
 					    <select name="rdownlist" id="rdownlist" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.awardList}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>
 					</tr>
 					<tr>
 						<td height="40" align="center"> <label id="lr7" style="color:#ffffff;font-size:24px;visibility:hidden;" >You have made a difference..</label> </td>
 						<td><textarea cols="50" rows="5" name="r7" id="r7" style="visibility:hidden;"></textarea>
						</td>
						<td><input type="hidden" name="r8" id="r8"></td>
 					</tr>
  					<tr>
						<td align="center"><input type="submit" name="Save" value="Save" style="background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
						<td align="center"><input type="button" name="Reset" value="Reset" onclick="resetTest()" style="background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
					</tr>	  
  </table>
</form>
</body>
</html>