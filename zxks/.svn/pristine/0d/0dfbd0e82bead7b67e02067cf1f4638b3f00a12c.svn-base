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
    <title>证明遗失记录</title>
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
                    <h3>证明遗失记录</h3>
                    <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-88" data-toggle="tab">证明挂失</a>
                    </li>
                    <li>
                        <a href="#panel-70" data-toggle="tab">挂失状态更改</a>
                    </li>
                    <!-- <li>
                        <a href="#panel-71" data-toggle="tab">证明补办</a>
                    </li> -->
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-88">
                       <form class="form-horizontal" role="form" action="<c:url value='/ERNM/ALM' />" method="post">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>证明挂失信息记录表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                                                                           
                                                            <th>学号</th>
                                                            <th>姓名</th>
                                                            <th>专业</th>
                                                            <th>遗失时间</th>
                                                            <th>遗失类型</th>
                                                            <!-- <th>状态</th> -->
                                                        </tr>
                                                    </thead>
                                                        <tr>
                                                            <td><input type="text" onblur="testIsVoid()" id="studentId" name="studentId" style="border-style: none;width: 80px;"></td>
                                                            <td><input type="text" id="studentName" name="studentName" style="border-style: none;width: 80px;"></td>
                                                            <td><input type="text" id="major" name="major" style="border-style: none;width: 80px;"></td>
                                                            <td><input type="date" name="lostTime" style="border-style: none;width: 100%;"></td>
                                                            <td>
                                                            <input type="checkbox" name="A1" value="L1">
                                                            <label>毕业证</label><br />
                                                            <input type="checkbox" name="A2" value="L2">
                                                            <label>统考合格证</label><br />
                                                            <input type="checkbox" name="A3" value="L3">
                                                            <label>毕业论文合格证</label>
                                                            </td>
                                                            <!-- <td><select>
                                                                <option name="" value="挂失">挂失</option>
                                                                <option name="" value="已补办">已补办</option>
                                                            </select></td> -->
                                                        </tr>
                                                </table>
                                                <div style="margin-left: 732px;">
                                                    <button type="submit" class="btn btn-primary" style="padding:6px 33px;">挂失</button>
                                                </div>
                                            </div>
                    </form> 
                    </div>
                    <div class="tab-pane" id="panel-70">
                        <form class="form-horizontal" role="form" action="<c:url value='/ERNM/ALMx2' />" method="post">
                                                <div class="form-group" style="margin-top:30px;">
                                                    <div class="col-sm-4">
                                                        <input id="studentId2" type="text" class="form-control" placeholder="请输入遗失编号" name="studentId" value="${stuNum}">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="delLostMessage()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            
                                            <div class="table-responsive">
                                                <table id="list" class="table table-striped table-bordered table-hover table-condensed cdl4">
                                                    <caption class="text-center">
                                                        <strong>证明挂失信息记录表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>遗失编号</th>
                                                            <th>姓名</th>
                                                            <th>学号</th>
                                                            <th>专业</th>
                                                            <th>遗失时间</th>
                                                            <th>遗失类型</th>
                                                            <th>状态</th>
                                                        </tr>
                                                    </thead>
                                                        <tr>
                                                            
                                                        </tr>
                                                </table>
                                            </div>
                    </form>
                    </div>
                    <!-- <div class="tab-pane" id="panel-71">
                        
                    </div> -->
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
    <script type="text/javascript" >
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00013").addClass("open");
    $(".mid-left .nav .mid-left-li00013").children('ul').slideDown();    
     function delLostMessage()
   	 {
    	var studentId = $("#studentId2").val();
    	if(studentId == '')
    	{
    		alert("学号不能为空")
    		return false;
    	}
    	var tbody = $('#list');
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/ERNM/ALMx' />", 
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
 					alert("不存在遗失信息")
 					return false;
 				}
    	        var tr = $("<tr></tr>");
    	        $("<th></th>").html(jsonData.id).appendTo(tr);
    	        $("<th></th>").html(jsonData.stuName).appendTo(tr);
    	        $("<th></th>").html(jsonData.stuNum).appendTo(tr);
    	        $("<th></th>").html(jsonData.majorName).appendTo(tr);
    	        $("<th></th>").html(jsonData.date).appendTo(tr);
    	        $("<th></th>").html(jsonData.lostInfo).appendTo(tr);  
    	        $("<th></th>").html('<button type="submit" class="btn btn-primary" style="padding:6px 33px;">已补办</button>').appendTo(tr); 
    	        tbody.append(tr);    	             

    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
   	 }
     
     
     function testIsVoid()
     {
     	var studentId = $("#studentId").val();
     	if(studentId == '')
     	{
     		alert("学号不能为空")
     		return false;
     	}
     	console.log(studentId);
     	$.ajax( {
     	    type : "POST",   
     	    url : "<c:url value='/ERNM/testIsVoid' />", 
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
  					alert("错误的学号");
  					return false;
  				}
  				else
  				{
  					$("#studentName").val(jsonData.stuName)
  					$("#major").val(jsonData.majorName)
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
