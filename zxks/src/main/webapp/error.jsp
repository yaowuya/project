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
    <title>ERROR</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/text-book.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="header">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-1"></div>
                <div class="col-md-4">
                    <h1 class="pull-left">
                       <a href="<%=path%>/login.jsp">四川省高等教育自学考试管理系统</a>
                    </h1>
                </div>
                <div class="col-md-6">
                </div>
                <div class="col-md-1"></div>
            </div>
        </div>
    </div>
    <div class="middle">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <img src="<%=path%>/images/error.jpg" style="width:100%;">
                </div>
                <div class="col-md-1"></div>
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
    <script src="<%=path%>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/index.js"></script>
</body>

</html>
