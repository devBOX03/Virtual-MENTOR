<%@page import="bean.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet"  href="Source/css/ContactParent.css">
</head>
<%
UserInfo studentParentInfo = (UserInfo)request.getAttribute("studentParentInfo");
UserInfo userInfo = (UserInfo)request.getSession().getAttribute("USERINFO");
int mentorId = userInfo.getId();
String error = request.getParameter("error");
String message = "",color="";	
%>
<body style="overflow: hidden;">
<%
if(error.equals("1")){
	%>
	<p>Successfull</p>
	<%
}
else if(error.equals("0")){
	%>
	<p>Unsuccessfull</p>
	<%
}
%>
<div class="row">
	<div class="col-sm-6">
	<div style="width: 500px;
   height:500px;
   background-color: #f2f2f2;
   box-shadow: 1px 2px 4px 2px #888888;
   margin-left:10px;
   margin-top:10px;">
	
	
   <h3 style="padding-left:20px;padding-top:20px;">Student Details :</h3>
   <hr style="margin-left:20px;margin-top:-2px;border-color:#415677;width:450px;">
   
   	<div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Personal Information:</b></h4></div>
   		
   		<div style="margin-left:80px;margin-top:10p;font-size:15px;">Name :
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getName() %></h7></div>
   		<div style="margin-left:98px;margin-top:10p;font-size:15px;">Sex:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getSex() %></h7></div>
   		
   		<div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Contact Information:</b></h4></div>
   	
   		<div style="margin-left:80px;margin-top:10p;font-size:15px;">Phone:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getNumber() %></h7></div>
   		<div style="margin-left:85px;margin-top:10p;font-size:15px;">Email:
   		<h7 style="margin-left:42px;color:#1d99f2;"><%= studentParentInfo.getEmail()%></h7></div>
   		
   		<div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Parent Information:</b></h4></div>
   	
   		<div style="margin-left:80px;margin-top:10p;font-size:15px;">Father Name:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getF_name()%></h7></div>
   		<div style="margin-left:56px;margin-top:10p;font-size:15px;">Father's Number:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getF_number()%></h7></div>
   		<div style="margin-left:73px;margin-top:10p;font-size:15px;">Father's Email:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getF_email()%></h7></div>
   	    <div style="margin-left:77px;margin-top:10p;font-size:15px;">Mother Name:
   		<h7 style="margin-left:42px;color:#1d99f2;"><%= studentParentInfo.getM_name()%></h7></div>
   		 <div style="margin-left:54px;margin-top:10p;font-size:15px;">Mother's Number:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getM_number()%></h7></div>
   		 <div style="margin-left:72px;margin-top:10p;font-size:15px;">Mother's Email:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getM_email()%></h7></div>
   	
   		<div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Address Information:</b></h4></div>
   	
   		<div style="margin-left:110px;margin-top:10p;font-size:15px;">City:
   		<h7 style="margin-left:40px;color:#1d99f2;"><%= studentParentInfo.getCity()%></h7></div>
   	
	</div>
	</div>

	<div class="col-sm-6" style="margin-left:-30px;">
		<div style="width: 550px;
				   height:500px;
				   background-color: #f2f2f2;
				   box-shadow: 1px 1px 1px 1px #888888;
				   margin-left:10px;
				   margin-top:10px;">
			<form action="RecordRemark" method="post">
				 <h3 style="padding-left:20px;padding-top:20px;">Record Remark:</h3>
   				<hr style="margin-left:20px;margin-top:-2px;border-color:#415677;width:500px;">
				<input type="hidden" name="mentorId" value="<%= mentorId%>">
				<input type="hidden" name="studentId" value="<%= studentParentInfo.getId()%>">
				<div style="margin-left:20px;">
				<table>
				<tr>
				<td class="rowstyle">Semester </td>
				<td style="padding-left:8px;"><select name="semester" style="width:150px;">
					<option value="">--Select--</option>
					<option value="FIRST">1st</option>
					<option value="SECOND">2nd</option>
					<option value="THIRD">3rd</option>
					<option value="FOURTH">4th</option>
					<option value="FIFTH">5th</option>
					<option value="SIXTH">6th</option>
					<option value="SEVENTH">7th</option>
					<option value="EIGHTH">8th</option>
				</select></td>
				<td class="rowstyle2">Talked With  </td>
				<td style="padding-left:8px;"><select name="Guardian" style="width:130px;">
					<option value="">--Select--</option>
					<option value="Father">Father</option>
					<option value="Mother">Mother</option>
					<option value="Local Guardian">Local Guardian</option>
				</select></td>
				</tr>
				</table>
				<h5>Parent Remark :</h5>
				<textarea cols="60" rows="6" name="parentRemark">Enter parents remark ......
				</textarea>
				<h5>Mentor Remark :</h5>
				<textarea cols="60" rows="6" name="mentorRemark">Enter your remark ......
				</textarea>
				<br>
				</div>
				<input type="submit" class="btn btn-info" style="margin-left:400px;margin-top:10px;" value="Record Remark">
			</form>
		</div>
	</div>
</div>
	
</body>
</html>