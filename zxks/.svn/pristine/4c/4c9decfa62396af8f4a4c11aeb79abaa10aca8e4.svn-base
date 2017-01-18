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
    <title>学生信息</title>
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
              <a href="usermanage.html">四川省高等教育自学考试管理系统</a>
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
                    <h2><i class="fa fa-desktop color"></i> 学生信息 <small>自考管理系统</small></h2>
                    <hr>
                </div>
                <div class="row-fluid mid-right-down">
                    <div class="row-fluid mid-right-down">
                        <div class="exampoint-manage">
                            <div class="row-fluid r-down-head">
                                <h3>修改学生信息</h3>
                            </div>
                            <div class="row-fluid r-down-footing">
                                <div class="col-md-12">
                                    <form class="form-horizontal" role="form" action="<%=path %>/student/updateStudent" method="post">
                                        <div class="form-group">
                                            <div class="table-responsive">
                                                <div style="width: 450px; margin: 0 auto;font-family: Arial,Helvetica,sans-serif;font-size: 14px;">
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">学号：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="stuNum" name="stuNum" placeholder="请输入学号" value="${student.stuNum }">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">学校：</label>
                                                        <div class="col-sm-9">
	                                                        <select name="schoolId">
	                                                        	<c:forEach items="${schoolList }" var="school">
	                                                        		<c:if test="${school.schoolId == student.schoolId }">
	                                                        			<option value="${school.schoolId }" selected="selected">${school.schoolName }</option>
	                                                        		</c:if>
	                                                        		<c:if test="${school.schoolId != student.schoolId }">
	                                                        			<option value="${school.schoolId }">${school.schoolName }</option>
	                                                        		</c:if>
	                                                        	</c:forEach>
	                                                        </select>                 
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">专业：</label>
                                                        <div class="col-sm-9">
                                                            <select name="majorId">
	                                                        	<c:forEach items="${majorList }" var="major">
	                                                        		<c:if test="${major.majorId == student.majorId }">
	                                                        			<option value="${major.majorId }" selected="selected">${major.majorName }</option>
	                                                        		</c:if>
	                                                        		<c:if test="${major.majorId != student.majorId }">
	                                                        			<option value="${major.majorId }">${major.majorName }</option>
	                                                        		</c:if>
	                                                        	</c:forEach>
	                                                        </select> 
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                    	<label for="" class="col-sm-3 control-label">毕业状态：</label>
                                                   		<div class="col-sm-9">
                                                            <input type="text" class="form-control" id="graduateState" name="graduateState"  value="${student.graduateState }" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">论文成绩：</label>
                                                        <div class="col-sm-9">
                                                        	<input type="text" class="form-control" id="essayRemark" name="essayRemark"  value="${student.essayRemark }" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">身份证：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="idCard" name="idCard" placeholder="请输入身份证"  value="${student.idCard }">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">统考成绩：</label>
                                                        <div class="col-sm-9">
                                                        	<input type="text" class="form-control" id="examScore" name="examScore" value="${student.examScore }" readonly>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">紧急联系人：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="contactPerson" name="contactPerson" placeholder="请输入紧急联系人"  value="${student.contactPerson }">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="" class="col-sm-3 control-label">联系方式：</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="contactPhone" name="contactPhone" placeholder="请输入联系方式"  value="${student.contactPhone }">
                                                        </div>
                                                    </div>


                                                    <input type="button" name="" value="返回" style="float: right">
                                                    <input type="submit" name="" value="保存" style="float: right">
                                                    
                                                </div>
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
    <script type="text/javascript" src="<%=path %>/js/student-manage.js"></script>
    <script type="text/javascript" src="<%=path %>/js/student-manage-son.js"></script>
</body>
</html>