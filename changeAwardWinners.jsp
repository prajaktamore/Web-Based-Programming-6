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

</head>
<body>
<h1>Welcome to YEA! Program</h1>
<h1>You can Change award to another if Interested and Mail to you address by clicking Save Button!! </h1>

<form method="POST" action="changeAwardWinners">
		  <table width="page" align="center" >
					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Username</label> </td>
             			 <td align="center"> <input id="username" name="username" readonly="readonly" value="${sessionScope.username}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Award</label> </td>
             			 <td align="center"> <input id="award" name="award" readonly="readonly" value="${sessionScope.ruidaward}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
 					
					<tr>
					  <td height="40" align="center"> <label id="lr6" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Award you want</label> </td>
             			<td>
 					    <select name="rdownlist" id="rdownlist">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.awardlist1}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>
 					</tr>
 					<tr>
						<td align="center"><input type="submit" name="Save" value="Save" style="background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
					</tr>	
</table>
</form>	
</body>
</html>