<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<title>基本信息</title>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/font-awesome-4.3.0/css/font-awesome.min.css">
<!-- 加载bootstrap层叠样式表 -->
<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/exam-home.css">
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
					<a href="index.jsp">四川省高等教育自学考试管理系统</a>
				</h1>
			</div>
			<div class="col-md-6">
				<nav class="navbar vavbar-deafault pull-right" role="navigation">
				<div class="collapse navbar-collapse" id="example-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="center.html" target=""
							class="dropdown-toggle color-green dropdown-a"
							data-toggle="dropdown"> <i class="fa fa-user"></i> <span>${ user.userName}</span>
								您好！

						</a></li>
						<li class="dropdown"><a class="dropdown-a"
							href="<%=path%>/user/logout">退出</a></li>
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
					<a class="navbar-brand" href="<%=path%>/index.jsp"
						style="width: 100%;"> <i class="fa fa-home"></i>首页
					</a>
				</div>
				<div>
					<ul class="nav navbar-nav">
						<c:forEach items="${fatherList }" var="father">
							<li class="mid-left-li mid-left-li${father.menuId }"><a
								href="#"> <i class="fa fa-star"></i> ${father.fatherName } <b
									class="caret"></b>
							</a>
								<ul>
									<c:forEach items="${menuList }" var="menu">
										<c:if test="${menu.fatherName == father.fatherName }">
											<li><a href="<%=path %>${menu.url }">${menu.menuName }</a>
											</li>
										</c:if>
									</c:forEach>
								</ul></li>
						</c:forEach>

					</ul>
				</div>
				</nav>
			</div>
			<div class="col-md-8 mid-right">
				<div class="row-fluid mid-right-up">
					<h2>
						<i class="fa fa-desktop color"></i> 基本信息 <small>自考管理系统</small>
					</h2>
					<hr>
				</div>
				<div class="row-fluid mid-right-down">
					<div class="row-fluid mid-right-down">
						<div class="exampoint-manage">
							<div class="row-fluid r-down-head">
								<h3>基本信息</h3>
							</div>
							<div class="row-fluid r-down-footing">
								<div class="col-md-1"></div>
								<div class="col-md-10">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label class="col-sm-2 control-label">邮箱：</label>
											<div class="col-sm-10">
												<p class="form-control-static">${user.email }</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">角色：</label>
											<div class="col-sm-10">
												<p class="form-control-static">
													<c:forEach items="${roleList }" var="role">
														<c:if test="${role.roleId == user.roleId }">
                                                                    ${role.roleName }
                                                                </c:if>
													</c:forEach>
												</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">姓名：</label>
											<div class="col-sm-10">
												<p class="form-control-static">${user.userName }</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">性别：</label>
											<div class="col-sm-10">
												<p class="form-control-static">
													<c:if test="${user.gender == 1 }">
                                                                男
                                                            </c:if>
													<c:if test="${user.gender != 1 }">
                                                                女
                                                    </c:if>
												</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">地址：</label>
											<div class="col-sm-10">
												<p class="form-control-static">${user.address }</p>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-2 control-label">移动电话：</label>
											<div class="col-sm-10">
												<p class="form-control-static">${user.phone }</p>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-12">
												<a role="button" href="<%=path%>/student/changeMessage"
													class="btn btn-primary"
													style="padding: 5px 33px; margin-right:12px;">编辑 </a> <a
													role="button" href="<%=path%>/student/turnToPassword"
													class="btn btn-default" style="padding: 5px 33px;">
													修改密码 </a>
											</div>
										</div>
									</form>
								</div>
								<div class="col-md-1"></div>
								<!-- <div class="col-md-12">
									<form class="form-horizontal" role="form">

										<div class="form-group">
											<div class="table-responsive">
												<div
													style="width: 300px; margin: 0 auto; font-family: Arial, Helvetica, sans-serif; font-size: 14px;">
													<table>
														<tr>
															<td style="width: 80px;">邮箱：</td>
															<td style="width: 100px;">${user.email }</td>
														</tr>
														<tr>
															<td style="width: 80px;">角色：</td>
															<td style="width: 100px;"><c:forEach
																	items="${roleList }" var="role">
																	<c:if test="${role.roleId == user.roleId }">
                                                            		${role.roleName }
                                                            	</c:if>
																</c:forEach></td>
														</tr>
														<tr>
															<td style="width: 80px;">姓名：</td>
															<td style="width: 100px;">${user.userName }</td>
														</tr>
														<tr>
															<td style="width: 80px;">性别：</td>
															<td style="width: 100px;"><c:if
																	test="${user.gender == 1 }">
	                                                       		男
	                                                       	</c:if> <c:if
																	test="${user.gender != 1 }">
	                                                       		女
	                                                       	</c:if></td>
														</tr>
														<tr>
															<td style="width: 80px;">地址：</td>
															<td style="width: 100px;">${user.address }</td>
														</tr>
														<tr>
															<td style="width: 80px;">移动电话：</td>
															<td style="width: 100px;">${user.phone }</td>
														</tr>
													</table>
													<a role="button" href="<%=path%>/student/changeMessage"
														class="btn btn-primary" class="btn btn-primary"
														style="padding: 0px 33px;">编辑</a> <a role="button"
														href="<%=path%>/student/turnToPassword"
														class="btn btn-primary" class="btn btn-primary"
														style="padding: 0px 33px;">修改密码</a>
												</div>
											</div>
										</div>
									</form>
								</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row-fluid">
			<div class="col-md-12 footer">
				<p class="text-center">Copyright 2013 © - Bootstrap Themes</p>
			</div>
		</div>
	</div>
	<!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
	<script src="<%=path%>/js/jquery-2.1.4.js"></script>
	<!-- 加载bootstrap的核心js库 -->
	<script src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/student-manage.js"></script>
	<script type="text/javascript" src="<%=path%>/js/student-manage-son.js"></script>
</body>

</html>