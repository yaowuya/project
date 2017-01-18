<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <title>grades</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/grades.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/validate.css">
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
                      <h3>成绩管理</h3>
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#pan" data-toggle="tab">查看成绩</a>
                            </li>
                            <li>
                                <a href="#pane" data-toggle="tab">录入统考成绩</a>
                            </li>
                            <li>
                                <a href="#panet" data-toggle="tab">录入课程成绩</a>
                            </li>
                            <li>
                                <a href="#panel" data-toggle="tab">修改成绩</a>
                            </li>
                        </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="pan">
                            <!-- 完善这个表单，将修改与查看页面合在了一起 -->
                            <form class="form-horizontal" role="form" action="" methed="post" >
                                <div class="col-sm-4 cdl4">
                                    <input type="text" id="searchId" class="form-control" placeholder="请输入学生学号" name="studentId">
                                </div>
                                <div class="col-sm-2">
                                    <button type="button" onclick="searchStudent()" class="btn btn-primary cdl4" style="padding:6px 33px;">查询</button>
                                </div>
                                <div class="col-md-9">
                                     <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                       <thead>
                                            <tr>
                                                <th>学号</th>
                                                <th>姓名</th>
                                                <th>统考成绩</th>
                                                <th>毕业论文成绩</th>
                                            </tr>
                                            <tbody id="tbody">                                         
                                            </tbody>
                                            
                                        </thead>
                                    </table>

                                    <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                       <thead>
                                            <tr>
                                                <th>课程id</th>
                                                <th>课程名称</th>
                                                <th>分数</th>
                                            </tr>
                                            <tbody id="tbody2">
                                            </tbody>
                                        </thead>
                                    </table>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane" id="pane">
                            <form class="form-horizontal" role="form" action="" methed="post"  id="grade-from">
                                  <div class="cdl4" id="lsy3" style="display: block;">
                                  <div class="form-group">
                                        <label for="f15" class="col-sm-2 control-label" style="margin-top: 0px">学号</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" id="stuNum" onblur="testIsVoid(this.id)" placeholder="学号" name="stuNum">
                                            <div id="isStuNumNull"></div>
                                        </div>
                                    </div>
                                  <div class="form-group">
                                        <label for="f17" class="col-sm-2 control-label" style="margin-top: 0px">姓名</label>
                                        <div class="col-sm-9">
                                            <input id="name" type="text" class="form-control" id="f17" placeholder="姓名" name="stuName">
                                        </div>
                                    </div>
                                  <div class="form-group">
                                        <label for="f1" class="col-sm-2 control-label" style="margin-top: 0px">统考成绩</label>
                                        <div class="col-sm-9">
                                            <input type="text" id="examGrade" class="form-control number" id="f1" placeholder="统考成绩" name="examGrade">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="f6" class="col-sm-2 control-label" style="margin-top: 0px">毕业论文成绩</label>
                                        <div class="col-sm-9">
                                            <input type="text" id="essayRemark" class="form-control number" id="f6" placeholder="毕业论文成绩" name="essayremark">
                                        </div>
                                    </div>
                                   
               						<div>
               					         <button type="button" class="btn btn-primary" value="录入" onclick="addScore()" style="margin-left: 711px;">录入</button>            						
               						</div>
                                    </div>
                            </form>
                        </div>
                        
                        <div class="tab-pane" id="panet">
                            <form class="form-horizontal" role="form" action="" methed="post" >
                                  
                                 <div class="col-sm-4 cdl4">
                                    <input id="searchCourseName" type="text" class="form-control" placeholder="请输入课程名称">
                                </div>
                                <div class="col-sm-2">
                                    <input type="button" class="btn btn-primary cdl4" onclick="SearchCourseName()" style="padding:6px 33px;" value="search">
                                </div>
                                
                                <div class="col-md-9">
                                    <table id="addScore" class="table table-striped table-bordered table-hover table-condensed cdl4">
                                       <thead>
                                            <tr>
                                                <th>学号</th>
                                                <th>姓名</th>	
                                                <th>课程成绩</th>
                                            </tr>
                                            
                                        </thead>                                          
                                    </table>
                                    
               						<div>
                                        <button class="btn btn-primary pull-right"  onclick="commitScore()">录入</button>
               					         <!-- <input type="button" onclick="commitScore()" value="录入" style="margin-left: 711px;">   -->           						
               						</div>
                                    </div>
                            </form>
                        </div>
                        <div class="tab-pane" id="panel">
                            <form class="form-horizontal" role="form" action="" methed="post" >
                            
                                <div class="col-sm-4 cdl4">
                                    <input id="search001" type="text" class="form-control" placeholder="请输入学生编号" >
                                </div>
                                <div class="col-sm-2">
                                    <input type="button" class="btn btn-primary cdl4" onclick="setshow()" style="padding:6px 33px;" value="查询">
                                </div>
                                
                                <div class="col-md-9">
                                    <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                       <thead>
                                            <tr>
                                                <th>学号</th>
                                                <th>姓名</th>
                                                <th>统考成绩</th>
                                                <th>毕业论文成绩</th>
                                                <th>操作</th>
                                            </tr>
                                        </thead>
                                            <tr>
                              					<th><input id="studentId" name="alterStudentId" style='border-left:0px;border-top:0px;border-right:0px;border-bottom:1px ' readonly></td>
                                				<th><input id="studentName" name="alterStuName" style='border-left:0px;border-top:0px;border-right:0px;border-bottom:1px ' value="${alterStuName}" readonly/></th>
                               					<th><input id="examApply" name="alterExamGrade" value="${alterExamApply}"/></th>
                               					<th><input id="essayGrade" name="alterEssayGrade" value="${alterEssayGrade}"/></th>
                               					<th>
                                                <a type="button" class="btn btn-primary" onclick="alterExamScore()">修改</a>
                                                <!-- <input type="button" value="修改" onclick="alterExamScore()"> -->
                                                </th>
                              				</tr>
                              				
                                    </table>

                                    <table class="table table-striped table-bordered table-hover table-condensed cdl4">
                                       <thead>
                                            <tr>
                                                <th>课程id</th>
                                                <th>课程名称</th>
                                                <th>分数</th>
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
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="<%=path %>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/index.js"></script>
    <script type="text/javascript" src="<%=path %>/js/cdl.js"></script>

    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00010").addClass("open");
    $(".mid-left .nav .mid-left-li00010").children('ul').slideDown();
    //查询学生成绩信息
    function setshow()					
    {
    	var id = $("#search001").val();
    	if(id=='')
    	{
    		alert("查询条件不能为空");
    		return false;
    	}
    	if(isNaN(id))
    	{
    		alert("请输入学号");
    		return false;
    	}
    	
    	console.log(id);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/alterGrade' />", 
    	    data : 
    	    {
    	      'id' : id,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	var tbody = $('#list');
    	    	tbody.empty()
    	    	
    	    	if(jsonData.statu == 1)
    	    	{
    	    		alert("该学生没有录入成绩");
    	    		return false;
    	    	}
    	        $('#studentId').val(jsonData.studentId); 
    	        $('#studentName').val(jsonData.stuName);
    	        $('#examApply').val(jsonData.examGrade);
    	        $('#essayGrade').val(jsonData.essayGrade);
    	        
    	        for (var i=0; i<jsonData.studentCourseGrade.length; i++)
    	        {
    	        	var tr = $("<tr></tr>");
    	        	$("<th></th>").html('<input id="'+'courseId'+i+'"'+'value="'+jsonData.studentCourseGrade[i].courseId+'"'+'name="'+'courseId'+i+'"'+'readonly/>').appendTo(tr);
    	        	$("<th></th>").html('<input id="'+'courseName'+i+'"'+'value="'+jsonData.studentCourseGrade[i].courseName+'"'+'name="'+'courseId'+i+'"'+'readonly/>').appendTo(tr);
    	        	$("<th></th>").html('<input id="'+'termGrade'+i+'"'+'value="'+jsonData.studentCourseGrade[i].termGrade+'"'+'name="'+'courseId'+i+'" class="number"'+'/>').appendTo(tr);
    	        	$("<th></th>").html('<input type="button" value="修改" onclick="commit(this.id)" id="alter'+i+'"'+'/>').appendTo(tr);
    	        	tbody.append(tr); 
    	        }   	               
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    } 
    
    function commit(id)				//提交修改结果
    {
    	console.log(id);
    	var i = id.substring(5,id.length);
    	var studentId = $("#search001").val();
    	var courseId = $("#courseId"+i).val();
    	var termGrade = $('#termGrade'+i).val();
    	if(judge(termGrade))
    	{
    		return false;
    	}
    	console.log(courseId);
    	console.log(termGrade);
    	console.log(studentId);
    	console.log(i);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/alterGradeP' />", 
    	    data : 
    	    {
    	    	'studentId': studentId,
    	      'courseId' : courseId,
    	      'termGrade': termGrade,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);  
    	    	console.log(jsonData);
    	    	window.location.reload();
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    function SearchCourseName()		//通过课程名字录入学生成绩
    {
    	var courseName = $("#searchCourseName").val();
    	if(courseName=='')
    	{
    		alert("查询条件为空")
    		return false;
    	}
    	if(!isNaN(courseName))
    	{
    		alert("请输入课程名");
    		return false;
    	}  	
    	console.log(courseName);
    	var tbody = $('#addScore');
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/searchCourseNameAndStudent' />", 
    	    data : 
    	    {
    	      'courseName' : courseName,
    	     },  
    	    dataType: "json",   
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);
    	    	console.log(jsonData);
    	    	if(jsonData.courseAddScore.length == 0)
    	    	{
    	    		alert("没有人选该课程");
    	    		return false;
    	    	} 
    	    	
    	    	for(var i = 0 ;i < jsonData.courseAddScore.length; i++)
    	    	{
    	    		var tr = $("<tr></tr>");
    	        	$("<th></th>").html('<input id="studentId'+i+'"'+'value="'+jsonData.courseAddScore[i].stuNum+'"'+' readonly/>').appendTo(tr);
    	        	$("<th></th>").html(jsonData.courseAddScore[i].userName).appendTo(tr);  
    	        	$("<th></th>").html('<input id="essayGrade'+i+'"'+'name="alterEssayGrade" class = "number" value="${alterEssayGrade}"/>').appendTo(tr);
    	        	tbody.append(tr);
    	    	}
    	    },   
    	    error :function()
    	    {   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    } 
    
    function commitScore()				//提交录入的学生成绩
    {
    	var p = [];
    	var pp = [];
    	var i = 0;
    	var courseName = $('#searchCourseName').val();
    	
    	while($('#studentId'+i).val()!=null)
    	{
    		p[i]=$('#studentId'+i).val();
    		pp[i]=$('#essayGrade'+i).val();
    		if(judge(pp[i]))
    		{
    			return false;
    		}
    		i++;
    	}	
    	console.log(p);
    	console.log(pp);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/searchCourseNameAndStudent2' />", 
    	    data : 
    	    {
    	      'p':  p,
    	      'pp': pp,
    	      'courseName':courseName,
    	     },  
    	    dataType: "json",  
    	  	traditional: true,
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);  
    	    	console.log(jsonData);
    	    	
    	    	alert("添加成功")
    	    	window.location.reload();
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    function addScore()
    {
    	var studentId = $('#stuNum').val();
    	if (studentId=='')
    	{
    		alert("学号不可为空");
    		return false;
    	}
    	if (isNaN(studentId))
    	{
    		alert("请输入学号");
    		return false;
    	}
    	var examGrade = $("#examGrade").val();
    	var essayRemark = $("#essayRemark").val();
    	if(judge(examGrade) && judge(essayRemark))
    	{
    		return false;
    	}
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/addScore' />", 
    	    data : 
    	    {
    	      'studentId':studentId,
    	      'examGrade': examGrade,
    	      'essayRemark':essayRemark,
    	     },  
    	    dataType: "json",  
    	  	traditional: true,
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);  
    	    	console.log(jsonData);
    	    	if(jsonData.statu==1)
    	    	{
    	    		alert("添加成功");
    	    		window.location.reload()
    	    	}
    	    	else
    	    	{
    	    		alert("添加失败")
    	    	}
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});
    }
    
    function testIsVoid(id)
    {
    	var studentId = $("#stuNum").val();
    	if (isNaN(studentId))
    	{
    		alert("请输入学号");
    		return false;
    	}
    	var name = $("#name");0
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/testIsHaveStudent' />", 
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
    	    	if(jsonData.statu==1)
    	    	{
    	    		name.val(jsonData.studentName);
    	    	}
    	    	else if(jsonData.statu==2)
    	    	{
    	    		alert("成绩以录入(可覆盖)");
    	    		return false;
    	    	}
    	    	else
    	    	{
    	    		name.val("不存在该学生")
    	    	}
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }
    
    function searchStudent()
    {
    	var studentId = $("#searchId").val();
    	if(isNaN(studentId))
    	{
    		alert("请输入学号");
    		return false;
    	}
    	var tbody = $("#tbody");
    	tbody.empty();
    	var tbody2 = $("#tbody2");
    	tbody2.empty();	
    	console.log(studentId);
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/quaryScore' />", 
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
    	    	
    	    	var tr = $("<tr></tr>");
    	    	$("<td></td>").html(jsonData.studentId).appendTo(tr);
    	    	$("<td></td>").html(jsonData.stuName).appendTo(tr);
    	    	$("<td></td>").html(jsonData.examGrade).appendTo(tr);
    	    	$("<td></td>").html(jsonData.essayRemark).appendTo(tr);
    	    	tbody.append(tr);  	    	
    	    	if(jsonData.studentCourseGrade!=null)	
    	    	{
    	    		for (var i = 0;i < jsonData.studentCourseGrade.length; i++)
        	    	{
        	    		var tr = $("<tr></tr>");
        	    		$("<td></td>").html(jsonData.studentCourseGrade[i].courseId).appendTo(tr);
            	    	$("<td></td>").html(jsonData.studentCourseGrade[i].courseName).appendTo(tr);
            	    	$("<td></td>").html(jsonData.studentCourseGrade[i].termGrade).appendTo(tr);
            	    	tbody2.append(tr);
        	    	}
    	    	}
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    }   
    	});   
    }

    
    function alterExamScore()
    {
    	var examApply = $("#examApply").val();
    	var essayGrade = $("#essayGrade").val();
    	var studentId = $("#studentId").val();
    	
    	if(judge(essayGrade))
    	{
    		return false;
    	}
    	$.ajax( {
    	    type : "POST",   
    	    url : "<c:url value='/score/alterExamGrade' />", 
    	    data : 
    	    {
    	    	'examApply':examApply,
    	    	'essayGrade':essayGrade,
    	      	'studentId':studentId,
    	     },  
    	    dataType: "json",  
    	  	traditional: true,
    	    success : function(data) 
    	    {
    	    	var jsonData = eval(data);  
    	    	console.log(jsonData); 	    	
    	    	if(jsonData.state == 1)
    	    	{
    	    		alert("添加成功")
        	    	window.location.reload();
    	    	}
    	    	else
    	    	{
    	    		alert("添加失败")
    	    	}
    	    },   
    	    error :function(){   
    	        alert("网络连接出错！");   
    	    
    	}});   
    }
    
    function judge(score)
    {
    	if (isNaN(score))
    	{
    		alert("请输入数字");
    		return true
    	}
    	if (score<0||score>100)
    	{
    		alert("请输入0-100");
    		return true
    	}
    }
    </script>
</body>


</html>
