<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String classpath = request.getContextPath(); %>
<%String filepath = request.getContextPath()+"/test"; %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%String path = request.getContextPath(); %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>命题管理</title>
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=filepath%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/topic-manage.css">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/validate.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="header">
        <div class="container-fluid">
            <div class="row-fluid">
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
        </div>
    </div>
    <div class="middle">
        <div class="container-fluid">
            <div class="row-fluid">
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
                        <h2><i class="fa fa-desktop color"></i> 命题管理 <small>自考管理系统</small></h2>
                    </div>
                    <div class="row-fluid mid-right-down">
                        <div class="col-md-12 mid-r-down">
                            <!-- 征题管理部分 -->
                            
                            <!-- 提示 -->
                                <c:if  test = "${addQuestionBank == 'addError'}">
                                    <script type="text/javascript">
                                        alert("该试卷编号已经存在！！！");
                                    </script>
                                </c:if>
                                <c:if  test = "${addQuestionBank == 'addSuccess'}">
                                    <script type="text/javascript">
                                        alert("试卷添加成功！！！");
                                    </script>
                                </c:if>
                                <c:if  test = "${addQuestionBank == 'queryError'}">
                                    <script type="text/javascript">
                                        alert("该课程不存在！！！");
                                    </script>
                                </c:if>
                                <c:if  test = "${passOrNot == 'passSuccess'}">
                                    <script type="text/javascript">
                                        alert("试卷审核通过！！！");
                                    </script>
                                </c:if>
                                <c:if  test = "${passOrNot == 'noSuccess'}">
                                    <script type="text/javascript">
                                        alert("试卷审核不通过！！！");
                                    </script>
                                </c:if>
                                <c:if  test = "${addQuestionBank == 'passOrNotError'}">
                                    <script type="text/javascript">
                                        alert("试卷审核失败！！！");
                                    </script>
                                </c:if>

                            <div class="recruitment-manage">
                                <div class="row-fluid r-down-head">
                                    <h3>征题管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a class="recruitment-plan" href="javascript:void;">制定征题计划</a></li>
                                        <li><a class="add-recruitment" href="javascript:void;">新试卷入库</a></li>
                                        <li><a class="auditing-recruitment" href="javascript:void;">审题管理</a></li>
                                    </ul>
                                </div>
                                <div class="row-fluid r-down-footing">
                                    <div class="col-md-12">
                                    <!-- 制定征题计划 -->
                                        <div class="recruitment-plan">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/query" method="post">
                                                <div class="form-group">
                                                    <label for="" class="col-sm-2 control-label">请选择科目</label>
                                                    <div class="col-sm-4">
                                                        <select name="textbookId" class="form-control">
                                                            <c:forEach items="${textbookList}" var="textbook">
                                                            <option value="${textbook.getTextbookId()}">${textbook.getBookname()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <c:if  test = "${QuestionBankSum<3}">
                                                            <p class="text-danger">此课程试卷数量小于3张</p>
                                                        </c:if>
                                                    </div>
                                                </div>
                                                
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>样卷列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>所属课程</th>
                                                            <th>所用教材</th>
                                                            <th>出题人</th>
                                                            <th>入库时间</th>
                                                            <th>是否审核</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${questionbankList}" var="questionbank">
                                                        <tr>
                                                            <td>${questionbank.getQuestionbankId()}</td>
                                                            <td>${questionbank.getPaperType()}</td>
                                                            <td>${questionbank.getTestbookId()}</td>
                                                            <td>${questionbank.getWriter()}</td>
                                                            <td><fmt:formatDate value="${questionbank.getInTime()}" pattern="yyyy-MM-dd"/></td>
                                                            <c:choose>
                                                                <c:when test="${questionbank.getStatus() == 0}">
                                                                    <td>未审核</td>
                                                                </c:when>

                                                                <c:when test="${questionbank.getStatus() == 1}">
                                                                    <td>已过审</td>
                                                                </c:when>

                                                                <c:otherwise>
                                                                    <td>已废弃</td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="page-btn text-center">
                                                <ul class="pagination">
                                                    <c:forEach begin="1" end="${pageSum}" var="p">
                                                        <c:choose>
                                                            <c:when test="${pageNum == p }">
                                                                <li class="active">
                                                                    <a href="<%=classpath%>/QuestionBank/query?pageNum=${p}&textbookId=${TestbookId}">${p}</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                 <li>
                                                                    <a href="<%=classpath%>/QuestionBank/query?pageNum=${p}&textbookId=${TestbookId}">${p}</a>
                                                                 </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- 新卷入库 -->
                                        <div class="add-recruitment">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/add" method="post" id="topic-Form-rec">
                                                
                                                <!-- <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">试卷编号</label>
                                                    <div class="col-sm-10">
                                                        <input name="questionbankId" type="text" class="form-control" id="firstname" placeholder="请输入试卷编号" required>
                                                    </div>
                                                </div> -->
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">试卷名称</label>
                                                    <div class="col-sm-10">
                                                        <input name="paperType" type="text" class="form-control" id="lastname" placeholder="请输入试卷名称" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">试卷所用教材ID</label>
                                                    <div class="col-sm-10">
                                                        <select name="testbookId" class="form-control">
                                                            <c:forEach items="${textbookList}" var="textbook">
                                                            <option value="${textbook.getTextbookId()}">${textbook.getBookname()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="Propositional" class="col-sm-2 control-label">命题人</label>
                                                    <div class="col-sm-10">
                                                        <input name="writer" type="text" class="form-control" id="Propositional" placeholder="请输入命题人" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                        <button type="reset" class="btn btn-default">重置</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- 审题管理 -->
                                        <div class="auditing-recruitment">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/query2" method="post">
                                                <div class="form-group">
                                                    <label for="" class="col-sm-2 control-label">样卷</label>
                                                    <div class="col-sm-4">
                                                        <input name="search"  type="text" class="form-control" id="search2" placeholder="输入试卷名称相关">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="query22()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>样卷列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>试卷名称</th>
                                                            <th>所用教材</th>
                                                            <th>出题人</th>
                                                            <th>入库时间</th>
                                                            <th>是否审核</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001">
                                                        <!-- <c:forEach items="${questionbankList2}" var="questionbank2">
                                                        <tr>
                                                            <td>${questionbank2.getQuestionbankId()}</td>
                                                            <td>${questionbank2.getPaperType()}</td>
                                                            <td>${questionbank2.getTestbookId()}</td>
                                                            <td>${questionbank2.getWriter()}</td>
                                                            <td>${questionbank2.getInTime()}</td>
                                                            <td>${questionbank2.getStatus()}</td>
                                                            <td>
                                                                <a href='<%=classpath%>/QuestionBank/passOrNot?type=Yes&questionbankId=${questionbank2.getQuestionbankId()}'>通过</a>
                                                                <a href='<%=classpath%>/QuestionBank/passOrNot?type=No&questionbankId=${questionbank2.getQuestionbankId()}'>作废</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="page-btn text-center">
                                                <ul class="pagination" id="ul001">
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row-fluid footing">
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-12 footer">
                    <p class="text-center">
                        Copyright 2013 © - Bootstrap Themes
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
    <script src="<%=filepath%>/js/jquery-2.1.4.js"></script>
    <!-- 加载bootstrap的核心js库 -->
    <script src="<%=filepath%>/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=filepath%>/js/index.js"></script>
    <script type="text/javascript" src="<%=filepath%>/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<%=filepath%>/js/messages_zh.min.js"></script>
    <script type="text/javascript" src="<%=filepath%>/js/myValidate.js"></script>
    <!-- <script type="text/javascript" src="js/topic-manage.js"></script> -->
    <script type="text/javascript">
    var search="";
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00021").addClass("open");
    $(".mid-left .nav .mid-left-li00021").children('ul').slideDown();

    //征题管理部分右边导航栏切换
    $(".recruitment-manage .r-down-footing .recruitment-plan").show().siblings('div').hide();
    $(".recruitment-manage .r-down-middle .nav li").click(function(event) {
        /* Act on the event */
        $(this).addClass('active');
        $(this).siblings('li').removeClass('active');
    });
    $(".recruitment-manage .r-down-middle .nav li a").click(function(event) {
        /* Act on the event */
        $(".recruitment-manage .r-down-footing ." + event.target.className).show();
        $(".recruitment-manage .r-down-footing ." + event.target.className).siblings('div').hide();
    });


    function query22 (pagenum) {
        search=$(".auditing-recruitment #search2").val();
        var url01 = "<c:url value='/QuestionBank/query2' />";
        //alert(search);
        var pageNum=pagenum;

        $.ajax( {
            type : "POST",   
            url : url01, 
            data : 
            {
              'search' : search,
              'pageNum': pageNum,
             },  
            dataType: "json",   
            success : function(data) 
            {
                //var data = eval(data);
                
                var tbody = $('#tbody001');
                tbody.empty();
                for (var i=0; i<data.questionbankList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.questionbankList[i].questionbankId).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].paperType).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].testbookName).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].writer).appendTo(tr);
                    var date = new Date(data.questionbankList[i].inTime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
                    if(data.questionbankList[i].status == 0)
                        var status = "未过审";
                    $("<td></td>").html(status).appendTo(tr);
                    var atip = "<a href='<%=classpath%>/QuestionBank/passOrNot?type=Yes&questionbankId="+data.questionbankList[i].questionbankId+"'>通过</a>/<a href='<%=classpath%>/QuestionBank/passOrNot?type=No&questionbankId="+data.questionbankList[i].questionbankId+"'>作废</a>"
                    $("<td></td>").html(atip).appendTo(tr);
                    tbody.append(tr); 
                }    
                // 分页
                var ul001 = $('#ul001')
                ul001.empty();
                // alert(data.pageSum);
                // alert(data.pageNum);
                for(var i=1; i<=data.pageSum; i++)
                {
                    if(data.pageNum == i){                       
                        var astr="<a >"+i+"</a>";
                        $("<li></li>").html(astr).addClass("active").appendTo(ul001);
                    }else {
                        var astr="<a >"+i+"</a>";
                        $("<li></li>").html(astr).appendTo(ul001);
                    }
                }                  
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        });
    };
    $(".auditing-recruitment .page-btn ul").on("click",'li a',function(event){
        var pagenum=$(this).text();
        //alert(pagenum);
        query22 (pagenum);
    });
    </script>
</body>

</html>
