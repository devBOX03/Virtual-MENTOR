<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript">
			this.top.location !== this.location && (this.top.location = this.location);
			history.pushState(null, null, document.URL);
			window.addEventListener('popstate', function () {
			    history.pushState(null, null, document.URL);
			});
			</script>
		<title>Virtual MENTOR</title>
		<link rel="stylesheet" href="style.css" media="screen">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			this.top.location !== this.location && (this.top.location = this.location);
		</script>
		<style type="text/css">
			div.login{
				 opacity: 0.6;
    			filter: alpha(opacity=30);
			}
			div.login:hover{
				 opacity: 1;
    			filter: alpha(opacity=30);
			}
		</style>
	</head>
	<%
	
	%>
	<body>
		<h1 style=" text-align: center; margin-top: 6%; color: #FFFFFF; font-size: 50px; font-weight: 200;">Virtual MENTOR</h1>
			<%
					if(null !=request.getParameter("errorId")){
					%>
						<h4 style="color: red;text-align: center;">You have entered a wrong User Id or Password</h4>
					<%
				}
			%>
		<div class="login" style="width: 300px;height: 300px;background:#5e5f60;
	    margin-left:530px;margin-top:50px;padding-top:25px;">
		<h3 style="color:#FFFFFF;text-align: center;margin-top: 5%;font-size: 25px;padding-top:-20px;padding-bottom: 40px;">Login</h3>
			<center>
				<div >
					<form action="Login" method="post" name="Form" onsubmit="return inspectElements()">
						<input type="text-align" placeholder="user Id" name="userId" id="uid"><br><br>
						<input type="password" placeholder="password" name="Password" id="pass"><br><br>
						<input type="submit" style="opacity: none;" class="btn btn-primary" value="Login">
					</form>
				</div>
			</center>
		</div>
		
		<script type="text/javascript">
			function inspectElements(){
				var a=document.forms["Form"]["uid"].value;
		        var b=document.forms["Form"]["pass"].value;
		        if (a==null || a=="",b==null || b=="")
		        {
		            alert("Please Fill All Required Field");
		            return false;
		        }
		        var regex=/^[0-9]+$/;
		        if (isNaN(a)) 
		        {
		          alert("Must input numbers in UserId");
		          return false;
		        }
			}
			
		</script>
	</body>
</html>