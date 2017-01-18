<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>毕业生预提管理</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="container-fluid">
        <div class="row-fluid header">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <h1 class="pull-left">
              <a href="index.html">四川省高等教育自学考试管理系统</a>
            </h1>
            </div>
            <div class="col-md-6">
                <nav class="navbar vavbar-deafault pull-right" role="navigation">
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="center.html" target="" class="dropdown-toggle color-green dropdown-a" data-toggle="dropdown">
                                    <i class="fa fa-comments"></i> 消息
                                    <span class="label label-success">5</span>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="personal.html" target="">个人中心</a>
                                    </li>
                                    <li>
                                        <a href="center.html" target="">我的病历夹</a>
                                    </li>
                                    <li>
                                        <a href="personal.html" target="">我要挂号
                                            </a>
                                    </li>
                                    <li>
                                        <a href="personal.html" target="">我的挂号
                                            </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="center.html" target="" class="dropdown-toggle color-green dropdown-a" data-toggle="dropdown">
                                    <i class="fa fa-user"></i>
                                    <span>XXX</span>管理员，您好！
                                    <span class="label label-info">5</span>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="personal.html" target="">个人中心</a>
                                    </li>
                                    <li>
                                        <a href="center.html" target="">我的病历夹</a>
                                    </li>
                                    <li>
                                        <a href="personal.html" target="">我要挂号
                                            </a>
                                    </li>
                                    <li>
                                        <a href="personal.html" target="">我的挂号
                                            </a>
                                    </li>
                                    <li>
                                        <a href="personal.html" target="">
                                                  个人健康体检
                                                </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown"><a class="dropdown-a" href="javascript:void;">退出</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row-fluid middle">
            <div class=" col-md-offset-1 col-md-2 mid-left">
                <nav class="navbar navbar-default" role="navigation">
                        <div class="navbar-header" style="width: 100%;">
                            <a class="navbar-brand" href="index.html" style="width: 100%;">
                                <i class="fa fa-home"></i>首页
                            </a>
                        </div>
                        <div>
                            <ul class="nav navbar-nav">
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 用户管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="#">登录注册</a></li>
                                        <li><a href="#">用户管理</a></li>
                                        <li><a href="#">权限管理</a></li>
                                        <li><a href="#">报名管理</a></li>
                                        <li><a href="#">考生报考</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 计划管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="#">考点管理</a></li>
                                        <li><a href="#">考点开考专业管理</a></li>
                                        <li><a href="#">专业管理</a></li>
                                        <li><a href="#">课程及教材管理</a></li>
                                        <li><a href="#">毕业条件管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="topic-manage.html">
                                        <i class="fa fa-star"></i>命题管理
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="topic-manage.html">样卷管理</a>
                                        </li>
                                        <li><a href="topic-manage.html">征题管理</a></li>
                                        <li><a href="topic-manage.html">抽题管理</a></li>
                                        <li><a href="topic-manage.html">教材变更管理</a></li>
                                        <li><a href="topic-manage.html">题库管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="text-book.html">
                                        <i class="fa fa-star"></i> 教材管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="text-book.html">教材采购管理</a></li>
                                        <li><a href="text-book.html">入库调拨管理</a></li>
                                        <li><a href="text-book.html">库存管理</a></li>
                                        <li><a href="text-book.html">预定邮购及退书管理</a></li>
                                        <li><a href="text-book.html">教材财务管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 成绩管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="grades.html">成绩管理</a></li>
                                        <li><a href="合格证打印.html">合格证打印</a></li>
                                        <li><a href="违纪作弊管理.html">违纪作弊管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="exam-home.html">
                                        <i class="fa fa-star"></i> 考籍管理
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="毕业生预提管理.html">毕业生预提管理</a></li>
                                        <li><a href="毕业资格审核办理.html">毕业资格审核办理</a></li>
                                        <li><a href="毕业错误证明办理.html">毕业错误证明办理</a></li>
                                        <li><a href="毕业证明办理.html">毕业证明办理</a></li>
                                        <li><a href="出国留学证明办理.html">出国留学证明办理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 毕业管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="#">毕业资格审核办理</a></li>
                                        <li><a href="#">毕业错误证明办理</a></li>
                                        <li><a href="#">毕业遗失证明办理</a></li>
                                        <li><a href="#">出国留学证明办理</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
            </div>
            <div class="col-md-8 mid-right">
                <div class="row-fluid mid-right-up">
                    <h2><i class="fa fa-desktop color"></i> 欢迎使用 <small>自考管理系统/考籍管理</small></h2>
                    <hr>
                </div>
                <div class="row-fluid mid-right-down">
                    <h4>考籍管理</h4>
                    <ul class="nav nav-tabs active">
                    <li>
                        <a href="#panel-172635" data-toggle="tab">增加毕业预提生</a>
                    </li>
                    <li>
                        <a href="#panel-477407" data-toggle="tab">浏览毕业预提生</a>
                    </li>
                    <li>
                        <a href="#panel-477408" data-toggle="tab">删除毕业预提生</a>
                    </li>
                </ul>
                <div class="tab-content active">
                    <div class="tab-pane cdl4" id="panel-172635">
                      <form class="form-horizontal" role="form" action="<c:url value='/ERNM/CSTBG' />">
                                                <div class="form-group">
                                                    <label for="f1" class="col-sm-2 control-label">考生编号</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" name="studentId" placeholder="考生编号" value="">
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-9">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                    </div>
                                                </div>
                                            </form>      
                    </div>
                    <div class="tab-pane" id="panel-477407">
                        <form class="form-horizontal" role="form" action="<c:url value='/ERNM/QBGM' />">
                                                <div class="form-group" style="margin-top:30px;">
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" placeholder="请输入查询条件" name="alterStudentId">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" name="actionPP" value="search" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业预提生考试信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>考生姓名</th>
                                                            <th>考生编号</th>
                                                            <th>考点名称</th>
                                                            <th>考试号</th>
                                                            <th>座位号</th>
                                                            <th>考试时间</th>
                                                        </tr>
                                                        <tr>
                                                           <!-- <th>${}</th>
                                                            <th>${}</th>
                                                            <th>${}</th>
                                                            <th>${}</th>
                                                            <th>${}</th>
                                                            <th>${}</th> -->
                                                        </tr>
                                                    </thead>
                                                </table>
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>毕业预提生个人信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>性别</th>
                                                            <th>固话</th>
                                                            <th>移动电话</th>
                                                            <th>工作单位</th>
                                                            <th>工作电话</th>
                                                        </tr>
                                                        <tr>
                                                            <th>性别</th>
                                                            <th>固话</th>
                                                            <th>移动电话</th>
                                                            <th>工作单位</th>
                                                            <th>工作电话</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                                <strong style="margin:20px;">请选择修改信息：</strong>
                                                       
                                                        <input type="text" placeholder="在这里输入" style="margin:20px;">
                                                        <button type="submit" name="actionPP" value="Alter" style="margin:20px;" onclick="ifchange()">确认修改</button>
                                                </form>
                                            </div>
                    </div>
                    <div class="tab-pane" id="panel-477408">
                        <form class="form-horizontal" role="form">
                                                <div class="form-group" style="margin-top:30px;">
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" placeholder="请输入查询条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业预提生考试信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>考生姓名</th>
                                                            <th>考生编号</th>
                                                            <th>报考地点编号</th>
                                                            <th>考试号</th>
                                                            <th>座位号</th>
                                                            <th>考试时间</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>毕业预提生个人信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>性别</th>
                                                            <th>固话</th>
                                                            <th>移动电话</th>
                                                            <th>工作单位</th>
                                                            <th>工作电话</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                                <button type="submit" style="margin-left:700px;margin-top:20px;" onclick="ifdelete()">删除</button>
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="col-md-12 footer">
                <p class="text-center">
                    Copyright 2013 © - Bootstrap Themes
                </p>
            </div>
        </div>
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/index.js"></script>
    <script type="text/javascript" src="<%=path %>/js/cdl.js"></script>
<!--     <script type="text/javascript">
        $(".tab-content #panel-172635").show().siblings('div').hide();
    </script> -->
</body>

</html>
