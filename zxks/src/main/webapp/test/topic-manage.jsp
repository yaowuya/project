<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String classpath = request.getContextPath(); %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>命题管理</title>
    <link rel="stylesheet" type="text/css" href="<%=classpath%>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=classpath%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=classpath%>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=classpath%>/css/topic-manage.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</script>
</head>

<body>
    <div class="header">
        <div class="container-fluid">
            <div class="row-fluid">
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
        </div>
    </div>
    <div class="middle">
        <div class="container-fluid">
            <div class="row-fluid">
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
                                            <a class="test-sample" href="/zxks/Controller4Jims/toUrl003">样卷管理</a>
                                        </li>
                                        <li><a class="recruitment-manage" href="/zxks/Controller4Jims/toUrl002">征题管理</a></li>
                                        <li><a class="topic-sample" href="/zxks/Controller4Jims/toUrl0011">抽题管理</a></li>
                                        <li><a class="book-sample" href="/zxks/Controller4Jims/toUrl0013">教材变更管理</a></li>
                                        <li style="background-color: #E7E7E7;"><a class="question-sample" href="/zxks/Controller4Jims/toUrl009">题库管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 教材管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="/zxks/Controller4Jims/toUrl004">教材采购管理</a></li>
                                        <li><a href="/zxks/Controller4Jims/toUrl0010">入库调拨管理</a></li>
                                        <li><a href="/zxks/Controller4Jims/toUrl006">库存管理</a></li>
                                        <li><a href="/zxks/Controller4Jims/toUrl005">预定邮购及退书管理</a></li>
                                        <li><a href="/zxks/Controller4Jims/toUrl0012">教材财务管理</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="#">
                                        <i class="fa fa-star"></i> 成绩管理模块
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="#">考生录入管理</a></li>
                                        <li><a href="#">成绩查询</a></li>
                                        <li><a href="#">成绩修改</a></li>
                                        <li><a href="#">违纪作弊管理</a></li>
                                        <li><a href="#">合格证打印</a></li>
                                    </ul>
                                </li>
                                <li class="mid-left-li">
                                    <a href="exam-home.html">
                                        <i class="fa fa-star"></i> 考籍管理
                                        <b class="caret"></b>
                                    </a>
                                    <ul>
                                        <li><a href="exam-home.html">User Interface</a></li>
                                        <li class="mid-left-li-li">
                                            <a href="exam-home.html">
                                          毕业管理
                                          <b class="caret"></b>
                                        </a>
                                            <ul>
                                                <li><a href="exam-home.html">毕业预提管理</a></li>
                                                <li><a href="exam-home.html">毕业资格审核办理</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="exam-home.html">档案管理</a></li>
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
                        <h2><i class="fa fa-desktop color"></i> 命题管理 <small>自考管理系统</small></h2>
                    </div>
                    <div class="row-fluid mid-right-down">
                        <div class="col-md-12 mid-r-down">
                            <!-- 样卷管理 -->
                            <div class="test-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>样卷管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <div class="col-md-12">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" id="firstname" placeholder="${addQuestionBank}">
                                                </div>
                                                <div class="col-sm-4">
                                                    <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询未归还样卷</button>
                                                </div>
                                            </div>
                                        </form>
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover table-condensed">
                                                <caption class="text-center">
                                                    <strong>查询未归还样卷</strong>
                                                </caption>
                                                <thead>
                                                    <tr>
                                                        <th>样卷编号</th>
                                                        <th>样卷所属课程</th>
                                                        <th>出库时间</th>
                                                        <th>预归还时间</th>
                                                        <th>经手人</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Java</td>
                                                        <td>2013-3-3</td>
                                                        <td>2014-4-4</td>
                                                        <td>小明</td>
                                                        <td>
                                                            <a href="javascript:void;">
                                                            催还样卷
                                                        </a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="col-md-12">
                                        <ul class="nav nav-tabs">
                                            <li><a class="add-sample" href="javascript:void;">样卷入库</a></li>
                                            <li><a class="out-sample" href="javascript:void;">样卷出库</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footer">
                                    <div class="col-md-12">
                                        <div class="add-sample">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">样卷编号</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="firstname" placeholder="请输入样卷编号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">样卷所属课程</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入样卷所属课程">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">入库时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入入库时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">经手人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入经手人">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                        <button type="submit" class="btn btn-default">重置</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="out-sample">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">样卷编号</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="firstname" placeholder="请输入样卷编号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">样卷所属课程</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入样卷所属课程">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">出库时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入出库时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">预归还时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入预归还时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">经手人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入经手人">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                        <button type="submit" class="btn btn-default">重置</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 征题管理部分 -->
                            <div id="recruitment-manage" class="recruitment-manage">
                                <div class="row-fluid r-down-head">
                                    <h3>征题管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a class="recruitment-plan" href="javascript:void;">制定征题计划</a></li>
                                        <li><a class="add-recruitment" href="javascript:void;">新题录入</a></li>
                                        <li><a class="out-recruitment" href="javascript:void;">样卷出库</a></li>
                                        <li><a class="auditing-recruitment" href="javascript:void;">审题管理</a></li>
                                    </ul>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="col-md-12">
                                        <div class="recruitment-plan">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/query" method="post">
                                                <div class="form-group">
                                                    <label for="" class="col-sm-2 control-label">课程</label>
                                                    <div class="col-sm-4">
                                                        <input name="paperType" type="text" class="form-control" id="firstname" placeholder="请输入课程">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <p></p>
                                                        <p class="text-danger">此课程试卷命题数量不足100题</p>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>样卷列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>所属课程</th>
                                                            <th>出题人</th>
                                                            <th>入库时间</th>
                                                            <th>是否审核</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${questionbankList}" var="questionbank">
                                                        <tr>
                                                            <td>${questionbank.getQuestionbankId()}</td>
                                                            <td>${questionbank.getPaperType()}</td>
                                                            <td>${questionbank.getWriter()}</td>
                                                            <td>${questionbank.getInTime()}</td>
                                                            <td>${questionbank.getStatus()}</td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div id="add-recruitment" class="add-recruitment">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/add" method="post">
                                                <c:if  test = "${addQuestionBank == 'addError'}">
                                                <p class="text-danger">该试卷已经存在</p>
                                                </c:if>
                                                <c:if  test = "${addQuestionBank == 'addSuccess'}">
                                                <p class="text-danger">试卷添加成功</p>
                                                </c:if>
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">试卷编号</label>
                                                    <div class="col-sm-10">
                                                        <input name="questionbankId" type="text" class="form-control" id="firstname" placeholder="请输入样卷编号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">试卷所属课程</label>
                                                    <div class="col-sm-10">
                                                        <input name="paperType" type="text" class="form-control" id="lastname" placeholder="请输入样卷所属课程">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">命题人</label>
                                                    <div class="col-sm-10">
                                                        <input name="writer" type="text" class="form-control" id="lastname" placeholder="请输入命题人">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">入库时间</label>
                                                    <div class="col-sm-10">
                                                        <input name="Time" type="text" class="form-control" id="lastname" placeholder="请输入入库时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                        <button type="reset" class="btn btn-default">重置</button>
                                                    </div>
                                                </div>

                                            </form>
                                        </div>
                                        <div class="out-recruitment">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">样卷编号</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="firstname" placeholder="请输入样卷编号">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">样卷所属课程</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入样卷所属课程">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">出库时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入出库时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">预归还时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入预归还时间">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">经手人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入经手人">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                        <button type="submit" class="btn btn-default">重置</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="auditing-recruitment">
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <label for="" class="col-sm-2 control-label">样卷</label>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" id="firstname" placeholder="输入样卷信息">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>样卷列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>所属专业</th>
                                                            <th>所属课程</th>
                                                            <th>出题人</th>
                                                            <th>入库时间</th>
                                                            <th>是否审核</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <td>4</td>
                                                        <td>软件工程</td>
                                                        <td>操作系统</td>
                                                        <td>习近平</td>
                                                        <td>2016-07-10</td>
                                                        <td>未审核</td>
                                                        <td>
                                                            <a href="javascript:void;">通过</a>
                                                            <a href="javascript:void;">作废</a>
                                                        </td>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 抽题管理 -->
                            <div class="topic-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>抽题管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <div class="col-md-12">
                                        <form class="form-inline" role="form">
                                            <div class="form-group">
                                                <label class="control-label" for="name">专业：</label>
                                                <input type="text" class="form-control" id="name" placeholder="请输入专业">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label" for="name">课程：</label>
                                                <input type="text" class="form-control" id="name" placeholder="请输入课程">
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label" for="name">数量：</label>
                                                <input type="text" class="form-control" id="name" placeholder="请输入数量">
                                            </div>
                                            <button type="submit" class="btn btn-success w-h-btn">录入</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="col-md-12">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover table-condensed">
                                                        <caption class="text-center">
                                                            <strong>抽题结果</strong>
                                                        </caption>
                                                        <thead>
                                                            <th>题目ID</th>
                                                            <th>所属专业</th>
                                                            <th>所属课程</th>
                                                            <th>题目类型</th>
                                                            <th>难度</th>
                                                            <th>分值</th>
                                                            <th>得分率</th>
                                                            <th>是否已用</th>
                                                            <th>操作</th>
                                                        </thead>
                                                        <tbody>
                                                            <td>1</td>
                                                            <td>软件工程</td>
                                                            <td>计算机网络</td>
                                                            <td>选择题</td>
                                                            <td>简单</td>
                                                            <td>5分</td>
                                                            <td>75%</td>
                                                            <td>已用</td>
                                                            <td>
                                                                <input type="checkbox">
                                                            </td>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-primary w-h-btn pull-right">提交</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- 教材变更管理 -->
                            <div class="book-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>教材变更管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover table-condensed">
                                            <caption class="text-center">
                                                <strong>教材变更结果列表</strong>
                                            </caption>
                                            <thead>
                                                <tr>
                                                    <th>教材ID</th>
                                                    <th>所属专业</th>
                                                    <th>所属课程</th>
                                                    <th>出版社</th>
                                                    <th>变更时间</th>
                                                    <th>是否更换</th>
                                                    <th>查看题库</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>软件工程</td>
                                                    <td>计算机网络</td>
                                                    <td>机械工程出版社</td>
                                                    <td>2016-07-10</td>
                                                    <td>未更换</td>
                                                    <td>
                                                        <a href="javascript:void;">计算机网络题库</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover table-condensed">
                                            <caption class="text-center">
                                                <strong>题库链接列表</strong>
                                            </caption>
                                            <thead>
                                                <tr>
                                                    <th>试卷ID</th>
                                                    <th>所属专业</th>
                                                    <th>所属课程</th>
                                                    <th>出题人</th>
                                                    <th>入库时间</th>
                                                    <th>是否审核</th>
                                                    <th>操作</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <td>1</td>
                                                <td>软件工程</td>
                                                <td>计算机网络</td>
                                                <td>机械工程出版社</td>
                                                <td>2016-07-10</td>
                                                <td>未更换</td>
                                                <td>
                                                    <a href="javascript:void;">通过</a>
                                                    <a href="javascript:void;">作废</a>
                                                </td>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!-- 题库管理 -->
                            <div class="question-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>题库管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <div class="col-md-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a class="statement-page" href="javascript:void;">命题库页面</a></li>
                                            <li><a class="product-page" href="javascript:void;">成品库页面</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="col-md-12">
                                        <div class="statement-page">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>命题题库列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材ID</th>
                                                            <th>所属专业</th>
                                                            <th>所属课程</th>
                                                            <th>出版社</th>
                                                            <th>变更时间</th>
                                                            <th>是否更换</th>
                                                            <th>查看题库</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>软件工程</td>
                                                            <td>计算机网络</td>
                                                            <td>机械工程出版社</td>
                                                            <td>2016-07-10</td>
                                                            <td>未更换</td>
                                                            <td>
                                                                <a href="javascript:void;">计算机网络题库</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="product-page">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>成品题库列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材ID</th>
                                                            <th>所属专业</th>
                                                            <th>所属课程</th>
                                                            <th>出版社</th>
                                                            <th>变更时间</th>
                                                            <th>是否更换</th>
                                                            <th>查看题库</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>软件工程</td>
                                                            <td>计算机网络</td>
                                                            <td>机械工程出版社</td>
                                                            <td>2016-07-10</td>
                                                            <td>未更换</td>
                                                            <td>
                                                                <a href="javascript:void;">计算机网络题库</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid footing">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-12 footer">
                    <p class="text-center">
                        Copyright 2013 © - Bootstrap Themes
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="<%=classpath%>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=classpath%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=classpath%>/js/index.js"></script>
    <script type="text/javascript" src="<%=classpath%>/js/topic-manage.js"></script>
</body>

</html>
