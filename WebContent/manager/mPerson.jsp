<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>人员管理</title>
    <link rel="stylesheet" type="text/css" href="/ttms_ssm/dist/css/bootstrap.min.css">
    <script src="/ttms_ssm/dist/jquery-3.1.1.min.js"></script>
    <script src="/ttms_ssm/js/mPerson.js"></script>
    <link rel="stylesheet" href="/ttms_ssm/css/mPerson.css">
<script type="text/javascript">
function mess(id){
	$(".insert").removeClass("hide");
	//var v = document.getElementById("id").innerHTML;
	document.getElementById("empId").value = id;
	console.log(document.getElementById("empId").value);
}
</script>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top navbar-static " id="navbar-example" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">永乐票务</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/ttms_ssm/stdio/list">影厅管理 </a></li>
                <li><a href="/ttms_ssm/manager/mPlan.jsp">演出计划</a></li>
                <li><a href="/ttms_ssm/manager/mMovie.jsp">影片管理</a></li>
                <li class="active"><a href="/ttms_ssm/emp/list">人员管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                  <li><a href="/ttms_ssm/manager/mPersonal.jsp">个人中心</a></li>
                 <li><a href="/ttms_ssm/about.html">关于</a></li>
                <li><a href="javascript:void(0);" onclick="message()">帮助</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container context">
    <table class="table table-hover" id="table">
        <thead>
        <tr data-tabullet-map="id">
            <th width="50" data-tabullet-map="_index" data-tabullet-readonly="true">编号</th>
            <th data-tabullet-map="name">姓名</th>
            <th data-tabullet-map="level">密码</th>
            <th width="50" data-tabullet-type="edit"></th>
            <th width="50" data-tabullet-type="delete"></th>
        </tr>
        </thead>
    </table>	
    <c:if test="${not empty empList}">
	    <table>
			<thead>
				<tr>
					<th>员工编号</th>
					<th>员工账号</th>
					<th>员工姓名</th>
					<th>员工职位</th>
					<th>员工性别</th>
					<th>出生日期</th>
					<th>员工年龄</th>
					<th>员工电话</th>
					<th>员工邮箱</th>
					<th>员工地址</th>
					<th>员工头像</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
					<c:forEach items="${empList}" var="emp">
						<tr>
							<td>${emp.empId}</td>
							<td>${emp.empNo}</td>
							<td>${emp.empName}</td>
							<td>${emp.empPosition}</td>
							<td>${emp.sex}</td>
							<td>${emp.dob}</td>
							<td>${emp.age}</td>
							<td>${emp.empTel}</td>
							<td>${emp.empEmail}</td>
							<td>${emp.empAddress}</td>
							<td><img src="${pageContext.request.contextPath}${emp.empPhoto}" alt="头像" width="20" height="20"/></td>
							<%-- <td><a href="${pageContext.request.contextPath}/emp/getInfoById/${emp.empId}">修改</a></td> --%>
							<td><a href="#" onclick="mess(${emp.empId})">修改</a></td>
							<td><a href="${pageContext.request.contextPath}/emp/deleteEmp/${emp.empId}">删除</a></td>
						</tr>
					</c:forEach>				
			</tbody>
		</table>
	</c:if>
	<div class="insert hide">
		<form action="/ttms_ssm/emp/addEmp" method="post" enctype="multipart/form-data">
			员工账号：<input type="text" name="empNo"><br>
			员工姓名：<input type="text" name="empName"><br>
			员工职位：<select name="empPosition">
					<option value="管理员">管理员
					<option value="售票员">售票员
					<option value="普通员工">普通员工
				  </select><br>
			员工性别：<input type="radio" name="sex" value="男">男
					<input type="radio" name="sex" value="女">女<br>
			出生日期：<input type="date" name="dob"/><br>
			员工年龄：<input type="text" name="age"><br>
			电话号码：<input type="text" name="empTel"><br>
			员工邮箱：<input type="text" name="empEmail"><br>
			员工地址：<input type="text" name="empAddress"><br>
			员工头像：<input type="file" name="photo"><br>
			<input type="submit" value="添加">
		</form>
	</div>
	
	<div class="insert hide">
		<form action="/ttms_ssm/emp/updateEmp" method="post" enctype="multipart/form-data">
			员工编号：<input type="text" name="empId" id="empId" readonly="readonly" ><br/>
			员工账号：<input type="text" name="empNo"><br>
			员工密码：<input type="text" name="empPwd"><br>
			员工姓名：<input type="text" name="empName"><br>
			员工职位：<select name="empPosition">
					<option value="管理员">管理员
					<option value="售票员">售票员
					<option value="普通员工">普通员工
				  </select><br>
			员工性别：<input type="radio" name="sex" value="男">男
					<input type="radio" name="sex" value="女">女<br>
			出生日期：<input type="date" name="dob"/><br>
			员工年龄：<input type="text" name="age"><br>
			电话号码：<input type="text" name="empTel"><br>
			员工邮箱：<input type="text" name="empEmail"><br>
			员工地址：<input type="text" name="empAddress"><br>
			员工头像：<input type="file" name="photo">
			<input type="submit" value="修改">
		</form>
	</div>
</div>
</body>
</html>