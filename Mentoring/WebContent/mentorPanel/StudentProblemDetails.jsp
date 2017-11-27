<%@page import="bean.StudentBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		 <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
		<title>Insert title here</title>
	</head>
<%
StudentBean problemDetail = (StudentBean)request.getAttribute("problemDetail");
%>
	<body>
	
		<div style="margin-left:30px;margin-top:20px;border:1px solid;
				padding:6px;background:#415677;width:450px;
				color:white;font-size:18px;border-top-right-radius:10em;">Problem Details</div>
				<hr style="margin-left:32px;margin-top:-2px;border-color:#415677;width:1050px;">
		
		
		<form action="ProvideSolution" method="post" id="myForm">
			<div style="margin-left:50px; margin-top:5px;"><h4 style="font-size:15px;"><b>Problem Information:</b></h4></div>
			
			<div style="margin-left:180px;margin-top:20p;font-size:15px;">problem Id:
			   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getProblemId() %></h7>
			   <div style="margin-left:200px;margin-top:-18px;font-size:15px;">problem Title:
				   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getTitle() %></h7>
			   </div>
			</div>
			   
			<div style="margin-left:50px; margin-top:5px;"><h4 style="font-size:15px;"><b>Student Information:</b></h4></div>
			   <div style="margin-left:180px;margin-top:20p;font-size:15px;">Student Id:
				   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getStudentId() %></h7>
					   <div style="margin-left:200px;margin-top:-17px;font-size:15px;">Student Name:
					   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getStudentName() %></h7>
						    <div style="margin-left:420px;margin-top:-17px;font-size:15px;">Semester:
						   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getSemester() %></h7>
						   
						   </div>
					   </div>  
			   </div>
			   
			<div style="margin-left:50px; margin-top:5px;"><h4 style="font-size:15px;"><b>Problem Description:</b></h4></div>
			
			<div style="margin-left:180px;margin-top:20p;font-size:15px;">Description:
			   <h7 style="margin-left:20px;color:#1d99f2;"><%= problemDetail.getDescription() %></h7></div><br>
			 
			 <div style="margin-left:225px;margin-top:20p;font-size:15px;">Date:
			   <h7 style="margin-left:20px;color:#1d99f2;"></h7><%= problemDetail.getDate() %></div><br>
					<%
					if(problemDetail.getSolution() == null){
						%>
						<div style="margin-left:204px;margin-top:20p;font-size:15px;">Solution :
						
						<textarea rows="5" cols="60" form="myForm" name="solution">Give the solution ....</textarea></div><br>
						
						<%
					}else{
						%>
						
						<div style="margin-left:204px;margin-top:20p;font-size:15px;">Solution :
						<h7 style="color : green;margin-left:18px;"><%= problemDetail.getSolution() %></h7></div><br>
						
						<div style="margin-left:145px;margin-top:20p;font-size:15px;">Update Solution :
						
						<textarea rows="5" cols="60" form="myForm" name="solution" style="margin-left:20px;">Update the solution ....</textarea></div>
						
						<%
					}
					
					%>
			
			<input type="hidden" value="<%= problemDetail.getProblemId() %>" name="problemId">
			<input type="submit" class="btn btn-success" style="margin-left:430px;margin-top:15px;" value="Answer">
		</form>
	</body>
</html>