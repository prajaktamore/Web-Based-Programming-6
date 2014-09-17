<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,java.sql.Statement,java.sql.ResultSet,java.text.SimpleDateFormat,java.util.ArrayList,java.util.Calendar,java.util.Hashtable,java.util.Enumeration" session="true"%>
<%@ page errorPage="ShowError.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Manager</title>
<link href="more.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
 function changeTest() {
	<% 
	try{
			Class.forName ("com.mysql.jdbc.jdbc2.optional.MysqlDataSource").newInstance();
			
			Class.forName("com.mysql.jdbc.Driver").newInstance(); 
			Connection con = DriverManager.getConnection("jdbc:mysql://bigyellowcat.cs.binghamton.edu/more", "more", "more7755");
			
		    // Create statement
		    Statement stmt = con.createStatement();
		    
			Calendar currentDate = Calendar.getInstance(); //Get the current date
				SimpleDateFormat formatter= new SimpleDateFormat("MM-dd-yyyy"); //format it as per your requirement
				String dateNow = formatter.format(currentDate.getTime());
				
				String month = dateNow.substring(0, 2);
				String date = dateNow.substring(3, 5);
				String year = dateNow.substring(6, 10);
				
		    	String query2 = "SELECT * FROM news WHERE enterdate<='"+year+"-"+month+"-"+date+"' AND enddate>='"+year+"-"+month+"-"+date+"'";
			    // Execute the query
			    ResultSet rs2 = stmt.executeQuery(query2);
			  
			    ArrayList<String>  news =  new ArrayList<String>();
			    	
			    while(rs2.next())
				 {
				          String str1 = rs2.getString("news");
				          news.add(str1);
				 }
			    session.setAttribute("news", news);
			    
		}catch (SQLException e) {
			out.print("Error on authentication: " + e.toString());
			RequestDispatcher rd = request
					.getRequestDispatcher("./entranceAdminFunction.jsp");
			rd.include(request, response);
		}
	%>
}
</script>
</head>
<body onload="changeTest()">
<h1>Welcome Manager : Please Click the Link to Perform Operation!!</h1>
<h1>You can also read News below :) </h1>
<br><input type="text" readonly="readonly" value="WELCOME MANAGER!" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >
<br><input type="text" readonly="readonly" value="${sessionScope.username}" style ="background: #33CC99; height:55px; width: 600px;text-align:right;font-size:35px; border-radius: 2em; border:6px solid #339999;border-radius:29px; color: #fff; padding-left: 1.5em; outline: none; box-shadow: 0 4px 6px -5px hsl(0, 0%, 40%), inset 0px 4px 6px -5px hsl(0, 0%, 2%)" >
<br><a href="/BinaryCalculator/yeaGuidelines.jsp">YEA Guidelines!</a>
<br><a href="/BinaryCalculator/submittal.jsp">Submittal Form!</a>
<br><a href="/BinaryCalculator/AwardwinnerLogin.jsp">View Awards!</a>
<br><a href="/BinaryCalculator/Reports.jsp">Reports!</a>
<br><a href="/BinaryCalculator/Login.jsp">Logout!</a>
<br>
<h3><FONT FACE="courier" COLOR=#009999>NEWS </FONT></h3>
<FONT SIZE="6" FACE="courier" COLOR=#009999>
<marquee behavior="scroll" direction="left">
	<core:forEach items="${sessionScope.news}" var="dt" varStatus="status">  
					            <br><option value="${dt}">${dt}</option> 
	</core:forEach>  
</marquee>
</FONT>
</body>
</html>