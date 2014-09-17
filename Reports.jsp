<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Submit Award</title>
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
function validateform() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r1").value) && checkDate(document.getElementById("r1").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r1").select();
			document.getElementById("r1").focus();
			return false;
		}
		
		document.getElementById('lr2').style.visibility='visible';
   		document.getElementById('r2').style.visibility='visible';
}

function validateform1() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r2").value) && checkDate(document.getElementById("r2").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r2").select();
			document.getElementById("r2").focus();
			return false;
		}
		if(!checktwoDate(document.getElementById("r1").value,document.getElementById("r2").value)){
			alert("Start Date Should Be less than End Date");
			document.getElementById("r1").select();
			document.getElementById("r1").focus();
			return false;
		}
		document.getElementById('Search').style.visibility='visible';
}

function validateform2() {
				re = /^\d+$/; 
				if(!re.test(document.getElementById("r3").value))
				{ 
					alert("Error: password must contain at least one number (0-9)!"); 
					document.getElementById("r3").select();
					document.getElementById("r3").focus();
					return false; 
				} 
				document.getElementById('Search').style.visibility='visible';
}

function validateform3() {
			var varCity = /^[a-zA-Z]*$/;
			if(!(varCity.test(document.getElementById("r4").value)))
			{
				alert("Please enter a valid Serial ID, Serial ID can only contain alphabets and Integer");
				document.getElementById("r4").select();
				document.getElementById("r4").focus();
				return false;
			}
			
			document.getElementById('Search').style.visibility='visible';
}

function validateform4() {
			var varCity = /^[a-zA-Z]*$/;
			if(!(varCity.test(document.getElementById("r5").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r5").select();
				document.getElementById("r5").focus();
				return false;
			}
			document.getElementById('Search').style.visibility='visible';
}
 function changeTest1() {
   	    
		var index = document.getElementById("rdownrot").selectedIndex;
		if(parseInt(index) == 1){
			document.getElementById('lr3').style.visibility='visible';
    		document.getElementById('r3').style.visibility='visible';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
		}else if(parseInt(index) == 2){
			document.getElementById('lr4').style.visibility='visible';
    		document.getElementById('r4').style.visibility='visible';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('Search').style.visibility='hidden';
		}
}
 function changeTest() {
   	    
		var index = document.getElementById("rdown").selectedIndex;
	
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
    		document.getElementById('rdownrot').style.visibility='hidden';
    		document.getElementById('lrdownrot').style.visibility='hidden';
    		
    		document.getElementById('Search').style.visibility='hidden';
    		
       	}else  if(parseInt(index) == 2){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr5').style.visibility='hidden';
    		document.getElementById('r5').style.visibility='hidden';
    		
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		
    		
    		document.getElementById('rdownrot').style.visibility='visible';
    		document.getElementById('lrdownrot').style.visibility='visible';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}else  if(parseInt(index) == 3){
       		document.getElementById('lr1').style.visibility='hidden';
    		document.getElementById('r1').style.visibility='hidden';
    		document.getElementById('lr2').style.visibility='hidden';
    		document.getElementById('r2').style.visibility='hidden';
    		document.getElementById('lr3').style.visibility='hidden';
    		document.getElementById('r3').style.visibility='hidden';
    		document.getElementById('lr4').style.visibility='hidden';
    		document.getElementById('r4').style.visibility='hidden';
    		document.getElementById('rdownrot').style.visibility='hidden';
    		document.getElementById('lrdownrot').style.visibility='hidden';
       		document.getElementById('lr5').style.visibility='visible';
    		document.getElementById('r5').style.visibility='visible';
    		
    		document.getElementById('Search').style.visibility='hidden';
       	}
 }
</script>
</head>
<body>	
<form method="POST" action="Report">
<h1>Welcome to YEA! Program</h1>
<h1>Please Select you option from drop down list, Enter all asked options and Press Search Button to display Report</h1>
<h4> 3 options are available 1. Dates(To/From) Dates Submission History 2. Rotary (Submitter Dpetrtment ID/Submitter UID) 3.Person (Submitter or Recipient Name)</h4>

<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >

  <table width="page" align="center" >
  			<tr>
 						
 						 <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Select Report Search</label> </td>
 					    <td>
 					    <select name="rdown" id="rdown" onchange="changeTest()">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="Dates">Dates</option>
					        <option value="Rotary">Rotary</option>
					        <option value="Person">Person</option>   
					    </select> 
					    </td>  
    		</tr>
			<tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;visibility:hidden;" >Please Enter Start Date</label> </td>
             		 <td align="center"> <input id="r1" name="r1" onchange="validateform()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr2" style="color:#ffffff;font-size:24px;visibility:hidden;" >Please Enter End Date</label> </td>
             		 <td align="center"> <input id="r2" name="r2" onchange="validateform1()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
 						
 					<td height="40" align="center"> <label id="lrdownrot" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Rotary Type</label> </td>
 					    <td>
 					    <select name="rdownrot" id="rdownrot" onchange="changeTest1()" style="visibility:hidden">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="Dates">Department</option>
					        <option value="Rotary">Serial Number</option>
					    </select> 
					    </td>  
    		</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr3" style="color:#ffffff;font-size:24px;visibility:hidden;" >Department Number</label> </td>
             		 <td align="center"> <input id="r3" name="r3" onchange="validateform2()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr4" style="color:#ffffff;font-size:24px;visibility:hidden;" >Employee Serial</label> </td>
             		 <td align="center"> <input id="r4" name="r4" onchange="validateform3()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr5" style="color:#ffffff;font-size:24px;visibility:hidden;" >Submitter or Recipient Name</label> </td>
             		 <td align="center"> <input id="r5" name="r5" onchange="validateform4()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
  			<tr>
						<td align="center"><input type="submit" name="Search" id="Search" value="Search" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
			</tr>	  
 </table>
 </form>
</body>
</html>