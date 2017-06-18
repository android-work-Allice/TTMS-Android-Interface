<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>人员管理</title>
    <link rel="stylesheet" type="text/css" href="/ttms_ssm/dist/css/bootstrap.min.css">
    <script src="/ttms_ssm/dist/jquery-3.1.1.min.js"></script>
    <script src="/ttms_ssm/js/mPlan.js"></script>
    <link rel="stylesheet" href="/ttms_ssm/css/mPerson.css">
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
                <li class="active"><a href="#">演出计划</a></li>
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
            <!--<th width="50" data-tabullet-map="_index" data-tabullet-readonly="true">编号</th>-->
            <th data-tabullet-map="name">演出厅编号</th>
            <th data-tabullet-map="level">一周上映影片</th>
            <th width="50" data-tabullet-type="edit"></th>
            <!--<th width="50" data-tabullet-type="delete"></th>-->
        </tr>
        </thead>
    </table>
</div>
</body>
</html>