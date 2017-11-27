<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../Source/css/Student_PerformancePanel.css">
<script type="text/javascript">
// Angular control begins-----
var app = angular.module("myApp",[]);
app.controller('myCtrl',function($scope,$http){
	$scope.showPerformance=function()
	{
		// Getting the value from the input field and select opton
		var id=document.getElementById("studentId").value;
		var semester=document.getElementById("semester").value;
		var performance=document.getElementById("performance").value;
		// Sending data to the cntroller
		$http.get("../PerformancePanel?studentId="+id+"&semester="+semester+"&option="+performance+"",{})
	.then(function(response)
	{
		// "mydata" is storing the response from the controller
		$scope.mydata=response.data;
		(function() {
			document.getElementById("internalMark").style.display="none";
			document.getElementById("attendance").style.display="none";
			document.getElementById("remark").style.display="none";
			document.getElementById("semesterMark").style.display="none";
			document.getElementById("internalPerformance").style.display="none";
		})();
		if (performance === "internalMarks")
			document.getElementById("internalMark").style.display="block";
		
		else if (performance === "internalPerformance"){
			document.getElementById("internalPerformance").style.display="block";
			// Arrays storing the value of diffent subjects and marks
			var subjetNames = [];
			var firstInternalMarks = [];
			var secondInternalMarks = [];
			var thirdInternalMarks = [];
			angular.forEach($scope.mydata, function(value, key){
				subjetNames.push(value.subjectName);
				firstInternalMarks.push(value.firstInternalMark);
				secondInternalMarks.push(value.secondInternalMark);
				thirdInternalMarks.push(value.thirdInternalMark);
		         });
			
			//internal performance graph start
			new Chart(document.getElementById("mixed-chart"), {
			    type: 'bar',
			    data: {
			      labels: subjetNames,
			      datasets: [{
			          label: "",
			          type: "line",
			          borderColor: "#8e5ea2",
			          data: firstInternalMarks,
			          fill: false
			        }, {
			          label: "",
			          type: "line",
			          borderColor: "#3e95cd",
			          data: secondInternalMarks,
			          fill: false
			        },{
			          label: "",
			          type: "line",
			          borderColor: "yellow",
			          data: thirdInternalMarks,
			          fill: false
			        }, {
			          label: "",
			          type: "bar",
			          backgroundColor: "rgba(0,0,0,0.2)",
			          data: firstInternalMarks,
			        }, {
			          label: "",
			          type: "bar",
			          backgroundColor: "rgba(0,0,0,0.2)",
			          backgroundColorHover: "#3e95cd",
			          data: secondInternalMarks,
			        }, {
			          label: "",
			          type: "bar",
			          backgroundColor: "rgba(0,0,0,0.2)",
			          backgroundColorHover: "#3e95cd",
			          data: thirdInternalMarks
			        }
			      ]
			    },
			    options: {
			      title: {
			        display: true,
			        text: 'Internal Performances of 3 Months'
			      },
			      legend: { display: false }
			    }
			});
			//internal performance graph end	
		}
		else if (performance === "semesterMarks")
			document.getElementById("semesterMark").style.display="block";
		else if (performance === "fetchRemarks")
			document.getElementById("remark").style.display="block";
		else if (performance === "attendance")
			document.getElementById("attendance").style.display="block";
	},
	function(error)
	{
		alert("error");
		$scope.myWelcome = response.statusText;
	});
	}
});
// Angular controll ends.
</script>
</head>
<%
int studentId = Integer.parseInt(request.getParameter("uid"));
String name = request.getParameter("name");
%>

<body ng-app="myApp" ng-controller="myCtrl">
<div style="margin-left:30px;margin-top:20px;border:1px solid;
		padding:6px;background:#415677;width:450px;
		color:white;font-size:18px;border-top-right-radius:10em;">Performance Panel</div>
		<hr style="margin-left:32px;margin-top:-2px;border-color:#415677;width:1050px;">
