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
    <title>出国留学证明办理</title>
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
                    <h2><i class="fa fa-desktop color"></i> 欢迎使用 <small>自考管理系统/考籍管理</small></h2>
                    <hr>
                </div>
                <div class="row-fluid mid-right-down">
                    <div class="col-md-12">
                         <h3>毕业管理</h3>
                           <ul class="nav nav-tabs">
                    		<li class="active">
                        		<a href="#panelB" data-toggle="tab">查询证明信息</a>
                   			</li>
                    		<li>
                       			 <a href="#panelA" data-toggle="tab">录入证明信息</a>
                   			 </li>
                    		<li>
                        		<a href="#panelC" data-toggle="tab">修改证明信息</a>
                    		</li>
                		</ul>
                		<div class="tab-content">
                    	   <div class="tab-pane" id="panelA" style="margin-top: 33px;">
                        		<form class="form-horizontal" role="form" action="<c:url value='/ERNM/AAS ' />" method="post">
                                     <div class="form-group">
                                          <label for="f1" class="col-sm-2 control-label">学生编号</label>
                                                <div class="col-sm-9">
                                                   <input id="stuNum1" type="text" onblur="check()" class="form-control" name="stuNum" placeholder="学生编号" >
                                                   <label id="tip"></label>
                                                   <c:if test="${state == 1}">
                                                   		<label>没有该学生或该学生没有达到要求</label>
                                                   </c:if>
                                                 </div>
                                      </div>                                                                                       
                                      <div class="form-group">
                                          <label for="f6" class="col-sm-2 control-label">留学国家</label>
                                                <div class="col-sm-9">
                                                       <input type="text" class="form-control" name="destinationC" placeholder="留学国家" >
                                                </div>
                                       </div>
                                       <div class="form-group">
                                                <label for="f8" class="col-sm-2 control-label">留学学校</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" name="destinationS" placeholder="留学学校" >
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-9">
                                                        <button type="submit" class="btn btn-primary">证明办理</button>
                                                    </div>
                                                </div>
                               </form>
                    	  </div>
                    	  <div class="tab-pane active" id="panelB">
                        	  <form class="form-horizontal" role="form" action="" method="post">
                                   <div class="form-group" style="margin-top:30px;">
                                           <div class="col-sm-4">
                                                 <input id="searchStudentId" type="text" class="form-control" placeholder="请输入查询条件" name="searchStudentId">
                                           </div>
                                           <div class="col-sm-2">
                                                  <button type="button" onclick="searchCer()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                              
                                            </div>
                                   </div>
                                            
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业生信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>留学编号</th>
                                                            <th>姓名</th>
                                                            <th>性别</th>
                                                            <th>专业</th>
                                                            <th>留学国家</th>
                                                            <th>留学学校</th>
                                                        </tr>
                                                        <tbody id="list1">
                                                        
                                                        </tbody>
                                                        
                                                    </thead>
                                                </table>
                                            </div>
                    </form>
                    </div>
                          <div class="tab-pane" id="panelC">
                        <form class="form-horizontal" action="" role="form" method="post">
                                                <div class="form-group" style="margin-top:30px;">
                                                    <div class="col-sm-4">
                                                        <input id="search001" type="text" class="form-control" placeholder="请输入查询条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="search()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            
                                            <div class="table-responsive">
                                                <table  class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业生信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>留学编号(不可改)</th>
                                                            <th>姓名(不可改)</th>
                                                            <th>性别(不可改)</th>
                                                            <th>专业(不可改)</th>
                                                            <th>留学国家</th>
                                                            <th>留学学校</th>
                                                            <th>操作</th>
                                                        </tr>
                                                        <tbody id="list">
                                                        
                                                        </tbody>
                                                    </thead>
                                                        
                                                </table>
                                            </div>
                    </form>
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
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="<%=path %>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/index.js"></script>
    <%-- <script type="text/javascript" src="<%=path %>/js/cdl.js"></script> --%>
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00013").addClass("open");
    $(".mid-left .nav .mid-left-li00013").children('ul').slideDown();

    function search()
    {
    	var id = $("#search001").val();
    	if(id == '')
    	{
    		alert("学号不能为空");
    		return false;
    	}
    	var tbody = $('#list');
    	tbody.empty();
    	console.log(id);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/AASM' />", 
    	    data : 
    	    {
    	      'id' : id,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	
    	    	if(jsonData.statu == 0)
    	    	{
    	    		alert("用户不存在");
    	    		return  false;
    	    	}
    	    	var tr = $('<tr></tr>');
    	        $("<td></td>").html('<input id="studentId" type="text" name="ABstuId" value="'+jsonData.searchStudent.stuNum+'" style="border-style: none;width: 80px;height: 40px;" readonly>').appendTo(tr);
    	        $("<td></td>").html('<input id="studentName" type="text" name="ABstuName" value="'+jsonData.searchUser.userName+'" style="border-style: none;width: 80px;height: 40px;" readonly>').appendTo(tr);
    	        $("<td></td>").html('<input id="Grander" type="text" name="ABstuSex" value="'+jsonData.searchUser.gender+'" style="border-style: none;width: 80px;height: 40px;" readonly>').appendTo(tr);
    	        $("<td></td>").html('<input id="majorName" type="text" name="ABstuMajor" value="'+jsonData.searchMajorName+'" style="border-style: none;width: 80px;height: 40px;" readonly>').appendTo(tr);
    	        $("<td></td>").html('<input id="country" type="text" name="ABC" value="'+jsonData.searchStudyAbroad.destinationC+'" style="border-style: none;width: 80px;height: 40px;">').appendTo(tr);
    	        $("<td></td>").html('<input id="school" type="text" name="ABS" value="'+jsonData.searchStudyAbroad.destinationS+'" style="border-style: none;width: 80px;height: 40px;">').appendTo(tr);
    	        $("<td></td>").html('<td><button id="changeMes" type="button" name="actionplus" value="change" onclick="change(this.id)">修改</button> <button id="delMes" type="button" name="actionplus" value="del" onclick="change(this.id)">删除</button></td>').appendTo(tr);
    	        tbody.append(tr);
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    function change(id)
    {
    	var studentId = $("#studentId").val();
    	var country = $("#country").val();
    	var school = $("#school").val();
    	
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/AASM2' />", 
    	    data : 
    	    {
    	    	'id' : id,
    	      'studentId' : studentId,
    	      'country': country,
    	      'school': school,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);
    	        
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});
    }
    
    function searchCer(id)
    {
    	var studentId = $("#searchStudentId").val();
		if(studentId == "")
		{
			alert("不能为空");
			return false;
		}
		var tbody = $("#list1");
		
       	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/QASM' />", 
    	    data : 
    	    {
    	      'studentId' : studentId, 
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);
    	    	if(jsonData.statu == 1)
    	    	{
    	    		alert("用户不存在");
    	    		return false;
    	    	}
    	    	var tr = $("<tr></tr>");
    	    	$("<th></th>").html(jsonData.studyAbroad.stuNum).appendTo(tr);
    	    	$("<th></th>").html(jsonData.user.userName).appendTo(tr);
    	    	$("<th></th>").html(jsonData.user.gender).appendTo(tr);
    	    	$("<th></th>").html(jsonData.majorName).appendTo(tr);
    	    	$("<th></th>").html(jsonData.studyAbroad.destinationC).appendTo(tr);
    	    	$("<th></th>").html(jsonData.studyAbroad.destinationS).appendTo(tr);
    	    	tbody.append(tr);
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);
    	        
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});
    }
    
    function check()
    {
    	var studentId = $("#stuNum1").val();
		if(studentId == "")
		{
			$("#tip").html("请输入学号")
			return false;
		}
		var tbody = $("#list1");
		
       	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/check' />", 
    	    data : 
    	    {
    	      'studentId' : studentId, 
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);    	    	
    	        if(jsonData.state == 3)
    	        {
    	        	$("#tip").html("学生不存在")
    	        	return false;
    	        }
    	        else if(jsonData.state == 2)
    	        {
    	        	$("#tip").html("学生不符合条件")
    	        	return false;
    	        }
    	        else
    	        {
    	        	$("#tip").html("学生符合条件")
    	        	return false;
    	        }
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});
    }
    
    
    </script>
</body>

</html>
