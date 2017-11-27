<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
</head>
<body>
<div style="width: 800px;
   height:450px;
   background-color: #f2f2f2;
   box-shadow: 1px 2px 4px 2px #888888;
   margin-left:140px;
   margin-top:50px;">
<form action="SubmitProblem" method="post" id="myForm">

 <h3 style="padding-left:20px;padding-top:20px;">Share Problems :</h3>
   <hr style="margin-left:20px;margin-top:-5px;border-color:#415677;width:750px;">

	<div style="display:inline-block;padding:5px 10px;
	width:120px;height:30px;background:#a2b3c4;
	margin-left:70px;"> Semester </div>
	
	<div style="margin-left:210px;margin-top:-30px;">
	<select name="semester" style="height:32px;width:170px;">
	<option value="">--Select--</option>
	<option value="FIRST">1st</option>
	<option value="SECOND">2nd</option>
	<option value="THIRD">3rd</option>
	<option value="FOURTH">4th</option>
	<option value="FIFTH">5th</option>
	<option value="SIXTH">6th</option>
	<option value="SEVENTH">7th</option>
	<option value="EIGHTH">8th</option>
	</select></div>

	<div style="display:inline-block;padding:5px 10px;
	width:120px;height:30px;background:#a2b3c4;
	margin-left:70px;margin-top:5px;"> Title </div>
	<div style="margin-left:210px;margin-top:-30px;">
	<textarea rows="1" cols="40" name="title" >Enter title</textarea></div>
	
	<div style="display:inline-block;padding:5px 10px;
	width:120px;height:30px;background:#a2b3c4;
	margin-left:70px;margin-top:5px;"> Description </div>
	<div style="margin-left:210px;margin-top:-30px;">
	<textarea rows="5" cols="60" name="description" >Enter your text here ...</textarea></div>
	
	<div style="margin-left:220px;margin-top:10px;">
	<input type="submit" class="btn btn-success" value="share"></div>

</form>
</div>
</body>
</html>