<form>
		<table style="margin-left:40px;margin-top:-10px;">
		<tr>
		 <td class="div_style">Regd. No </td>
		 <td><input type="text" class="rowvalue" value=<%=studentId %> id="studentId"  disabled></td>
		 <td></td>
		 <td></td> 
		 <td class="div_style">Student Name </td>
		 <td><input type="text" class="rowvalue" value="<%=name %>"  disabled></td>
		</tr>
		</table>
		<table style="margin-left:40px;margin-top:5px;">
		<tr>
		<td class="div_style">Semester </td>
		<td><select ng-model="semester" class="rowvalue" id="semester">
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
		<td></td>
		<td></td>
		<td class="div_style">Options </td>
		<td><select ng-model="performance" class="rowvalue" id="performance">
			<option value="">--Select--</option>
			<option value="attendance">Attendance</option>
			<option value="internalMarks">Internal Marks</option>
			<option value="internalPerformance">Internal Performance</option>
			<option value="semesterMarks">Semester Marks</option>
			<option value="fetchRemarks">Remarks</option>
		</select></td>
		</tr>
		</table>
		<button type="button" class="btn btn-info" style="margin-left:820px;margin-top:5px;border-radius:none;" ng-click="showPerformance()">Get Status</button>
		<!-- This button is for contacting parents -->
		<button onclick="location.href='../ContactParents?studentId=<%= studentId%>&error=2'" class="btn btn-info" style="margin-top:5px;background-color:#415677;">Contact Parents</button>
	</form>
	<hr style="margin-left:32px;margin-top:-2px;border-color:#415677;width:1050px;">
	<!-- This table is showing internal marks -->
	<div id="internalMark" style="display:none;">
		<table class="table table-bordered" style="margin-left:35px;width:1010px;">
		<tr style="background-color:#a2b3c4;">
			<th>Subject Name</th>
			<th>First Internal Mark</th>
			<th>Second Internal Mark</th>
			<th>Third Internal Mark</th>
		</tr>
		<tr ng-repeat="x in mydata">
			<td>{{x.subjectName}}</td>
			<td>{{x.firstInternalMark}}</td>
			<td>{{x.secondInternalMark}}</td>
			<td>{{x.thirdInternalMark}}</td>
		</tr>
	</table>
	</div>
	<!-- This division is showing attendance progress bar -->
	<div id="attendance" style="display:none;">
		<div class="progressBar">
			<table style="margin-left:150px;margin-top:8px;">
				<tr>
				<th style="padding-left:10px;">Subject Name</th>
				<th style="padding-left:170px;">Attendance</th>
				</tr>
			
				<tr ng-repeat="x in mydata">
					<td style="padding-left:10px;">{{x.subjectName}}</td>
					<td style="width:400px;padding-top:14px;padding-left:60px;">
						<div class="progress">
						    <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:{{x.attendanceInPercentage}}%;background-color:{{x.color}}">
						      {{x.attendanceInPercentage}}%
						    </div>
					    </div>
				    </td>
				</tr>
			</table>
		</div>
	</div>
	<!-- This division is showing remarks of both parent and mentor -->
	<div id="remark" style="display:none;">
		<table class="table table-bordered" style="margin-left:35px;width:1010px;">
		<tr style="background-color:#a2b3c4;">
			<th>Date</th>
			<th>Talked With</th>
			<th>Mentor Remark</th>
			<th>Guardian Remark</th>
			
		</tr>
		<tr ng-repeat="x in mydata">
			<td>{{x.date}}</td>
			<td>{{x.guardian}}</td>
			<td>{{x.mentorRemark}}</td>
			<td>{{x.parentRemark}}</td>
			
		</tr>
	</table>
	</div>
	<!-- This division is showing Semester marks of the student -->
	<div id="semesterMark" style="display:none;">
		<table class="table table-bordered" style="margin-left:100px;width:800px;">
		<tr style="background-color:#a2b3c4;">
			<th>Suject Name</th>
			<th>Mark Obtained</th>
		</tr>
		<tr ng-repeat="x in mydata">
			<td>{{x.subjectName}}</td>
			<td>{{x.semesterMark}}</td>
		</tr>
	</table>
	</div>
	<!-- This division is presenting a performance graph of internal marks of the student -->
	<div id="internalPerformance" style="display:none;width:790px;height:200px;margin-left:90px;">
		<canvas id="mixed-chart">
		</canvas>
	</div>
</body>
</html>