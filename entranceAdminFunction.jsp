<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,java.sql.Statement,java.sql.ResultSet" session="true"%>
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

function validateform5() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r5").value) && checkDate(document.getElementById("r5").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r5").select();
			document.getElementById("r5").focus();
			return false;
		}
		document.getElementById('lr6').style.visibility='visible';
		document.getElementById('r6').style.visibility='visible';
}
function validateformd9() {
		var varBirthDate = /^(\d{2,2})(\/)(\d{2,2})\2(\d{4}|\d{4})$/;
		if(!(varBirthDate.test(document.getElementById("r6").value) && checkDate(document.getElementById("r6").value)))
		{
			alert("Please enter a valid birth date MM/DD/YYYY and Date Not Greater Than Today.");
			document.getElementById("r6").select();
			document.getElementById("r6").focus();
			return false;
		}
		if(!checktwoDate(document.getElementById("r5").value,document.getElementById("r6").value)){
			alert("Start Date Should Be less than End Date");
			document.getElementById("r6").select();
			document.getElementById("r6").focus();
			return false;
		}
		document.getElementById('change').style.visibility='visible';
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
			document.getElementById('lr5').style.visibility='visible';
			document.getElementById('r5').style.visibility='visible';
}

function validateform7() {
			re = /^\d+$/; 
				if(!re.test(document.getElementById("r7").value) && (document.getElementById("r7").value < 1))
				{ 
					alert("Error: password must contain at least one number (0-9)! and min 1"); 
					document.getElementById("r7").select();
					document.getElementById("r7").focus();
					return false; 
				} 
			document.getElementById('change').style.visibility='visible';
}


