<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>用户管理</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/exam-home.css">
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
                    <h2><i class="fa fa-desktop color"></i> 权限管理 <small>自考管理系统</small></h2>
                </div>
                <div class="row-fluid mid-right-down">
                    <div class="exampoint-manage">
                        <div class="row-fluid r-down-head">
                            <h3>用户权限管理</h3>
                        </div>
                        <div class="row-fluid r-down-footing" style="max-height: 1200px;overflow-y:auto;">
                            <div class="col-md-12">
                                <form class="form-horizontal" action="<%=path %>/user/userAuthority" method="post" role="form">
                                    <div class="form-group">
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="key" id="inputvalue" placeholder="输入用户、姓名、学校、电话、角色等多种查询条件">
                                        </div>
                                        <div class="col-sm-4">
                                            <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered table-hover table-condensed">
                                                <caption class="text-center">
                                                    <strong>用户资料表</strong>
                                                </caption>
                                                <thead>
                                                    <tr>
                                                        <th>用户</th>
                                                        <th>姓名</th>
                                                        <th>性别</th>
                                                        <th>移动电话</th>
                                                        <th>角色</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${page.list }" var="list">
                                                        <tr>
                                                            <td>${list.email }</td>
                                                            <td>${list.userName }</td>
                                                            <c:if test="${list.gender == 1 }">
                                                            	<td>男</td>
                                                            </c:if>
                                                            <c:if test="${list.gender != 1 }">
                                                            	<td>女</td>
                                                            </c:if>
                                                            
                                                            <td>${list.phone }</td>
                                                            <c:forEach items="${r }" var="roleList">
                                                                <c:if test="${roleList.roleId == list.roleId }">
                                                                    <td>${roleList.roleName }</td>
                                                                </c:if>
                                                            </c:forEach>
                                                            <td>
                                                                <a role="button" href="<%=path %>/user/updateAuthority?email=${list.email }" class="btn btn-primary" style="padding:0px 33px;">修改</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>                     
                                        </div>
                                        <div class="page-btn text-center">
                                                    <ul class="pagination"> 
                                                        <c:forEach begin="1" end="${page.total }" var="p">
                                                        	<c:if test="${pageNum == p }">
                                                        		<li class="active">
                                                        			<a href="<%=path%>/user/userAuthority?pageNum=${p}&key=${key}">${p }</a>
                                                        		</li>
                                                        	</c:if>
                                                            <c:if test="${pageNum != p }">
                                                        		<li>
                                                        			<a href="<%=path%>/user/userAuthority?pageNum=${p}&key=${key}">${p }</a>
                                                        		</li>
                                                        	</c:if>
                                                        </c:forEach>
                                                    </ul>
												</div>
                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="row-fluid r-down-footer">
                            <div class="btn-search">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover table-condensed">
                                        <caption class="text-center">
                                            <strong>用户资料表</strong>
                                        </caption>
                                        <thead>
                                            <tr>
                                                <th>用户</th>
                                                <th>姓名</th>
                                                <th>性别</th>
                                                <th>移动电话</th>
                                                <th>角色</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
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
    <div class="row-fluid">
        <div class="col-md-12 footer">
            <p class="text-center">
                Copyright 2013 © - Bootstrap Themes
            </p>
        </div>
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="<%=path %>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/usermanage.js"></script>
    <script type="text/javascript" src="<%=path %>/js/authority.js"></script>
</body>

</html>