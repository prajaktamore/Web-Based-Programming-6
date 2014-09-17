<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,java.sql.Statement,java.sql.ResultSet,java.text.SimpleDateFormat,java.util.ArrayList,java.util.Calendar,java.util.Hashtable,java.util.Enumeration" session="true"%>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="more.css" rel="stylesheet" type="text/css" />
<title>Report</title>
	<script type="text/javascript">
		function printData(){
			alert("You Report is Printed!!");
		}
	
	function changePercentile(){
	<%
		try {
				Class.forName ("com.mysql.jdbc.jdbc2.optional.MysqlDataSource").newInstance();
			
				Class.forName("com.mysql.jdbc.Driver").newInstance(); 
				Connection con = DriverManager.getConnection("jdbc:mysql://bigyellowcat.cs.binghamton.edu/more", "more", "more7755");
				
	       
				 // Create statement
		    Statement stmt = con.createStatement();
		
	        ResultSet rs1 = stmt.executeQuery("SELECT * FROM Award");
			
	        int rowCount = 0;  
	    	while ( rs1.next() )  
	    	{  
	    	    // Process the row.  
	    	    rowCount++;  
	    	}
	    	
			ResultSet rs2 = stmt.executeQuery("SELECT maxcount FROM MaxSubmission LIMIT 1");
			  
	        ArrayList<Integer>  maxCount =  new ArrayList<Integer>();
	    	while(rs2.next())
		      {
		          int strprodvalue = Integer.parseInt(rs2.getString("maxcount"));
		          maxCount.add(strprodvalue);   
		      }
	    	session.setAttribute("totSub", rowCount);
	    	session.setAttribute("totAllowSub", maxCount.get(0));
	    	double percentile = (((double)rowCount)/maxCount.get(0)) * 100;
			session.setAttribute("percentile", percentile);
		    
	        } catch (InstantiationException e) {
	        	RequestDispatcher rd=request.getRequestDispatcher("./finalReport.jsp");  
			    rd.include(request,response);
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				RequestDispatcher rd=request.getRequestDispatcher("./finalReport.jsp");  
			    rd.include(request,response);
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				RequestDispatcher rd=request.getRequestDispatcher("./finalReport.jsp");  
			    rd.include(request,response);
				e.printStackTrace();
			} catch (SQLException e) {
				RequestDispatcher rd=request.getRequestDispatcher("./finalReport.jsp");  
			    rd.include(request,response);
				e.printStackTrace();
			}
			%>
	}
	</script>
	
	
</head>

<body onload="changePercentile()">
<h1>Welcome : Below is the Submission History of Urs with total submission, allowed submissions and Percentil submission till date!!</h1>
<h1>You can print the form using print button </h1>
<form method="POST">

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
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;" >Total Submissions</label> </td>
             		 <td align="center"> <input id="r1" name="r1" value="${sessionScope.totSub}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
 			<tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;" >Total Allowed Submissions</label> </td>
             		 <td align="center"> <input id="r1" name="r1" value="${sessionScope.totAllowSub}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
            <tr>
					 <td height="40" align="center"> <label id="lr1" style="color:#ffffff;font-size:24px;" >Percentage Summary</label> </td>
             		 <td align="center"> <input id="r1" name="r1" value="${sessionScope.percentile}" type="text" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)"/></td>
 			</tr>
            <tr>
            <td><input type="button" name="Print" value="Print" onClick="printData()" style="background-color: #2e466e; color: #ffff; border-radius: 10px;border:6px solid #1f2f47;border-radius:29px;padding:16px 57px;text-shadow:0px 1px 0px #263666;font-size:20px;"></td>
            </tr>
        </table>
        
        </form>
    </body>
</html>