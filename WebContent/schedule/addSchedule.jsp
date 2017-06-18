<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加演出计划</title>
<script type="text/javascript">
	$(function(){
		$.get("/ttms_ssm/sche/",{}, function(data){
			var html = "<option value="0"></option>"
		});			
	});
</script>
</head>
<body>
	<form action="/ttms_ssm/sche/addSche" method="post">
		演出厅<select name="stdioId" id="stdioId">
				
			</select>	
	</form>
</body>
</html>