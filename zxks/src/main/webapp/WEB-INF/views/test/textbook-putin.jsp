<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String classpath = request.getContextPath(); %>
<%String filepath = request.getContextPath()+"/test"; %>
<%String path = request.getContextPath(); %>
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
    <title>教材管理</title>
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=filepath%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/text-book.css">
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
                        <h2><i class="fa fa-desktop color"></i>教材管理 <small>自考管理系统</small></h2>
                    </div>
                    <div class="row-fluid mid-right-down">
                        <div class="col-md-12 mid-r-down">
                            <!-- 入库调拨管理 -->

                            <c:if  test = "${TextbookBuy == 'update4TextbookSuccess'}">
                                <script type="text/javascript">
                                    alert("课本出库成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update4TextbookError'}">
                                <script type="text/javascript">
                                    alert("课本出库失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update5TextbookSuccess'}">
                                <script type="text/javascript">
                                    alert("课本入库成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update5TextbookError'}">
                                <script type="text/javascript">
                                    alert("课本入库失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update2TextbookSuccess'}">
                                <script type="text/javascript">
                                    alert("课本报废成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update2TextbookError'}">
                                <script type="text/javascript">
                                    alert("课本报废失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update3TextbookSuccess'}">
                                <script type="text/javascript">
                                    alert("课本启用成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${TextbookBuy == 'update3TextbookError'}">
                                <script type="text/javascript">
                                    alert("课本启用失败！！！");
                                </script>
                            </c:if>

                            <div class="putin-textbook">
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-head">
                                        <h3>入库调拨</h3>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-middle">
                                        <ul class="nav nav-tabs">
                                            <li><a class="reject-check-putin" href="javascript:void(0)">报废审核</a></li>
                                            <li><a class="manage-book-putin" href="javascript:void(0)">教材出入库管理</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-footing">
                                        <!-- 报废审核 -->
                                        <div class="reject-check-putin">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/query4" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" class="form-control">
                                                            <option value="222">教材名字</option>
                                                            <option value="333">教材编号</option>
                                                            <option value="111">所属课程ID</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="firstname" placeholder="">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <p></p>
                                                        <p class="text-danger"></p>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive" style="margin-top: 30px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>教材信息列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材编号</th>
                                                            <th>教材名字</th>
                                                            <th>教材所属课程</th>
                                                            <th>教材类型</th>
                                                            <th>剩余数量</th>
                                                            <th>是否作废</th>
                                                            <th>作废理由</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${textbookList4}" var="textbook">
                                                        <tr>
                                                            <td>${textbook.getTextbookId()}</td>
                                                            <td>${textbook.getBookname()}</td>
                                                            <td>${textbook.getCourseName()}</td>
                                                            <td>${textbook.getBooktype()}</td>
                                                            <td>${textbook.getBookStorage()}</td>
                                                            <c:choose>
                                                                <c:when test="${textbook.getIsOverdue() == '000'}">
                                                                    <td>否</td>
                                                                </c:when>

                                                                <c:otherwise>
                                                                    <td>已废弃</td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <td>${textbook.getOverdueReason()}</td>
                                                            <td>
                                                                <a class="reject-check-baofei" href="javascript:void(0)" title="">报废</a>
                                                                /
                                                                <a href="<%=classpath%>/Textbook/update3?textbookId=${textbook.getTextbookId()}" title="">启用</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 教材出入库管理 -->
                                        <div class="manage-book-putin">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/query5" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind01" class="form-control">
                                                            <option value="222">教材名字</option>
                                                            <option value="333">教材编号</option>
                                                            <option value="111">所属课程ID</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="search01" placeholder="请选择条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="searchTextbook()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <p></p>
                                                        <p class="text-danger"></p>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive" style="margin-top: 30px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>教材信息列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材编号</th>
                                                            <th>教材名字</th>
                                                            <th>教材所属课程</th>
                                                            <th>教材类型</th>
                                                            <th>剩余数量</th>
                                                            <th>是否作废</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001">
                                                        <!-- <c:forEach items="${textbookList5}" var="textbook">
                                                        <tr>
                                                            <td>${textbook.getTextbookId()}</td>
                                                            <td>${textbook.getBookname()}</td>
                                                            <td>${textbook.getCourseId()}</td>
                                                            <td>${textbook.getBooktype()}</td>
                                                            <td>${textbook.getBookStorage()}</td>
                                                            <td>${textbook.getIsOverdue()}</td>
                                                            <td>
                                                                <a class="manage-bookout-baofei" href="javascript:void(0)" title="">出库</a>
                                                                /
                                                                <a class="manage-bookin-baofei" href="javascript:void(0)" title="">入库</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 报废链接跳转页面 -->
                                        <div class="putin-baofei">
                                            <!-- 报废审核--报废链接 -->
                                            <div class="reject-check-baofei">
                                                <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/update2" method="post" id="text-form-rejectcheck">
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                        <div class="col-sm-9">
                                                            <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材名字</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材所属课程</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材类型</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">剩余数量</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">是否报废</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">报废理由</label>
                                                        <div class="col-sm-9">
                                                            <input name="overdueReason" type="text" class="form-control" id="firstname" placeholder="" value="" >
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-9">
                                                            <button type="submit" class="btn btn-primary">提交</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- 出库链接模块 -->
                                            <div class="manage-bookout-baofei">
                                                <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/update4" method="post" id="text-book-bookout">
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                        <div class="col-sm-9">
                                                            <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材名称</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材所属课程</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材类型</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">剩余库存</label>
                                                        <div class="col-sm-9">
                                                            <input name="bookStorage" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">是否报废</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">出库数量</label>
                                                        <div class="col-sm-9">
                                                            <input name="addsum" type="text" class="form-control" id="firstname" placeholder="请输入出库数量" value="" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-9">
                                                            <button type="submit" class="btn btn-primary btn-dealer">提交</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <!-- 入库链接模块 -->
                                            <div class="manage-bookin-baofei">
                                                <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/update5" method="post" id="text-form-bookin">
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                        <div class="col-sm-9">
                                                            <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材名称</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材所属课程</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">教材类型</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">剩余库存</label>
                                                        <div class="col-sm-9">
                                                            <input name="bookStorage" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">是否报废</label>
                                                        <div class="col-sm-9">
                                                            <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="firstname" class="col-sm-2 control-label">入库数量</label>
                                                        <div class="col-sm-9">
                                                            <input name="addsum" type="text" class="form-control" id="firstname" placeholder="请输入入库数量" value="" required>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-9">
                                                            <button type="submit" class="btn btn-primary btn-dealer">提交</button>
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
    <!-- <script type="text/javascript" src="js/text-book.js"></script> -->
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00025").addClass("open");
    $(".mid-left .nav .mid-left-li00025").children('ul').slideDown();
    //入库调拨管理模块--start
    $(".putin-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".putin-textbook .r-down-footing .reject-check-putin").show().siblings('div').hide();
    $(".putin-textbook .r-down-middle .nav li a").click(function(event) {
        $(".putin-textbook .r-down-footing ." + event.target.className).show();
        $(".putin-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
    });
    // 报废审核--报废链接跳转
    $(".putin-baofei .reject-check-baofei").hide().siblings('div').hide();
    $(".reject-check-putin .table tbody a.reject-check-baofei").click(function(event) {
        $(".putin-baofei").show().siblings('div').hide();
        $(".putin-baofei .reject-check-baofei").show().siblings('div').hide();
        // 点击链接，获取table的值
        var tdLength = $(this).parent('td').prevAll().size();
        // alert(tdLength)
        var tdValue = $(this).parent('td').siblings('td');
        var inputValue = $(".putin-baofei .reject-check-baofei form .form-group");
        var tdText = 0;
        for (var i = 0; i < tdLength; i++) {
            tdText = tdValue.eq(i).text();
            inputValue.eq(i).find('input').val(tdText);
        }
    });
    // 教材管理出库入库
    $(".manage-book-putin .table tbody ").on("click","a",function(event) {
        $(".putin-baofei").show().siblings('div').hide();
        // alert(event.target.className)
        $(".putin-baofei ."+event.target.className).show().siblings('div').hide();
        // 点击链接，获取table的值
        var tdLength = $(this).parent('td').prevAll().size();
        // alert(tdLength)
        // if(tdLength>4){
        //     tdLength=4;
        // }
        var tdValue = $(this).parent('td').siblings('td');
        var inputValue = $(".putin-baofei ."+event.target.className+" form .form-group");
        var tdText = 0;
        for (var i = 0; i < tdLength; i++) {
            tdText = tdValue.eq(i).text();
            inputValue.eq(i).find('input').val(tdText);
        }
    });

    function searchTextbook () {
        var search=$(".manage-book-putin #search01").val();
        var kind=$("#kind01").find("option:selected").val();
        var url01 = "<c:url value='/Textbook/query' />";
        //alert(kind+" + "+search);
        $.ajax( {
            type : "POST",   
            url : url01, 
            data : 
            {
              'search' : search,
              'kind':kind,
             },  
            dataType: "json",   
            success : function(data) 
            {
                //var data = eval(data);
                
                var tbody = $('#tbody001');
                tbody.empty();
                for (var i=0; i<data.textbookList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.textbookList[i].textbookId).appendTo(tr);
                    $("<td></td>").html(data.textbookList[i].bookname).appendTo(tr);
                    $("<td></td>").html(data.textbookList[i].courseName).appendTo(tr);
                    $("<td></td>").html(data.textbookList[i].booktype).appendTo(tr);
                    $("<td></td>").html(data.textbookList[i].bookStorage).appendTo(tr);
                    if(data.textbookList[i].isOverdue == 000) var isOverdue = "否";
                    else var isOverdue = "已报废";
                    $("<td></td>").html(isOverdue).appendTo(tr);
                    var str = "<a class='manage-bookout-baofei'>出库</a>/<a class='manage-bookin-baofei'>入库</a>"
                    $("<td></td>").html(str).appendTo(tr);
                    tbody.append(tr); 
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
