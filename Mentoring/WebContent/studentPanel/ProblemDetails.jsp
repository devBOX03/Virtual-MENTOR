<%@page import="bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
StudentBean problemDetail = (StudentBean)request.getAttribute("problemDetail");
%>
<body>

 <div style="width: 800px;
   height:450px;
   background-color: #f2f2f2;
   box-shadow: 1px 2px 4px 2px #888888;
   margin-left:140px;
   margin-top:50px;">
   
   <h3 style="padding-left:20px;padding-top:20px;">Problem Details :</h3>
   <hr style="margin-left:20px;margin-top:-5px;border-color:#415677;width:750px;">
   
   <div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Student Information:</b></h4></div>
   
    <div style="margin-left:180px;margin-top:20p;font-size:15px;">Semester:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= problemDetail.getSemester() %></h7></div>
   
	 <div style="margin-left:217px;margin-top:20p;font-size:15px;">Date:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= problemDetail.getDate() %></h7></div>  
   
   <div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Problem Information:</b></h4></div>
    
     <div style="margin-left:170px;margin-top:20p;font-size:15px;">Problem Id:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= problemDetail.getProblemId() %></h7></div>  
   
     <div style="margin-left:152px;margin-top:20p;font-size:15px;">Problem Title:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= problemDetail.getTitle() %></h7></div> 
   
   <div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Description:</b></h4></div>
     
    <div style="margin-left:170px;margin-top:20p;font-size:15px;">Description:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= problemDetail.getDescription() %></h7></div> 
   


<%
if(problemDetail.getSolution() == null){
	%>
	
	<div style="margin-left:195px;margin-top:20p;font-size:15px;">Solution:
   <h7 style="margin-left:40px;color:red;">Un-Answred</h7></div> 
   	
	<%
}else{
	%>
	
	<div style="margin-left:195px;margin-top:20p;font-size:15px;">Solution:
   <h7 style="margin-left:40px;color:green;"><%= problemDetail.getSolution() %></h7></div> 
   	
	<%
}

%>

</div>
</body>
</html>