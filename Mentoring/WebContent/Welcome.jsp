<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="bean.UserInfo" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
UserInfo user = (UserInfo)session.getAttribute("USERINFO");
int userId = user.getId();
String designation = null;
if(userId <= 1000)
	designation = "Admin";
else if(userId >= 1000 && userId <= 10000)
	designation = "Faculty";
else
	designation = "Student";

%>
<body>
	<h6>Welcome, <b style="color: #4189fc;"><%= user.getName() %></b>
	<b style="float: right;color: #4189fc;"> <%= designation %></b>
	<b style="float: right;">Designation : </b></h6>
	<img alt="" src="Source/img/Vmware-icon.png" style="height: 300px;width: 300px; margin-left: 380px;margin-top: 80px;opacity:0.7;">
</body>
</html>