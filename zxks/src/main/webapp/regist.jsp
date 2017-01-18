<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your,Keywords">
<meta name="author" content="ResponsiveWebInc">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>注册</title>
<link rel="stylesheet" type="text/css"
	href="font-awesome-4.3.0/css/font-awesome.min.css">
<!-- 加载bootstrap层叠样式表 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" type="text/css" href="css/reg.css">
<link rel="stylesheet" type="text/css" href="css/validate.css">
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
						<li class="dropdown"><a class="dropdown-a" href="login.jsp">登录</a></li>
						<li class="dropdown"><a class="dropdown-a"
							href="javascript:void(0)">注册</a></li>
					</ul>
				</div>
				</nav>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row-fluid middle">
			<div class="col-md-offset-1 col-md-6 login-mid-left"></div>
			<div class="col-md-4">
				<div class="login-mid-right">
					<div class="panel">
						<div class="panel-heading">
							<h1 class="panel-title text-center">注册</h1>
							<hr>
						</div>

						<div class="panel-body">
							<form class="form-horizontal" role="form" action="user/register"
								method="post" id="regist-form">
								<div class="form-group">

									<label for="email" class="col-sm-3 control-label">邮箱</label>
									<div class="col-sm-9">
										<input type="text" name="email" class="form-control"
											id="email" onblur="checkEmail()" placeholder="请输入邮箱">
										<span id="email-true" class="fa fa-check-square hide"
											style="position: absolute; right: 26px; top: 11px; color: green;"></span>
										<span id="email-false" class="fa fa-times-circle hide"
											style="position: absolute; right: 26px; top: 11px; color: red;"></span>
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-3 control-label">密码</label>
									<div class="col-sm-9">
										<input type="password" id="password" name="password"
											class="form-control" placeholder="请输入密码">
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-3 control-label">确认密码</label>
									<div class="col-sm-9">
										<input type="password" id="surepassword" name="surepassword"
											class="form-control" placeholder="请输入确认密码">
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-3 control-label">姓名</label>
									<div class="col-sm-9">
										<input type="text" name="userName" class="form-control"
											id="name" placeholder="请输入姓名">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-offset-3 checkbox-inline"> <input
										type="radio" name="gender" id="optionsRadios3" value="1"
										checked> 男
									</label> <label class="checkbox-inline"> <input type="radio"
										name="gender" id="optionsRadios4" value="0"> 女
									</label>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-3 control-label">地址</label>
									<div class="col-sm-9">
										<input type="text" name="address" class="form-control"
											id="regist-address" placeholder="请输入地址">
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-3 control-label">手机</label>
									<div class="col-sm-9">
										<input type="text" name="phone" class="form-control"
											id="regit-phone" placeholder="请输入手机">
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<div class="checkbox">
											<label> <input type="checkbox" id="agree" name="agree">
												我已经仔细阅读并接受《XX协议》
											</label>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<span class="check-span" style="color: red;"></span>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<button type="submit" class="btn btn-primary">注册</button>
										<button type="reset" class="btn btn-default pull-right">重置</button>
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
				<p class="text-center">Copyright 2013 © - Bootstrap Themes</p>
			</div>
		</div>
	</div>
	<!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
	<script src="js/jquery-2.1.4.js"></script>
	<!-- 加载bootstrap的核心js库 -->
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/JScript.js"></script>
	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="js/messages_zh.min.js"></script>
	<script>
		// 邮箱验证
		function checkEmail() {
			var email = $("#email").val();
			var eemail = $(".form-group input[name='email']");
			var checkspan = $(".form-group .check-span");
			console.log(email);
			$.ajax({
				type : "POST",
				url : "<c:url value='/user/check'/>",
				data : {
					'email' : email,
				},
				dataType : "json",
				success : function(data) {
					var jsonData = eval(data);
					console.log(jsonData.flag);
					// var panduan = $valid(eemail, "Email", false, "邮箱:");
					if (jsonData.flag === true) {
						// $("#email-true").removeClass("hide");
						$("#email-false").addClass("hide");
						checkspan.text("");
					} else {
						$("#email-true").addClass("hide");
						$("#email-false").removeClass("hide");
						// alert("账号已经存在");
						checkspan.text("账号已经存在");
					}
				},
				error : function(jqXHR) {
					alert("发生错误：" + jqXHR.status);
				},
			});
		};
		// 纯数字验证
		jQuery.validator.addMethod("onlynum", function(value, element) {
			var tel = /([\u4e00-\u9fa5a-zA-Z]+[0-9]*)/;
			return this.optional(element) || (tel.test(value));
		}, "不能为纯数字");
		// 手机号码验证
		jQuery.validator
				.addMethod(
						"isMobile",
						function(value, element) {
							var length = value.length;
							return this.optional(element)
									|| (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/
											.test(value));
						}, "请正确填写您的手机号码。");
		// 注册验证
		$("#regist-form").validate({
			rules : {
				email : {
					required : true,
					email : true
				},
				password : {
					required : true,
					rangelength : [ 5, 11 ]
				},
				surepassword : {
					required : true,
					rangelength : [ 5, 10 ],
					equalTo: "#password"
				},
				userName : {
					required : true,
					onlynum : true
				},
				address : {
					required : true,
					onlynum : true
				},
				phone : {
					required : true,
					isMobile : true
				},
				agree : {
					required : true
				}
			},
			messages : {
				email : {
					required : "请输入邮箱",
					email : "请输入正确格式的邮箱"
				},
				password : {
					required : "请输入密码",
					rangelength : "密码长度不能少于5位不能多于12位"
				},
				surepassword : {
					required : "请输入确认密码",
					rangelength : "密码长度不能少于5位不能多于12位",
					equalTo : "两次密码输入不一致"
				},
				userName : {
					required : "请输入姓名"
				},
				address : {
					required : "请输入地址"
				},
				phone : {
					required : "请输入手机号码"
				},
				agree : {
					required : "请同意我们的协议！！！"
				}
			}
		});
		// function checkForm(form) {
		// 	var flag = true;
		// 	var email = $("#email").val();
		// 	// var password=$(".form-group input[name='password']");
		// 	var p1 = document.getElementById("password1").value;
		// 	var p2 = document.getElementById("password2").value;
		// 	var userName = $(".form-group input[name='userName']");
		// 	// var radio=$(".form-group input[name='gender']");
		// 	var address = $(".form-group input[name='address']");
		// 	var phone = $(".form-group input[name='phone']");
		// 	var checkbox = $(".form-group input[type='checkbox']");
		// 	var checkspan = $(".form-group .check-span");
		// 	// console.log(email);
		// 	if (email == "" || p1 == "" || p2 == "" || userName.val() == ""
		// 			|| address.val() == "" || phone.val() == "") {
		// 		checkspan.text("输入不能为空");
		// 		flag = false;
		// 	} else {
		// 		checkspan.text("");
		// 		flag = true;
		// 	}
		// 	if (flag == true) {
		// 		if (p1 != p2) {
		// 			// alert("两次密码输入不一致！");
		// 			checkspan.text("两次密码输入不一致");
		// 			flag = false;
		// 		}
		//               if(flag==true){
		//                   if (!checkbox.is(":checked")) {
		//                   checkspan.text("请接受我们的协议！！！");
		//                   flag = false;
		//                   }
		//               }
		// 	}
		// 	return flag;
		// };
	</script>
</body>
</html>