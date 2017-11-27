<%@ page import="bean.StudentBean" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
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
<%
	List<StudentBean> problems = (List<StudentBean>)request.getAttribute("problems");
%>
<body>

<div style="margin-left:30px;margin-top:20px;border:1px solid;
		padding:6px;background:#415677;width:450px;
		color:white;font-size:18px;border-top-right-radius:10em;">View Problems</div>
		<hr style="margin-left:32px;margin-top:-2px;border-color:#415677;width:1050px;">

	<table style="margin-left:200px;margin-top:60px;">
	<tbody>
	<tr><td style="background-color:#c6c9ce;">
	Problem Id
	</td>
	<td style="background-color:#c6c9ce;">
	Problem 
	</td></tr>
	<%
	for(StudentBean bean : problems){
		%>
		<tr class='clickable-row' data-href='ProblemDetails?Id=<%= bean.getProblemId() %>'>
		<td>
		<%= bean.getProblemId() %>
		</td>
		<td>
		<%= bean.getTitle() %>
		
		</td>
		</tr>
		
		<%
	}
	%>
	</table>
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".clickable-row").click(function(){
			window.location = $(this).data("href");
		});
	});
</script>
</body>
</html>