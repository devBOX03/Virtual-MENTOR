<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<%
String error = request.getParameter("error");
%>
<body>
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
	<div style=" width: 900px;height: 300px;background-color: #eff2f6;box-shadow: 1px 2px 4px 2px #888888;margin-left:110px;margin-top:70px;">
		 <div class="panel panel-default">
    	 <div class="panel-body" style="padding-left:20px;font-size:18px;">Change Password :</div>
  		</div>
  		<form action="ChangePassword">
  		 <table class="table table-bordered" style="width:800px;border:1 px solid black;margin-left:50px;">
  		 	<tbody>
  		 		<tr>
  		 		<td style="padding-left:120px;padding-top:15px;width:230px;">Old Password :</td>
  		 		<td><input type="password" name="oldPassword"></td>
  		 		</tr>
  		 		<tr >
  		 		<td style="padding-left:115px;padding-top:15px;width:230px;">New Password :</td>
  		 		<td><input type="password" name="newPassword"></td>
  		 		</tr>
  		 		<tr>
  		 		<td style="padding-left:95px;padding-top:15px;width:230px;">Confirm Password :</td>
  		 		<td><input type="password"  name="confirmPassword"></td>
  		 		</tr>
  		 	</tbody>
		</table>
		
	
		<input type="submit" style="margin-left:250px;background-color:#C7DFFE;" value="Change Password">
	</form>
	</div>
	
</body>
</html>