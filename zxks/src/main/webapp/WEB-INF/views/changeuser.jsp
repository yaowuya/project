<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
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
<title>用户管理</title>
<link rel="stylesheet" type="text/css"
	href="font-awesome-4.3.0/css/font-awesome.min.css">
<!-- 加载bootstrap层叠样式表 -->
<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/exam-home.css">
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
					<h2>
						<i class="fa fa-desktop color"></i> 用户管理 <small>自考管理系统</small>
					</h2>
				</div>
				<div class="row-fluid mid-right-down">
					<div class="exampoint-manage">
						<div class="row-fluid r-down-head">
							<h3>用户资料管理</h3>
						</div>
						<div class="row-fluid r-down-footing">
							<div class="col-md-12">
								<form class="form-horizontal" role="form" action="<%=path %>/user/updateUser"  onsubmit="javascript:return checkbtn(this)" method="post">
									<div class="form-group">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover table-condensed">
                                                <caption class="text-center">
                                                    <strong>用户资料表<>
                                                </caption>
                                                <thead>
                                                    <tr>
                                                        <th>用户</th>
                                                        <th>密码</th>
                                                        <th>姓名</th>
                                                        <th>性别</th>
                                                        <th>地址</th>
                                                        <th>移动电话</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <input type="text" name="email" style="width: 120px" value="${u.email }">
                                                        </td>
                                                        <td>
                                                            <input type="text" name="password" style="width: 120px" value="${u.password }">
                                                        </td>
                                                        <td>
                                                            <input type="text" name="userName" style="width: 120px" value="${u.userName }">
                                                        </td>
                                                        <td>
	                                                        <c:if test="${u.gender == '0' }">
	                                                            <select name="gender">
																	<option  value="0">女</option>
																	<option value="1">男</option>
	                                                            </select>
	                                                         </c:if>
	                                                         <c:if test="${u.gender == '1' }">
	                                                            <select name="gender">
																	<option  value="1">男</option>
																	<option value="0">女</option>
	                                                            </select>
	                                                         </c:if>
                                                        </td>
                                                        <td>
                                                            <input type="text" name="address" style="width: 120px" value="${u.address }">
                                                        </td>
                                                        <td>
                                                            <input type="text" name="phone" style="width: 120px" value="${u.phone }">
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button type="submit" class="btn btn-default pull-right" style="margin-left: 10px;">返回</button>
                                            <button type="submit" class="btn btn-primary pull-right">保存</button>
                                            <!-- <input type="submit" style="float:right;" value="返回">
                                            <input type="submit" style="float:right;" value="保存"> -->
										</div>
									</div>
								</form>
							</div>
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
	<!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
	<script src="<%=path%>/js/jquery-2.1.4.js"></script>
	<!-- 加载bootstrap的核心js库 -->
	<script src="<%=path%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/usermanage.js"></script>
    <script type="text/javascript" src="<%=path%>/js/usermanage-son.js"></script>
	<script type="text/javascript" src="<%=path%>/js/JScript.js"></script>
    <script type="text/javascript">
        //判断输入是否为空
    function checkbtn(form){
        var td=$(".r-down-footing .table tbody tr td");
        var inputvalue=0;
        var inputs=new Array();
        var flag=true;
        var email=0;
        var password=0;
        var phone=0;
        $.each(td, function(index, val) {
             /* iterate through array or object */
             inputvalue=td.eq(index).children('input').val();
             // console.log(index);
             if(index==0){
                email=td.eq(index).children('input');
             }
             if(index==1){
                password=inputvalue;
             }
             if(index==3){
                inputvalue=td.eq(index).children('select').find("option:selected").text();
                // console.log(inputvalue);
             }
             if(index==5){
                phone=td.eq(index).children('input');
             }
            inputs.push(inputvalue);
            console.log(inputs);
        });
        $.each(inputs, function(index, val) {
             /* iterate through array or object */
             if(val==""){
                alert("输入值不能为空");
                flag=false;
                return false;
             }
        });
        if(flag==true){
             if($valid(email, "Email", false, "邮箱:")==false){
                alert("请输入正确的邮箱格式");
                flag=false;
             }
             if(password.length<5||password.length>12){
                alert("密码长度不能少于5位不能多于12位");
                flag=false;
             }
             if($valid(phone, "手机", false, "手机:")==false){
                alert("请输入正确的手机号码");
                flag=false;
             }
        }
        return flag;
    };
    </script>
</body>
</html>