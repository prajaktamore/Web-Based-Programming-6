<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retention Older Awards</title>
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
			var date = new Date();
			var intYear = date.getFullYear() - 1;
		 
		     if (myDate > today || parseInt(year) >= intYear) {
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
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today. Atleast One year Older Date");
			document.getElementById("r1").select();
			document.getElementById("r1").focus();
			return false;
		}
		
		var r=confirm("Confirmation : Are you sure you want to delete click ok and click Delete Button");
		if (r==true)
		  {
		  	document.getElementById('Delete').style.visibility='visible';
		  }
		else
		  {
		  	alert("You have cancelled Deletion");
		  } 
	
}

</script>
</head>
<body>	
<form method="POST" action="Retention">
<h1>Welcome to YEA! Program</h1>
<h1>Please Enter Date Less than a year, and Click Delete button, will delete all records before Mentioned date</h1>

<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >

  <table width="page" align="center" >
  
					<tr>
					  <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Please Enter Date in MM/YY/DDDD</label> </td>
             			 <td align="center"> <input id="r1" name="r1" type="text"  onchange="validateform1()" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 					</tr>
  					<tr>
						<td align="center"><input type="submit"  id="Delete" name="Delete" value="Delete" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
					</tr>	  
 </table>
 </form>
</body>
</html>