function validateform32() {
			re = /^\d+$/; 
				if(!re.test(document.getElementById("r32").value) && (document.getElementById("r32").value < 1))
				{ 
					alert("Error: password must contain at least one number (0-9)! and min 1"); 
					document.getElementById("r32").select();
					document.getElementById("r32").focus();
					return false; 
				} 
}
function validateform31() {
			var varCity = /^[a-zA-Z\s]*$/;
			if(!(varCity.test(document.getElementById("r31").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r31").select();
				document.getElementById("r31").focus();
				return false;
			}
			document.getElementById('lr32').style.visibility='visible';
    		document.getElementById('r32').style.visibility='visible';
    		document.getElementById('lr33').style.visibility='visible';
    		document.getElementById('r33').style.visibility='visible';
}
function changeTest2() {
	var index = document.getElementById("r2").selectedIndex;
	if(parseInt(index) == 1){
		document.getElementById('lr31').style.visibility='visible';
    	document.getElementById('r31').style.visibility='visible';
    	document.getElementById('lr3').style.visibility='hidden';
    	document.getElementById('r3').style.visibility='hidden';
		document.getElementById('lr32').style.visibility='hidden';
    	document.getElementById('r32').style.visibility='hidden';
    	document.getElementById('lr33').style.visibility='hidden';
    	document.getElementById('r33').style.visibility='hidden';
	}else if(parseInt(index) == 2){
		document.getElementById('lr31').style.visibility='hidden';
    	document.getElementById('r31').style.visibility='hidden';
		document.getElementById('lr3').style.visibility='visible';
    	document.getElementById('r3').style.visibility='visible';
		document.getElementById('lr32').style.visibility='hidden';
    	document.getElementById('r32').style.visibility='hidden';
    	document.getElementById('lr33').style.visibility='hidden';
    	document.getElementById('r33').style.visibility='hidden';
    	document.getElementById('change').style.visibility='visible';
	}else if(parseInt(index) == 3){
		document.getElementById('lr31').style.visibility='hidden';
    	document.getElementById('r31').style.visibility='hidden';
		document.getElementById('lr3').style.visibility='visible';
    	document.getElementById('r3').style.visibility='visible';
		document.getElementById('lr32').style.visibility='hidden';
    	document.getElementById('r32').style.visibility='hidden';
    	document.getElementById('lr33').style.visibility='visible';
    	document.getElementById('r33').style.visibility='visible';
	}
	else if(parseInt(index) == 4){
		document.getElementById('lr31').style.visibility='hidden';
    	document.getElementById('r31').style.visibility='hidden';
		document.getElementById('lr3').style.visibility='visible';
    	document.getElementById('r3').style.visibility='visible';
    	document.getElementById('lr32').style.visibility='visible';
    	document.getElementById('r32').style.visibility='visible';
		document.getElementById('lr33').style.visibility='hidden';
    	document.getElementById('r33').style.visibility='hidden';
	}
}

function changeTest33(){
	var index = document.getElementById("r33").selectedIndex;
	if(parseInt(index) == 1){
		document.getElementById('change').style.visibility='visible';
 	}else if(parseInt(index) == 2){
		document.getElementById('change').style.visibility='visible';
	}
}
function changeTest12() {
	var index = document.getElementById("r12").selectedIndex;
	if(parseInt(index) == 1){
		document.getElementById('change').style.visibility='visible';
	}else if(parseInt(index) == 2){
		document.getElementById('change').style.visibility='visible';
	}else if(parseInt(index) == 3){
		document.getElementById('change').style.visibility='visible';
	}
}
function validateform11(){
	var varCity = /^[a-zA-Z]*$/;
			if(!(varCity.test(document.getElementById("r11").value)))
			{
				alert("Please enter a valid Name, Name can only contain alphabets");
				document.getElementById("r11").select();
				document.getElementById("r11").focus();
				return false;
			}
			document.getElementById('lr12').style.visibility='visible';
    		document.getElementById('r12').style.visibility='visible';
}
function changeTest1(){
	var index = document.getElementById("r1").selectedIndex;
	if(parseInt(index) == 1){
		document.getElementById('lr11').style.visibility='visible';
    		document.getElementById('r11').style.visibility='visible';
	}else if(parseInt(index) == 2){
		document.getElementById('lr11').style.visibility='visible';
    		document.getElementById('r11').style.visibility='visible';
	}
}
 function changeTest() {
   	 	
	var index = document.getElementById("rdown").selectedIndex;
	document.getElementById("r1").selectedIndex = 0;
	document.getElementById("r12").selectedIndex = 0;
	document.getElementById("r2").selectedIndex = 0;
	document.getElementById("r3").selectedIndex = 0;
	
	<% 
	try{
			Class.forName ("com.mysql.jdbc.jdbc2.optional.MysqlDataSource").newInstance();
			
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
			Connection con = DriverManager.getConnection("jdbc:mysql://bigyellowcat.cs.binghamton.edu/more", "more", "more7755");
			
		    // Create statement
		    Statement stmt = con.createStatement();
		    
			String query1 = "SELECT * FROM AwardList WHERE status='ACTIVE' AND AwardCount > 1";
		    // Execute the query
		    ResultSet rs1 = stmt.executeQuery(query1);
		  
		    	ArrayList<String>  aawardname =  new ArrayList<String>();
		    	
		    	while(rs1.next())
			      {
			          String str1 = rs1.getString("AwardName");
			          aawardname.add(str1);
			      }
			      session.setAttribute("aawardname", aawardname);
		}catch (SQLException e) {
			out.print("Error on authentication: " + e.toString());
			RequestDispatcher rd = request
					.getRequestDispatcher("./entranceAdminFunction.jsp");
			rd.include(request, response);
		}
	%>
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='hidden';
    		
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='hidden';
       	}else  if(parseInt(index) == 3){
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='hidden';
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='hidden';
       	}else  if(parseInt(index) == 5){
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='hidden';
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
    		document.getElementById('lr6').style.visibility='hidden';
    		document.getElementById('r6').style.visibility='hidden';
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='visible';
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
    		document.getElementById('lr7').style.visibility='hidden';
    		document.getElementById('r7').style.visibility='hidden';
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='visible';
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
    		document.getElementById('lr12').style.visibility='hidden';
    		document.getElementById('r12').style.visibility='hidden';
    		document.getElementById('lr31').style.visibility='hidden';
    		document.getElementById('r31').style.visibility='hidden';
    		document.getElementById('lr32').style.visibility='hidden';
    		document.getElementById('r32').style.visibility='hidden';
    		document.getElementById('lr11').style.visibility='hidden';
    		document.getElementById('r11').style.visibility='hidden';
    		
    		document.getElementById('change').style.visibility='visible';
       	}
 }


</script>
</head>
<body>	
<h1>Welcome to YEA! Program</h1>
<h1>Search Award : Select from drop down you type of Operation... Follow Instruction and Enter Data Accordingly.. Finally Click Change Button Below </h1>

<form method="POST" action="EntranceAdminFunction">

<br><input type="text" readonly="readonly" name="username" id="username" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >


  <table width="page" align="center" >
  			<tr>
 						
 						 <td height="40" align="center"> <label style="color:#ffffff;font-size:24px" >Select Report Search</label> </td>
 					    <td>
 					    <select name="rdown" id="rdown" onchange="changeTest()">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="AccessControl">Award Control</option>
					        <option value="AwardData">Award Data</option>
					        <option value="TQMCertificate">TQM Category</option>
					        <option value="News">News</option>
					        <option value="ChangeMax">Change Max Submissions</option>
					        <option value="Searchdrop">Search</option>
					        <option value="DeleteOld">Delete Old Data</option>
					        <option value="Waiting">Waiting for Approval</option>
					    </select> 
					    </td>  
    		</tr>
    		<!-- Access Control -->
			<tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;visibility:hidden;" >Please Select Access Control</label> </td>
             		 <td align="center"> 
             		 <td>
 					    <select name="r1" id="r1" onchange="changeTest1()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="Add">Add</option>
					        <option value="Delete">Delete</option>
					     </select> 
					    </td>  
 			</tr>
 			
 			<tr>
					 <td height="40" align="center"> <label id="lr11" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter uid</label> </td>
             		 <td align="center"> <input id="r11" name="r11" onchange="validateform11()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
			<tr>
					 <td height="40" align="center"> <label id="lr12" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Access Type</label> </td>
             		 <td>
 					    <select name="r12" id="r12" onchange="changeTest12()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="Manager">Manager</option>
					        <option value="Administrator">Administrator</option>
					        <option value="AdministratorManager">AdministratorManager</option>				        
					     </select> 
					    </td>
 			</tr>
 			<!-- Award Data -->
 			<tr>
					 <td height="40" align="center"> <label id="lr2" style="color:#ffffff;font-size:24px;visibility:hidden;" >Award Data</label> </td>
             		 <td>
 					    <select name="r2" id="r2" onchange="changeTest2()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="Add">Add Award</option>
					        <option value="Delete">Delete Award</option>
					        <option value="ChangeS">Change Status</option>
					        <option value="ChangeC">Change Count</option>
					     </select> 
					    </td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr3" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Award to Delete/Change Status</label> </td>
					 
					 <td>
 					    <select name="r3" id="r3" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <core:forEach items="${sessionScope.aawardname}" var="dt" varStatus="status">  
					            <option value="${dt}">${dt}</option> 
					        </core:forEach>  
					    </select> 
					    </td>   
 			</tr>
 			
 			<tr>
					 <td height="40" align="center"> <label id="lr31" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter New Award</label> </td>
             		 <td align="center"> <input id="r31" name="r31" onchange="validateform31()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr32" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter Award Count</label> </td>
             		 <td align="center"> <input id="r32" name="r32" onchange="validateform32()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
				<td height="40" align="center"> <label id="lr33" style="color:#ffffff;font-size:24px;visibility:hidden;" >Select Status</label> </td>
             		 <td>
 					    <select name="r33" id="r33" onchange="changeTest33()" style="visibility:hidden;">  
					        <OPTION  value="-1" label="--Select--" selected="selected">  
					        <option value="ACTIVE">ACTIVE</option>
					        <option value="INACTIVE">INACTIVE</option>
					     </select> 
					    </td>
 			</tr>
 			<!-- News -->
 			<tr>
					 <td height="40" align="center"> <label id="lr4" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter News</label> </td>
             		 <td align="center"> <input id="r4" name="r4" onchange="validateform4()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr5" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter To Date</label> </td>
             		 <td align="center"> <input id="r5" name="r5" onchange="validateform5()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr6" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter From Date</label> </td>
             		 <td align="center"> <input id="r6" name="r6" onchange="validateformd9()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			
 			<!-- Enter Max Submissions -->
 			<tr>
					 <td height="40" align="center"> <label id="lr7" style="color:#ffffff;font-size:24px;visibility:hidden;" >Enter Maximum Submission</label> </td>
             		 <td align="center"> <input id="r7" name="r7" onchange="validateform7()" type="text" style ="visibility:hidden;background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			
  			<tr>
						<td align="center"><input type="submit" name="change" id="change" value="change" style="visibility:hidden;background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;">
			</tr>	  
 </table>
 </form>
</body>
</html>