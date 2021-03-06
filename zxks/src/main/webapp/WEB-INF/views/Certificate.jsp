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
    <title>合格证打印</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/css/bootstrap-combined.min.css" rel="stylesheet">
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
                    <div class="mid-r-down">
                           <form class="form-horizontal" action="" method="post">
                              <div class="form-group">
                                  <p class="cdl2">请输入查询条件：</p>
                                  <input id="studentId" class="input-medium search-query cdl2" type="text" name=""/> <button class="btn btn-primary" onclick="searchStudent()" type="button">查找</button>
                                <button type="submit" class="btn btn-default cdl2">打印</button>
                              </div>
                              
                              <div class="biaoge2 col-md-5" style="background-image:url('<%=path %>/images/Exam.jpg');display: inline-block;margin-left: 42px;">                
                                    <div style="margin-left: -8px;margin-top: 135px;">
                                    
                                    <ul id="1" style="margin-top:175px;">
                                        
                                    </ul>
                                </div>
                                </div>
                    
                                <div class="biaoge2 col-md-5" style="background-image:url('<%=path %>/images/Cer.jpg');display: inline-block;margin-left: 150px;margin-top: 48px;">
                                <div style="margin-left: -8px;margin-top: 109px;">
                                                               
                                    <ul id="2" style="margin-top:175px;">
                                        
                                    </ul>
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
    <script src="<%=path %>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/index.js"></script>
    <!-- <script type="text/javascript" src="<%=path %>/js/hegezheng.js"></script> -->
    <script type="text/javascript">
        //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00010").addClass("open");
    $(".mid-left .nav .mid-left-li00010").children('ul').slideDown();

    </script>
    <script type="text/javascript">
    function searchStudent()
    {
    	var studentId = $("#studentId").val();
    	if(studentId=='')
    	{
    		alert("查询条件不能为空");
    		return false;
    	}
    	var ul = $("#1");
    	ul.empty();
    	var ul2 = $("#2");
    	ul2.empty();
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/certificate' />", 
    	    data : 
    	    {
    	      'studentId':studentId,
    	     },  
    	    dataType: "json",  
    	  	traditional: true,
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);  
    	    	console.log(jsonData);
    	    	if(jsonData.examGrade == null)
    	    	{
    	    		alert("成绩未录入");
    	    		return false;
    	    	}
    	    	$("<li></li>").html("姓名："+jsonData.stuName).appendTo(ul);
    	    	/* $("<li></li>").html("考点").appendTo(ul); */
    	    	$("<li></li>").html("学号："+ jsonData.studentId).appendTo(ul);
    	    	$("<li></li>").html("统考分数：" + jsonData.examGrade).appendTo(ul);
    	    	
    	    	if(jsonData.essayGrade == null)
    	    	{
    	    		alter("毕业论文分数未录入")
    	    		return false;
    	    	}  	    	
    	    	$("<li></li>").html("姓名："+jsonData.stuName).appendTo(ul2);
    	    	$("<li></li>").html("专业："+ jsonData.majorName).appendTo(ul2);
    	    	/* $("<li></li>").html("设计课题：").appendTo(ul2);
    	    	$("<li></li>").html("审核人：").appendTo(ul2); */
    	    	$("<li></li>").html("论文分数："+jsonData.essayGrade).appendTo(ul2);
    	    	
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    </script>
</body>

</html>
