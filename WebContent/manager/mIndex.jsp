<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>人员管理</title>
    <link rel="stylesheet" type="text/css" href="/ttms_ssm/dist/css/bootstrap.min.css">
    <script src="/ttms_ssm/dist/jquery-3.1.1.min.js"></script>
    <script src="/ttms_ssm/js/mIndex.js"></script>
    <link rel="stylesheet" href="/ttms_ssm/css/mPerson.css">
    
    <script>
    function mess(id){
    	$(".insert").removeClass("hide");
    	//var v = document.getElementById("id").innerHTML;
    	document.getElementById("stdioId").value = id;
    	console.log(document.getElementById("stdioId").value);
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
                <li class="active"><a href="#">影厅管理 </a></li>
                <li><a href="/ttms_ssm/manager/mPlan.jsp">演出计划</a></li>
                <li><a href="/ttms_ssm/manager/mMovie.jsp">影片管理</a></li>
                <li><a href="/ttms_ssm/manager/mPerson.jsp">人员管理</a></li>
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
            <th data-tabullet-map="name">演出厅编号</th>
            <th data-tabullet-map="level">座位数量</th>
            <th width="50" data-tabullet-type="edit"></th>
            <th width="50" data-tabullet-type="delete"></th>
        </tr>
        </thead>
        </table>
	<c:if test="${not empty stdList}">
        <table>
			<thead>
				<tr>
					<th>影厅编号</th>
					<th>影厅名称</th>
					<th>座位行数</th>
					<th>座位列数</th>
					<th>影厅类型</th>
					<th>影厅类型</th>
					<th colspan="2">操作</th>
				</tr>
			</thead>
			<tbody>
					<c:forEach items="${stdList}" var="std">
						<tr>
							<td>${std.stdioId}</td>
							<td>${std.stdioName}</td>
							<td>${std.stdioRows}</td>
							<td>${std.stdioCols}</td>
							<td>${std.stdioType}</td>
							<td>${std.stdioDesc}</td>
							<td><a href="#" onclick="mess(${std.stdioId})">修改</a></td>
							<td><a href="${pageContext.request.contextPath}/stdio/deleteStdio/${std.stdioId}">删除</a></td>
						</tr>
					</c:forEach>				
			</tbody>
		</table>
	</c:if>
	<form action="/ttms_ssm/stdio/add" method="post">
		演出厅名称：<input type="text" name="stdioName"><br>
		演出厅行号：<input type="text" name="stdioRows"><br>
		演出厅列号：<input type="text" name="stdioCols"><br>
		演出厅类型：<select id="stdioType" name="stdioType">
					<option value="0">请选择演出厅类型</option>
					<option value="1">3D影厅</option>
					<option value="2">2D影厅</option>
					<option value="3">普通影厅</op.tion>
				</select><br>
		演出厅描述：<textarea rows="3" cols="20" name="stdioDesc"></textarea><br>
		<input type="submit" value="添加">
	</form>
	<div class="insert hide">
	
	<form action="/ttms_ssm/stdio/update" method="post">
		演出厅编号：<input type="text" name="stdioId" id="stdioId" readonly="readonly"><br>
		演出厅名称：<input type="text" name="stdioName"><br>
		演出厅行数：<input type="text" name="stdioRows"><br>
		演出厅列数：<input type="text" name="stdioCols"><br>
		演出厅类型：<select id="stdioType" name="stdioType">
					<option value="0">请选择演出厅类型</option>
					<option value="1">3D影厅</option>
					<option value="2">2D影厅</option>
					<option value="3">普通影厅</option>
				</select><br>
		演出厅描述：<textarea rows="3" cols="20" name="stdioDesc"></textarea><br>
		<input type="submit" value="修改">
	</form>
	</div>
</div>
</body>
</html>