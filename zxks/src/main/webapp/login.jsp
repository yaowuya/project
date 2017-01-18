<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
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
              <a href="javascript:void(0)">四川省高等教育自学考试管理系统</a>
            </h1>
            </div>
            <div class="col-md-6">
                <nav class="navbar vavbar-deafault pull-right" role="navigation">
                    <div class="collapse navbar-collapse" id="example-navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="dropdown"><a class="dropdown-a" href="javascript:void(0)">登录</a></li>
                            <li class="dropdown"><a class="dropdown-a" href="regist.jsp">注册</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row-fluid middle">
            <div class="col-md-offset-1 col-md-6 login-mid-left">
            </div>
            <div class="col-md-4">
                <div class="login-mid-right">
                    <div class="panel">
                        <div class="panel-heading">
                            <h1 class="panel-title text-center">
                                 登录
                             </h1>
                            <hr>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" action="user/login">
                                <div class="form-group">
                                    <label for="email" class="col-sm-3 control-label">邮箱</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="email" value="${u.email }" id=""email" placeholder="请输入邮箱">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-sm-3 control-label">密码</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" name="password" value="${u.password }" id="password" placeholder="请输入密码">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-sm-3 control-label">验证码</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" name="verifyCode">
                                    </div>
                                    <div class="col-sm-3">
                                          <img id="vCode" src="<c:url value='user/verifyCode'/>" >
                                    </div>
                                    <div class="col-sm-3">
                                    	<a class="btn btn-info" href="javascript:_change() " style="padding: 6px 15px;">换一张</a>
                                    </div> 
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-9">
                                        <button type="submit" class="btn btn-primary">登录</button>
                                        <a href="regist.jsp" class="btn btn-default pull-right" role="button">注册</a>
                                    </div>
                                </div>
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
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript">
		function _change(){
			var ele = document.getElementById("vCode");
			ele.src="<c:url value='user/verifyCode'/>?r=" + new Date().getTime();
		}
	</script>
</body>
</html>