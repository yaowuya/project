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
    <title>毕业资格审核办理</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css">
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
                    <h2><i class="fa fa-desktop color"></i> 欢迎使用 <small>自考管理系统/考籍管理</small></h2>
                    <hr>
                </div>
                <div class="row-fluid mid-right-down">
                    <h3>毕业资格审核办理</h3>
                    <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-8" data-toggle="tab">资格审核</a>
                    </li>
                    <li>
                        <a href="#panel-7" data-toggle="tab">毕业资格证办理</a>
                    </li>
                    <!-- <li>
                        <a href="#panel-71" data-toggle="tab">证明补办</a>
                    </li> -->
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-8">
                    <form class="form-horizontal" role="form" action="">
                            <div id="lsy1" style="display: block;">                    
                                                <div class="form-group" style="margin-top:30px;">
                                                    <div class="col-sm-4">
                                                        <input id="search02" type="text" class="form-control" placeholder="请输入查询条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button id="0" type="button" onclick="searchBefore(this.id)" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业生信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>姓名</th>
                                                            <th>专业</th>
                                                            <th>移动电话</th>
                                                            <th>详细信息</th>
                                                            <th>毕业资格审核</th>
                                                        </tr>
                                                    </thead>
                                                    	<tbody id="mes">
                                                    	</tbody>
                                                    	                                                        
                                                </table>
                                            </div>
                                            <ul id="pageNum" style="width:100%;text-align:center;" class="pagination">
                                                
                                            </ul>
                            </div>
                            <div id="lsy2" style="display:none;">
                                <div style="width:760px;height:500px;margin:35px 29px;">
                                       <h1 class="text-center" style="font-size: 50px;">毕业生详细信息</h1>
                                               <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>毕业生基本信息</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>姓名</th>
                                                            <th>学号</th>
                                                            <th>学校</th>
                                                            <th>学院</th>
                                                            <th>专业</th>
                                                            <th>移动电话</th>
                                                            <th>家庭住址</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                                         <br />
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>毕业生成绩</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>统考成绩</th>
                                                            <th>毕业论文成绩</th>
                                                            <th>违纪情况</th>
                                                            <th>获奖记录</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                            <div class="col-md-8" style="margin-left: 127px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>毕业生课程成绩</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>课程ID</th>
                                                            <th>课程名称</th>
                                                            <th>课程成绩</th>
                                                        </tr>
                                                    </thead>
                                                </table>
                            </div>
                            <div class="col-md-4" style="margin-left:600px;">
                            <input type="button" value="返回" onclick="return1()">
                            </div>
           
                            </div>
                            </div>
                    </form>
                    </div>
                    <div class="tab-pane" id="panel-7"> 
                        <form class="form-horizontal" role="form" action="" method="post">
                                <div class="form-group" style="margin-top:30px;">
                                    <div class="col-sm-4">
                                         <input id="studentId" type="text" class="form-control" placeholder="请输入查询条件" name="studentId">
                                    </div>
                                    <div class="col-sm-2">
                                        <button type="button" onclick="search()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                    </div>
                                </div>
                            <!-- <div class="biaoge2">
                                    
                            </div> -->
                                <div class="biaoge3" style="background-image:url('<%=path %>/images/Gre.jpg');">
                                    <div class="col-md-5" style="margin-top:120px;margin-left: 64px;">
                                    <img src="<%=path %>/images/renda.png" alt="照片" width="230px" height="230px">
                                    </div>
                                    <div class="col-md-5" style="margin-top:120px;">
                                        <ul id="ul1">
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;margin-left:541px;margin-top: 18px;">打印</button>
                                    </div>
                            </form>
                    </div>
                    <!-- <div class="tab-pane" id="panel-71">
                        
                    </div> -->
              

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
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00013").addClass("open");
    $(".mid-left .nav .mid-left-li00013").children('ul').slideDown();
    
    function search()
    {
    	var studentId = $("#studentId").val();
    	if(studentId=='')
    	{
    		alert("学号不能为空");
    		return false;
    	}
    	var ul = $("#ul1");
    	ul.empty();
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/SBG' />", 
    	    data : 
    	    {
    	      'studentId' : studentId,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);	
    	    	console.log(jsonData);
    	    	if(jsonData.statu == 0)
    	    	{
    	    		alert("用户不存在");
    	    		return false;
    	    	}
    	    	if(jsonData.statu == 2)
    	    	{
    	    		alert("用户尚未毕业");
    	    		return false;
    	    	}
    	        $("<li></li>").html('姓名：'+jsonData.stuName).appendTo(ul);
    	        $("<li></li>").html('专业：'+jsonData.majorName).appendTo(ul);
    	        $("<li></li>").html('学号：'+jsonData.stuNum).appendTo(ul);  
    	        $("<li></li>").html('论文分数:'+jsonData.score).appendTo(ul); 
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    function searchBefore(current)
    {
    	var studentId = $("#search02").val();
    	var pageNum = $("#pageNum");
    	var mes = $("#mes");
    	mes.empty();
    	pageNum.empty();	
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/GCE' />", 
    	    data : 
    	    {
    	      'studentId' : studentId,
    	      'current' : current,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);
    	    	for(var i = 0; i<10 ; i++)
    	    	{    	    		
    	    		var tr = $("<tr></tr>");
    	    		$('<td></td>').html(jsonData.page.list[i].userName).appendTo(tr);
    	    		$("<td></td>").html(jsonData.page.list[i].majorName).appendTo(tr);
    	    		$("<td></td>").html(jsonData.page.list[i].phone).appendTo(tr);
    	    		$("<td></td>").html('').appendTo(tr);
    	    		$("<td></td>").html('<a id="'+jsonData.page.list[i].stuNum+'" onclick="pass(this.id)" href="">通过</a>').appendTo(tr);
    	    		mes.append(tr);
    	    		if(jsonData.page.list[i+1]==null)
    	    		{
    	    			break;
    	    		}
    	    	}
    	    	    	
    	    	if(jsonData.page.current != 1)
    	    	{
    	    		console.log("1");
    	    		$("<li></li>").html('<a  id="'+(data.page.current-1)+'" onclick="searchBefore(this.id)" herf="">'+(data.page.current-1)+'</a>').appendTo(pageNum);
    	    	}
    	    	console.log("2");
    	    	$("<li></li>").html('<a >'+(data.page.current)+'</a>').appendTo(pageNum);
    	    	
    	    	if(jsonData.page.current != jsonData.page.total)
    	    	{
    	    		console.log(jsonData.page.total);
    	    		$("<li></li>").html('<a id="'+(data.page.current+1)+'" onclick="searchBefore(this.id)" herf="">'+(data.page.current+1)+'</a>').appendTo(pageNum);
    	    	}
    	    	
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	}); 
    }
    
    function pass(id)
    {
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/PASS' />", 
    	    data : 
    	    {
    	      'studentId' : id,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);	
    	    	console.log(jsonData);
    	    	alert("添加成功");
    	    	
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    
    </script>
    
</body>

</html>
