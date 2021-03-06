<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../dist/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="../css/personal.css" rel="stylesheet" media="all"/>
    <link href="../css/footer.css" rel="stylesheet" media="all"/>
    <script type="text/javascript" src="../dist/jquery-3.1.1.min.js"></script>
    <script src="../js/personal.js"></script>
</head>
<body>
<div class="header-top">
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
	                <li><a href="/ttms_ssm/manager/mPerson.jsp">人员管理</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="#">个人中心</a></li>
                    <li><a href="/ttms_ssm/about.html">关于</a></li>
                    <li><a href="javascript:void(0);" onclick="message()">帮助</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

</div>
<div class="header">
    <div class="container">
        <div class="col-md-8 header-left">
            <div class="col-sm-5 pro-pic">
                <img class="img-responsive" src="../images/pic1.jpg" alt=" "/>
            </div>
            <div class="col-sm-5 pro-text">
                <h1>邹雄鑫</h1>
                <p>前台售票员</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-4 header-right ">
            <ul class="list-left">
                <li>电话:</li>
                <li>邮箱:</li>
                <li>性别：</li>
                <li>地址:</li>
            </ul>
            <ul class="list-right">
                <li>15829257636</li>
                <li><a href="mailto:info@example.com">734398501@.com</a></li>
                <li>男</li>
                <li>西安邮电大学东区</li>
            </ul>
            <div class="clearfix">
                <button class="btn btn-info btn-sm display" onclick="output()">编辑资料</button>
            </div>
        </div>
    </div>
</div>
<div id="about" class="about">
    <div class="container form hide">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">邮箱</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">密码</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">电话</label>
                <input type="number" class="form-control" id="exampleInputTel" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputFile">上传头像</label>
                <input type="file" id="exampleInputFile">
            </div>
            <button type="submit" class="btn btn-info" onclick="output()">提交</button>
        </form>
        <hr>
    </div>
    <div class="container">
        <h3 class="tittle">关于我</h3>
        <p class="abt-para">Sed ut perspiciatis unde omnis iste natus error sit
            voluptatem accusantium doloremque laudantium, totam
            rem aperiam, eaque ipsa quae ab illo inventore veritatis
            et quasi architecto beatae vitae dicta sunt explicabo.
            Nemo enim ipsam voluptatem quia voluptas sit aspernatur . </p>
    </div>

</div>
<footer class="footer">
    <p>@2016 永乐票务 yongle.com 京ICP证160733号 京ICP备16022489号-1 京公网安备 11010502030881号 网络文化经营许可证 电子公告服务规则</p>
    <p>北京永乐文化传媒有限公司</p>
</footer>
</body>
</html>