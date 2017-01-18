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
    <title>违纪作弊管理</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/grades.css">
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
                                        <i class="fa fa-user"></i>
                                        <span>${ user.userName}</span> 您好！
                                        
                                    </a>
                                </li>
                                <li class="dropdown"><a class="dropdown-a" href="<%=path %>/user/logout">退出</a></li>
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
                            <a class="navbar-brand" href="<%=path %>/index.jsp" style="width: 100%;">
                                <i class="fa fa-home"></i>首页
                            </a>
                        </div>
                        <div>
                            <ul class="nav navbar-nav">
                            	<c:forEach items="${fatherList }" var="father">
	                                <li class="mid-left-li mid-left-li${father.menuId }">
	                                    <a href="#">
	                                        <i class="fa fa-star"></i> ${father.fatherName }
	                                        <b class="caret"></b>
	                                    </a>
	                                    <ul>
	                                    	<c:forEach items="${menuList }" var="menu">                                
	                                        	<c:if test="${menu.fatherName == father.fatherName }">
	                                        		<li>
	                                        			<a href="<%=path %>${menu.url }">${menu.menuName }</a>
	                                        		</li>
	                                        	</c:if>
	                                        </c:forEach>
	                                    </ul>
	                                </li>
                                </c:forEach>
                                
                            </ul>
                        </div>
                   </nav>
            </div>
            <div class="col-md-8 mid-right">
                <div class="row-fluid mid-right-up">
                    <h2><i class="fa fa-desktop color"></i> 欢迎使用 <small>自考管理系统/成绩管理</small></h2>
                    <hr>
                </div>
                <div class="row-fluid mid-right-down">
                    <h3>违纪作弊登记</h3>
                    <form class="form-horizontal" role="form" action="<c:url value='/score/punishment' />" method="post">
                        <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <thead>
                                                        <tr>
                                                            <th>学号</th>
                                                            <th>姓名</th>
                                                            <th>考点</th>
                                                            <th>时间</th>
                                                            <th>违纪情况</th>
                                                            <th>违纪详细信息</th>
                                                        </tr>
                                                    </thead>
                                                        <tr>
                                                            <td><input type="text" name="studentId" style="border-style: none;width: 80px;height: 40px;"></td>
                                                            <td><input type="text" name="stuName" style="border-style: none;width: 80px;height: 40px;"></td>
                                                            <td><input type="text" name="siteId" style="border-style: none;width: 80px;height: 40px;"></td>
                                                            <td><input type="text" name="time" style="border-style: none;width: 80px;height: 40px;"></td>
                                                            <td><select>
                                                                <option selected="selected">一般违纪</option>
                                                                <option>严重违纪</option>
                                                                <option>特别严重违纪</option>
                                                            </select></td>
                                                            <td><textarea name="punishDetail"></textarea></td>
                                                        </tr>
                    </table>
                    <div class="col-sm-2">
                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;margin-left:716px;margin-top: 18px;">登记</button>
                    </div>
                </form>
                   
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
    <script src="<%=path %>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/index.js"></script>
    <script type="text/javascript">
        //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00010").addClass("open");
    $(".mid-left .nav .mid-left-li00010").children('ul').slideDown();

    </script>
</body>

</html>
