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
    <title>教材管理</title>
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=filepath%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=filepath%>/css/text-book.css">
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
                            <!-- 教材财务管理 -->
                            <div class="finance-textbook">
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-head">
                                        <h3>教材财务管理</h3>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-middle">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a class="periodicals-finance" href="javascript:void;">
                                            书刊进销账目</a></li>
                                            <!-- <li><a class="in-out-finance" href="javascript:void;"> 出/入库账目</a></li> -->
                                            <li><a class="total-finance" href="javascript:void;">教材销售总账</a></li>
                                            <li><a class="details-finance" href="javascript:void;">管理费用明细账</a></li>
                                            <!-- <li><a class="search-email-mail" href="javascript:void;">收费项目管理</a></li> -->
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-footing">
                                        <!-- 书刊进销账目 -->
                                        <div class="periodicals-finance">
                                            <!-- <form class="form-horizontal" role="form">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select class="form-control">
                                                            <option>教材编号</option>
                                                            <option>教材类型</option>
                                                            <option>教材名字</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="text" class="form-control" id="firstname" placeholder="请选择条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <p></p>
                                                        <p class="text-danger"></p>
                                                    </div>
                                                </div>
                                            </form> -->
                                            <div class="table-responsive" style="margin-top: 30px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>书刊进销账目列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材编号</th>
                                                            <th>教材名称</th>
                                                            <th>所属课程</th>
                                                            <th>教材储量</th>
                                                            <th>是否废弃</th>
                                                            <th>购进均价</th>
                                                            <th>购进数量</th>
                                                            <th>购进总价</th>
                                                            <th>销出均价</th>
                                                            <th>销出数量</th>
                                                            <th>销出总价</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${financeBillList}" var="financeBill">
                                                            <tr>
                                                                <td>${financeBill.getTextbookId()}</td>
                                                                <td>${financeBill.getBookname()}</td>
                                                                <td>${financeBill.getCourseName()}</td>
                                                                <td>${financeBill.getBookStorage()}</td>
                                                                <td>${financeBill.getIsOverdue()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getBuyprice()}" type="currency" pattern="￥.00"/></td>
                                                                <td>${financeBill.getBuysum()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getBuyCost()}" type="currency" pattern="￥.00"/></td>
                                                                <td><fmt:formatNumber value="${financeBill.getSellprice()}" type="currency" pattern="￥.00"/></td>
                                                                <td>${financeBill.getSellsum()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getSellCost()}" type="currency" pattern="￥.00"/></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 教材销售总账 -->
                                        <div class="total-finance">
                                            <div class="table-responsive" style="margin-top: 30px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>教材账务总账列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材编号</th>
                                                            <th>教材名称</th>
                                                            <th>所属课程</th>
                                                            <th>教材储量</th>
                                                            <th>是否废弃</th>
                                                            <th>销出均价</th>
                                                            <th>销出数量</th>
                                                            <th>邮寄费用</th>
                                                            <th>退书费用</th>
                                                            <th>销售金额</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${financeBillList}" var="financeBill">
                                                            <tr>
                                                                <td>${financeBill.getTextbookId()}</td>
                                                                <td>${financeBill.getBookname()}</td>
                                                                <td>${financeBill.getCourseName()}</td>
                                                                <td>${financeBill.getBookStorage()}</td>
                                                                <td>${financeBill.getIsOverdue()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getSellprice()}" type="currency" pattern="￥.00"/></td>
                                                                <td>${financeBill.getSellsum()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getPostCost()}" type="currency" pattern="￥.00"/></td>
                                                                <td><fmt:formatNumber value="${financeBill.getRefundCost()}" type="currency" pattern="￥.00"/></td>
                                                                <td><fmt:formatNumber value="${financeBill.getSellCost()-financeBill.getRefundCost()-financeBill.getPostCost()}" type="currency" pattern="￥.00"/></td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 管理费用明细账 -->
                                        <div class="details-finance">
                                            <div class="table-responsive" style="margin-top: 30px;">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>管理费用明细账</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>教材编号</th>
                                                            <th>教材名称</th>
                                                            <th>所属课程</th>
                                                            <th>教材储量</th>
                                                            <th>是否废弃</th>
                                                            <th>库存管理费用</th>
                                                            <th>雇工费用</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${financeBillList}" var="financeBill">
                                                            <tr>
                                                                <td>${financeBill.getTextbookId()}</td>
                                                                <td>${financeBill.getBookname()}</td>
                                                                <td>${financeBill.getCourseName()}</td>
                                                                <td>${financeBill.getBookStorage()}</td>
                                                                <td>${financeBill.getIsOverdue()}</td>
                                                                <td><fmt:formatNumber value="${financeBill.getStorageCost()}" type="currency" pattern="￥.00"/>/月</td>
                                                                <td><fmt:formatNumber value="${financeBill.getStorageCost()*1.5}" type="currency" pattern="￥.00"/>/月</td>
                                                            </tr>
                                                        </c:forEach>
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
    <!-- <script type="text/javascript" src="js/text-book.js"></script> -->
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00025").addClass("open");
    $(".mid-left .nav .mid-left-li00025").children('ul').slideDown();
    //教材财务管理--start
    //导航栏
    $(".finance-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".finance-textbook .r-down-footing .periodicals-finance").show().siblings('div').hide();
    $(".finance-textbook .r-down-middle .nav li a").click(function(event) {
            $(".finance-textbook .r-down-footing ." + event.target.className).show();
            $(".finance-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        //教材财务管理--end
    </script>
</body>

</html>
