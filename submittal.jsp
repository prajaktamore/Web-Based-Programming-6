<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Award</title>
<link href="more.css" rel="stylesheet" type="text/css" />

</head>
<body>	
<h1>Welcome to YEA! Program</h1>
<h1>Please Enter Enter Last Name, and Click Search button, this will take you to Submission Page</h1>

<form method="POST" action="Submit">
<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >

  <table width="page" align="center" >
  
					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Please Enter Last Name</label> </td>
             			 <td align="center"> <input id="lastname" name="lastname" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
  					<tr>
						<td align="center"><input type="submit" name="Search" value="Search" style="background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
					</tr>	  
 </table>
 </form>
</body>
</html>