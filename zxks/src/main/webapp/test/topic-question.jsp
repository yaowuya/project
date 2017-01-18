<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String classpath = request.getContextPath(); %>
<%String filepath = request.getContextPath()+"/test"; %>
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
                            <!-- 题库管理 -->
                            <div class="question-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>题库管理</h3>
                                </div>
                                <div class="row-fluid r-down-middle">
                                    <div class="col-md-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a class="statement-page" href="javascript:void;">命题库页面</a></li>
                                            <li><a class="product-page" href="javascript:void;">成品库页面</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12  r-down-footing">
                                        <!-- 命题库页面 -->
                                        <div class="statement-page">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBankExtend/query" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-8">
                                                        <input name="search" type="text" class="form-control" id="firstname" placeholder="教材名称相关">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询题库</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>命题题库列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材ID</th>
                                                            <th>教材名称</th>
                                                            <th>所属课程</th>
                                                            <th>出版社</th>
                                                            <th>是否废弃</th>
                                                            <th>变更时间</th>
                                                            <th>查看题库</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${questionBankExtendList}" var="questionBankExtend">
                                                        <tr>
                                                            <td>${questionBankExtend.getTextbookId()}</td>
                                                            <td>${questionBankExtend.getBookname()}</td>
                                                            <td>${questionBankExtend.getCourseName()}</td>
                                                            <td>${questionBankExtend.getBooktype()}</td>
                                                            <c:choose>
                                                                <c:when test="${questionBankExtend.getIsOverdue() == '000'}">
                                                                    <td>否</td>
                                                                </c:when>

                                                                <c:otherwise>
                                                                    <td>已废弃</td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <td><fmt:formatDate value="${questionBankExtend.getOverdueTime()}" pattern="yyyy-MM-dd"/></td>
                                                            <td>
                                                                <a class="tiku-lianjie-statement" href="javascript:void;">${questionBankExtend.getBookname()}题库</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 成品库页面 -->
                                        <div class="product-page">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBankExtend/query2" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-8">
                                                        <input name="search" type="text" class="form-control" id="query1" placeholder="教材名称相关">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <button type="button" onclick="query()" class="btn btn-primary" style="padding:6px 33px;">查询题库</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>成品题库列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材ID</th>
                                                            <th>教材名称</th>
                                                            <th>所属课程</th>
                                                            <th>出版社</th>
                                                            <th>变更时间</th>
                                                            <th>查看题库</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody003">
                                                        <!-- <c:forEach items="${questionBankExtendList2}" var="questionBankExtend">
                                                        <tr>
                                                            <td>${questionBankExtend.getTestbookId()}</td>
                                                            <td>${questionBankExtend.getTestbookName()}</td>
                                                            <td>${questionBankExtend.getCourseName()}</td>
                                                            <td>${questionBankExtend.getBooktype()}</td>
                                                            <td>${questionBankExtend.getOverdueTime()}</td>
                                                            <td>
                                                                <a class='tiku-lianjie-product' href='javascript:void;'>${questionBankExtend.getTestbookName()}题库</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row-fluid r-down-footer">
                                    <div class="col-md-12 r-down-footering">
                                        <!-- 命题题库链接 -->
                                        <div class="tiku-lianjie-statement">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>所有样卷</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>试卷名称</th>
                                                            <th>出题人</th>
                                                            <th>录入时间</th>
                                                            <th>是否被用</th>
                                                            <th>是否被借</th>
                                                            <th>审核状态</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001" >
                                                        
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 成品题库链接 -->
                                        <div class="tiku-lianjie-product">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>所有样卷</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>试卷名称</th>
                                                            <th>出题人</th>
                                                            <th>录入时间</th>
                                                            <th>是否被用</th>
                                                            <th>是否被借</th>
                                                            <th>审核状态</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody002" >
                                                        
                                                    </tbody>
                                                </table>
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
    <!-- <script type="text/javascript" src="js/topic-manage.js"></script> -->
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00021").addClass("open");
    $(".mid-left .nav .mid-left-li00021").children('ul').slideDown();

    // 题库管理
    $(".question-sample .r-down-footing .statement-page").show().siblings('div').hide();
    $(".question-sample .r-down-middle .nav li").click(function(event) {
        /* Act on the event */
        $(this).addClass('active');
        $(this).siblings('li').removeClass('active');
    });
    $(".question-sample .r-down-middle .nav li a").click(function(event) {
        /* Act on the event */
        $(".question-sample .r-down-footing ." + event.target.className).show();
        $(".question-sample .r-down-footing ." + event.target.className).siblings('div').hide();
        $(".r-down-footering .tiku-lianjie-statement").hide().siblings('div').hide();
    });
    //链接和修改
    $(".r-down-footering .tiku-lianjie-statement").hide().siblings('div').hide();
    $(".statement-page .table tbody a").click(function(event) {
        $(".question-sample .r-down-footering ." + event.target.className).show();
        $(".question-sample .r-down-footering ." + event.target.className).siblings('div').hide();
    })
    $(".product-page .table tbody").on("click","a",function(event) {
        $(".question-sample .r-down-footering ." + event.target.className).show();
        $(".question-sample .r-down-footering ." + event.target.className).siblings('div').hide();
    })

    //调用命题题库
    $(".statement-page .table tbody .tiku-lianjie-statement").click(function(event) {
        /* Act on the event */
        var TestbookId=$(this).parent('td').siblings('td').eq(0).text();
        var type = 000;
        setshow1(TestbookId,type);
    });
    //调用成品题库''
    $(".product-page .table tbody").on("click",".tiku-lianjie-product",function(event) {
        /* Act on the event */
        var TestbookId=$(this).parent('td').siblings('td').eq(0).text();
        var type = 111;
        setshow1(TestbookId,type);
    });

    function setshow1(TestbookId001,type)
    {
        //alert(TestbookId01);
        //var id = $("#search001").val();
        var TestbookId = TestbookId001;
        if(type == "000"){
            var url01 = "<c:url value='/QuestionBank/query3' />";
            var tbody = $('#tbody001');
        } else {
            var url01 = "<c:url value='/QuestionBank/query4' />";
            var tbody = $('#tbody002');
        }
        console.log(TestbookId);
        $.ajax( {
            type : "POST",   
            url : url01, 
            data : 
            {
              'TestbookId' : TestbookId,
             },  
            dataType: "json",   
            success : function(data) 
            {
                
                tbody.empty();
                //console.log(data.questionbankList[1].questionbankId);
                for (var i=0; i<data.questionbankList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.questionbankList[i].questionbankId).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].paperType).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].writer).appendTo(tr);
                    var date = new Date(data.questionbankList[i].inTime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
                    if(data.questionbankList[i].used == 1) 
                        var used = "已启用";
                    else var used = "否";
                    $("<td></td>").html(used).appendTo(tr);
                    if(data.questionbankList[i].borrowed == 1) 
                        var borrowed = "已被借";
                    else var borrowed = "否";
                    $("<td></td>").html(borrowed).appendTo(tr);
                    if(data.questionbankList[i].status == 0) 
                        var status = "未审核";
                    else if(data.questionbankList[i].status == 1) 
                        var status = "已过审";
                    else var status = "已废弃";
                    $("<td></td>").html(status).appendTo(tr);
                    tbody.append(tr); 
                }                      
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        });   
        }; 

        function query (){
            var query1=$(".product-page #query1").val();
            var url01 = "<c:url value='/QuestionBankExtend/query2' />";

            $.ajax( {
            type : "POST",   
            url : url01, 
            data : 
            {
              'search' : query1,
             },  
            dataType: "json",   
            success : function(data) 
            {
                //var data = eval(data);
                
                var tbody = $('#tbody003');
                tbody.empty();
                for (var i=0; i<data.questionBankExtendList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.questionBankExtendList[i].textbookId).appendTo(tr);
                    $("<td></td>").html(data.questionBankExtendList[i].bookname).appendTo(tr);
                    $("<td></td>").html(data.questionBankExtendList[i].courseName).appendTo(tr);
                    $("<td></td>").html(data.questionBankExtendList[i].booktype).appendTo(tr);
                    var date = new Date(data.questionBankExtendList[i].overdueTime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
                    $("<td></td>").html("<a class='tiku-lianjie-product' >"+data.questionBankExtendList[i].bookname+"题库</a>").appendTo(tr);
                    tbody.append(tr); 
                }                      
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        }); 
        };
    </script>
</body>

</html>