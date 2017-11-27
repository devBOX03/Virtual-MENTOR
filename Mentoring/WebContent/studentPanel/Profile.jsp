<%@ page import="bean.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<%
if(session.getAttribute("USERAUTH") != null){
	UserInfo student = (UserInfo)session.getAttribute("USERINFO");
%>
<body>

   <div style="width: 800px;
   height:850px;
   background-color: #f2f2f2;
   box-shadow: 1px 2px 4px 2px #888888;
   margin-left:140px;
   margin-top:50px;">
   
   
   <h3 style="padding-left:20px;padding-top:20px;">Student Details :</h3>
   <hr style="margin-left:20px;margin-top:-5px;border-color:#415677;width:750px;">
 	
   	<div style="margin-left:30px; margin-top:5px;"><h4 style="font-size:15px;"><b>Personal Information:</b></h4></div>
   	
   <div style="margin-left:180px;margin-top:20p;font-size:15px;">Student Id:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getId() %></h7></div>
   <div style="margin-left:218px;margin-top:20p;font-size:15px;">Name:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getName() %></h7></div>
   <div style="margin-left:171px;margin-top:20p;font-size:15px;">Department:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getDepartment() %></h7></div>
   <div style="margin-left:228px;margin-top:20p;font-size:15px;">DOB:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getDob() %></h7></div>
   <div style="margin-left:235px;margin-top:20p;font-size:15px;">Sex:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getSex() %></h7></div>
   
   	<div style="margin-left:30px; padding-top:25px;"><h4 style="font-size:15px;"><b>Contact Information:</b></h4></div>
   	<div style="margin-left:215px;margin-top:20p;font-size:15px;">Email:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getEmail() %></h7></div>
   <div style="margin-left:144px;margin-top:20p;font-size:15px;">phone Number:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getNumber() %></h7></div>
   
   	<div style="margin-left:30px; padding-top:35px;"><h4 style="font-size:15px;"><b>Parent Information:</b></h4></div>
   	
   <div style="margin-left:144px;margin-top:20p;font-size:15px;">Father`s Name:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getF_name() %></h7></div>
   <div style="margin-left:126px;margin-top:20p;font-size:15px;">Father`s Number:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getF_number() %></h7></div>
   	<div style="margin-left:145px;margin-top:20p;font-size:15px;">Father`s Email:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getF_email() %></div></h7><br>
   	<div style="margin-left:139px;margin-top:20p;font-size:15px;">Mother`s Name:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getM_name() %></h7></div>
   <div style="margin-left:122px;margin-top:20p;font-size:15px;">Mother`s Number:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getM_number() %></h7></div>
   <div style="margin-left:141px;margin-top:20p;font-size:15px;">Mother`s Email:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getF_email() %></div></h7>
   
   <div style="margin-left:30px; padding-top:35px;"><h4 style="font-size:15px;"><b>Address Information:</b></h4></div>
   	
   <div style="margin-left:146px;margin-top:20p;font-size:15px;">Village / Street:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getAt() %></h7></div>
   <div style="margin-left:229px;margin-top:20p;font-size:15px;">Post:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getPost() %></h7></div>
   <div style="margin-left:205px;margin-top:20p;font-size:15px;">District:
   <h7 style="margin-left:40px;color:#1d99f2;"><%= student.getDistrict() %></h7></div>
   <div style="margin-left:223px;margin-top:20p;font-size:15px;">State:
   <h7 style="margin-left:38px;color:#1d99f2;"><%= student.getState() %></h7></div>
    <div style="margin-left:238px;margin-top:20p;font-size:15px;">Pin:
   <h7 style="margin-left:38px;color:#1d99f2;"><%= student.getPin() %></h7></div>
   
   </div>

</body>
<%
}
	else
		response.sendRedirect("../Login.jsp");
	
%>
</html>