<%@ page import="bean.StudentBean" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script type="text/javascript">
// Angular use begin-----
var app = angular.module("myApp",[]);
app.controller('myCtrl',function($scope,$http){
	$scope.showProblems = function()
	{
		var semester=document.getElementById("semester").value;
		$http.get("../ViewStudentProblems?semester="+semester+"",{})
	.then(function(response)
	{
		$scope.mydata=response.data;
		
		
	},
	function(error)
	{
		alert("error");
		$scope.myWelcome = response.statusText;
	});
	}
});
</script>
<style>
table{
	border-collapse:collapse;
	width:650px;
}
th,td{
	padding:8px;
	text-allign:left;
	border-bottom:1px solid #ddd;
}
tr:hover{
	background-color:#f5f5f5;
}
</style>
</head>

<body ng-app="myApp" ng-controller="myCtrl">

<div style="margin-left:30px;margin-top:20px;border:1px solid;
		padding:6px;background:#415677;width:450px;
		color:white;font-size:18px;border-top-right-radius:10em;">Student Problems</div>
		<hr style="margin-left:32px;margin-top:-2px;border-color:#415677;width:1050px;">

	<form>
		<div style="display:inline-block;background:#a2b3c4;width:130px;height:27px;
		padding:5px 10px;margin-left:290px;margin-top:10px;">Semester : </div>
		<select style="width:180px;margin-left:8px;" ng-model="semester" id="semester">
			<option value="">--Select--</option>
			<option value="FIRST">1st</option>
			<option value="SECOND">2nd</option>
			<option value="THIRD">3rd</option>
			<option value="FOURTH">4th</option>
			<option value="FIFTH">5th</option>
			<option value="SIXTH">6th</option>
			<option value="SEVENTH">7th</option>
			<option value="EIGHTH">8th</option>
		</select>
		<button type="button" class="btn btn-success" style="margin-left:25px;" ng-click="showProblems()">Get Problems</button>
	</form>
	
	<table style="margin-left:200px;margin-top:50px;">
	<tbody>
		<tr><td style="background-color:#c6c9ce;">
		Student Id
			</td>
			<td style="background-color:#c6c9ce;">
		Problem Title
			</td>
			<td style="background-color:#c6c9ce;">
			Status
			</td>
		</tr>
		<tr class='clickable-row' data-href='ProblemDetails' ng-repeat="x in mydata" >
			<td><a href="../ProblemDetails?Id={{x.problemId}}">{{x.studentId}}</a></td>
			<td ><a href="../ProblemDetails?Id={{x.problemId}}">{{x.title}}</a></td>
			<td style="color : {{x.color}};">{{x.solution}}</td>
		</tr>
		
	</table>
	
	<script type="text/javascript">
	jQuery(document).ready(function($) {
	    $(".clickable-row").click(function() {
	        window.location = $(this).data("href");
	    });
	});
	</script>
</body>
</html>