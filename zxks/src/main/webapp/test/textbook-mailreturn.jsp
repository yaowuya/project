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
                            <!-- 预定邮购及退书管理 -->

                            <c:if  test = "${Textbookbill == 'updateSuccess'}">
                                <script type="text/javascript">
                                    alert("修改订单成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${Textbookbill == 'updateError'}">
                                <script type="text/javascript">
                                    alert("修改订单失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${Textbookbill == 'addRefundSuccess'}">
                                <script type="text/javascript">
                                    alert("登记退书成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${Textbookbill == 'addRefundError'}">
                                <script type="text/javascript">
                                    alert("登记退书失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${Textbookbill == 'addSuccess'}">
                                <script type="text/javascript">
                                    alert("教材出售成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${Textbookbill == 'addError'}">
                                <script type="text/javascript">
                                    alert("教材出售失败！！！");
                                </script>
                            </c:if>

                            <div class="mail-return-textbook">
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-head">
                                        <h3>预定邮购及退书管理</h3>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-middle">
                                        <ul class="nav nav-tabs">
                                            <li><a class="search-order-mail" href="javascript:void(0)">查询订单</a></li>
                                            <li><a class="manage-book-mail" href="javascript:void(0)">教材预定</a></li>
                                            <li><a class="register-book-mail" href="javascript:void(0)">登记退书</a></li>
                                            <li><a class="search-book-mail" href="javascript:void(0)">查询退书</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-footing">
                                        <!-- 查询订单 -->
                                        <div class="search-order-mail">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbookbill/query" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" class="form-control">
                                                            <option value="111">教程编码</option>
                                                            <option value="222">买家账号</option>
                                                            <option value="333">订单编号</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="firstname" placeholder="${Textbookbill}">
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
                                                        <strong>订单信息列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>订单编号</th>
                                                            <th>教材编号</th>
                                                            <th>客户账号</th>
                                                            <th>客户地址</th>
                                                            <th>教材单价</th>
                                                            <th>订购数量</th>
                                                            <th>邮费</th>
                                                            <th>订单总价</th>
                                                            <th>订单时间</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${textbook_billList}" var="textbook_bill">
                                                        <tr>
                                                            <td>${textbook_bill.getTextbookIoId()}</td>
                                                            <td>${textbook_bill.getTextbookId()}</td>
                                                            <td>${textbook_bill.getEmail()}</td>
                                                            <td>${textbook_bill.getAddress()}</td>
                                                            <td>${textbook_bill.getTextbookPrice()}</td>
                                                            <c:choose>
                                                                <c:when test="${textbook_bill.getTextbookIocount() == -111}">
                                                                    <td>已退订</td>
                                                                </c:when>

                                                                <c:otherwise>
                                                                    <td>${textbook_bill.getTextbookIocount()}</td>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            <td>${textbook_bill.getPostPrice()}</td>
                                                            <td>${textbook_bill.getPostPrice()+textbook_bill.getTextbookIocount()*textbook_bill.getTextbookIocount()}</td>
                                                            <td><fmt:formatDate value="${textbook_bill.getTextbookIotime()}" pattern="yyyy-MM-dd"/></td>
                                                            <td>
                                                                <a class="search-order-xiugai" href="javascript:void(0)" title="">修改</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 登记退书信息 -->
                                        <div class="register-book-mail">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbookbill/query2" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind02" class="form-control">
                                                            <option value="111">教程编码</option>
                                                            <option value="222">买家账号</option>
                                                            <option value="333">订单编号</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="search02" placeholder="请选择条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="searchTextbookbill()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
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
                                                        <strong>订单信息列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>订单编号</th>
                                                            <th>教材编号</th>
                                                            <th>客户账号</th>
                                                            <th>客户地址</th>
                                                            <th>教材单价</th>
                                                            <th>订购数量</th>
                                                            <th>邮费</th>
                                                            <th>订单时间</th>
                                                            <th>订单总价</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody002">
                                                        <!-- <c:forEach items="${textbook_billList2}" var="textbook_bill">
                                                        <tr>
                                                            <td>${textbook_bill.getTextbookIoId()}</td>
                                                            <td>${textbook_bill.getTextbookId()}</td>
                                                            <td>${textbook_bill.getEmail()}</td>
                                                            <td>${textbook_bill.getAddress()}</td>
                                                            <td>${textbook_bill.getTextbookPrice()}</td>
                                                            <td>${textbook_bill.getTextbookIocount()}</td>
                                                            <td>${textbook_bill.getPostPrice()}</td>
                                                            <td>${textbook_bill.getPostPrice()+textbook_bill.getTextbookIocount()*textbook_bill.getTextbookIocount()}</td>
                                                            <td>${textbook_bill.getTextbookIotime()}</td>
                                                            <td>
                                                                <a class="register-book-xiugai">登记退书</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 查询退书信息 -->
                                        <div class="search-book-mail">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Refund/query" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind03" class="form-control">
                                                            <option value="111">教材编号</option>
                                                            <option value="222">购书单号</option>
                                                            <option value="333">退书单编号</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="search03" placeholder="请选择条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="searchRefund()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
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
                                                        <strong>退书信息列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>退书编号</th>
                                                            <th>教材编号</th>
                                                            <th>购买单号</th>
                                                            <th>退还单价</th>
                                                            <th>退书数量</th>
                                                            <th>退书理由</th>
                                                            <th>退书时间</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody003">
                                                        <!-- <c:forEach items="${refundList}" var="refund">
                                                        <tr>
                                                            <td>${refund.getRefundId()}</td>
                                                            <td>${refund.getTextbookId()}</td>
                                                            <td>${refund.getTextbookIoId()}</td>
                                                            <td>${refund.getRefundPrice()}</td>
                                                            <td>${refund.getRefundAmount()}</td>
                                                            <td>${refund.getReason()}</td>
                                                            <td>${refund.getRefundTime()}</td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 教材预定 -->
                                        <div class="manage-book-mail">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/query3" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind01" class="form-control">
                                                            <option value="111">所属课程</option>
                                                            <option value="222">教材名字</option>
                                                            <option value="333">教材编号</option>
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
                                                            <th>教材储量</th>
                                                            <th>是否报废</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001">
                                                        <!-- <c:forEach items="${textbookList}" var="textbook">
                                                        <tr>
                                                            <td>${textbook.getTextbookId()}</td>
                                                            <td>${textbook.getBookname()}</td>
                                                            <td>${textbook.getCourseId()}</td>
                                                            <td>${textbook.getBooktype()}</td>
                                                            <td>${textbook.getBookStorage()}</td>
                                                            <td>${textbook.getIsOverdue()}</td>
                                                            <td>
                                                                <a class="manage-book-xiugai" href="javascript:void(0)" title="">出售</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 预定邮购及退书管理--跳转模块 -->
                                        <div class="mail-xiugai">
                                            <div class="row-fluid">
                                                <div class="col-md-12">
                                                    <!-- 查询订单信息--修改跳转页面 -->
                                                    <div class="search-order-xiugai">
                                                        <form class="form-horizontal" role="form" action="<%=classpath%>/Textbookbill/update" method="post" id="text-form-searchorder">
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订单编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookIoId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="custom-number" class="col-sm-2 control-label">客户账号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="email" type="text" class="form-control" id="custom-number" placeholder="" value="" >
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="cus-addr" class="col-sm-2 control-label">客户地址</label>
                                                                <div class="col-sm-9">
                                                                    <input name="address" type="text" class="form-control" id="cus-addr" placeholder="" value="" >
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="cus-price" class="col-sm-2 control-label">教材单价</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookPrice" type="text" class="form-control required number" id="cus-price" placeholder="" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订购数量</label>
                                                                <div class="col-sm-9">
                                                                    <input type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email-money" class="col-sm-2 control-label">邮费</label>
                                                                <div class="col-sm-9">
                                                                    <input name="postPrice" type="text" class="form-control required number" id="email-money" placeholder="" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-sm-offset-2 col-sm-9">
                                                                    <button type="submit" class="btn btn-primary">提交</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- 登记退书跳转 -->
                                                    <div class="register-book-xiugai">
                                                        <form class="form-horizontal" role="form"  action="<%=classpath%>/Refund/add" method="post" id="text-form-register">
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订单编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookIoId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">客户账号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">客户地址</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">教材单价</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订购数量</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">邮费</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订单总价</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="firstname" class="col-sm-2 control-label">订单日期</label>
                                                                <div class="col-sm-9">
                                                                    <input name="" type="text" class="form-control" id="firstname" placeholder="" value="" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <!-- <div class="form-group">
                                                                <label for="refun-booknum" class="col-sm-2 control-label">退书编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="refun-booknum" type="text" class="form-control" id="refundId" placeholder="" value="" required>
                                                                </div>
                                                            </div> -->
                                                            <div class="form-group">
                                                                <label for="rebook-money" class="col-sm-2 control-label">退书单价</label>
                                                                <div class="col-sm-9">
                                                                    <input name="refundPrice" type="text" class="form-control required number" id="rebook-money" placeholder="" value="" >
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="rebook-number" class="col-sm-2 control-label">退书数量</label>
                                                                <div class="col-sm-9">
                                                                    <input name="refundAmount" type="text" class="form-control required digits" id="rebook-number" placeholder="" value="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="rebook-reson" class="col-sm-2 control-label">退书理由</label>
                                                                <div class="col-sm-9">
                                                                    <input name="reason" type="text" class="form-control" id="rebook-reson" placeholder="" value="" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-sm-offset-2 col-sm-9">
                                                                    <button type="submit" class="btn btn-primary">提交</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- 教材预定出售 -->
                                                    <div class="manage-book-xiugai">
                                                        <form class="form-horizontal" role="form" action="<%=classpath%>/Textbookbill/add" method="post" id="text-form-managebook">
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
                                                                <label for="firstname" class="col-sm-2 control-label">所属课程</label>
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
                                                                    <input type="text" class="form-control" id="firstname" placeholder="" value="是否报废" readonly="readonly">
                                                                </div>
                                                            </div>
                                                            <!-- <div class="form-group">
                                                                <label for="textbook-num" class="col-sm-2 control-label">订单编号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookIoId" type="text" class="form-control" id="textbook-num" placeholder="请输入订单编号" value="" required>
                                                                </div>
                                                            </div> -->
                                                            <div class="form-group">
                                                                <label for="buyuer-num" class="col-sm-2 control-label">买家账号</label>
                                                                <div class="col-sm-9">
                                                                    <input name="email" type="text" class="form-control" id="buyuer-num" placeholder="请输入买家账号" value="" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="buy-price" class="col-sm-2 control-label">购买单价</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookPrice" type="text" class="form-control required number" id="buy-price" placeholder="请输入购买单价" value="" >
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="buy-number" class="col-sm-2 control-label">购买数量</label>
                                                                <div class="col-sm-9">
                                                                    <input name="textbookIocount" type="text" class="form-control required digits" id="buy-number" placeholder="请输入购买数量" value="" >
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="out-addr" class="col-sm-2 control-label">送货地址</label>
                                                                <div class="col-sm-9">
                                                                    <input name="address" type="text" class="form-control" id="out-addr" placeholder="请输入送货地址" value="" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="email-mon" class="col-sm-2 control-label">邮费</label>
                                                                <div class="col-sm-9">
                                                                    <input name="postPrice" type="text" class="form-control required number" id="email-mon" placeholder="请输入邮费" value="" >
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
    <script type="text/javascript">
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00025").addClass("open");
    $(".mid-left .nav .mid-left-li00025").children('ul').slideDown();
    //预定邮购及退书管理--start
    //导航栏
    $(".mail-return-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".mail-return-textbook .r-down-footing .search-order-mail").show().siblings('div').hide();
    $(".mail-return-textbook .r-down-middle .nav li a").click(function(event) {
            $(".mail-return-textbook .r-down-footing ." + event.target.className).show();
            $(".mail-return-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        })
        // 查询订单信息--修改跳转
    $(".search-order-mail .table td .search-order-xiugai").click(function(event) {
            $(".mail-return-textbook .r-down-footing .mail-xiugai").show().siblings('div').hide();
            $(".mail-xiugai ." + event.target.className).show().siblings().hide();
            // 点击链接，获取table的值
            var tdLength = $(this).parent('td').prevAll().size();
            // alert(tdLength)
            var tdValue = $(this).parent('td').siblings('td');
            var inputValue = $(".mail-xiugai .search-order-xiugai form .form-group");
            var tdText = 0;
            for (var i = 0; i < tdLength; i++) {
                tdText = tdValue.eq(i).text();
                inputValue.eq(i).find('input').val(tdText);
            }
        })
    //登记退书--跳转
     $(".register-book-mail .table ").on("click","td .register-book-xiugai",function(event) {
            $(".mail-return-textbook .r-down-footing .mail-xiugai").show().siblings('div').hide();
            $(".mail-xiugai ." + event.target.className).show().siblings().hide();
            // 点击链接，获取table的值
            var tdLength = $(this).parent('td').prevAll().size();
            // alert(tdLength)
            var tdValue = $(this).parent('td').siblings('td');
            var inputValue = $(".mail-xiugai .register-book-xiugai form .form-group");
            var tdText = 0;
            for (var i = 0; i < tdLength; i++) {
                tdText = tdValue.eq(i).text();
                inputValue.eq(i).find('input').val(tdText);
            }
        })
    // 教材管理--出售
     $(".manage-book-mail .table ").on("click","td .manage-book-xiugai",function(event) {
            $(".mail-return-textbook .r-down-footing .mail-xiugai").show().siblings('div').hide();
            $(".mail-xiugai ." + event.target.className).show().siblings().hide();
            // 点击链接，获取table的值
            var tdLength = $(this).parent('td').prevAll().size();
            // alert(tdLength)
            var tdValue = $(this).parent('td').siblings('td');
            var inputValue = $(".mail-xiugai .manage-book-xiugai form .form-group");
            var tdText = 0;
            for (var i = 0; i < tdLength; i++) {
                tdText = tdValue.eq(i).text();
                inputValue.eq(i).find('input').val(tdText);
            }
        })
    
    //教材预定ajax
    function searchTextbook () {
        var search=$(".manage-book-mail #search01").val();
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
                    var str = "<a class='manage-book-xiugai'>出售</a>"
                    $("<td></td>").html(str).appendTo(tr);
                    tbody.append(tr); 
                }                      
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        });
    };

    //登记退书ajax
    function searchTextbookbill () {
        var search=$(".register-book-mail #search02").val();
        var kind=$("#kind02").find("option:selected").val();
        var url01 = "<c:url value='/Textbookbill/query2' />";
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
                
                var tbody = $('#tbody002');
                tbody.empty();
                for (var i=0; i<data.textbook_billList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.textbook_billList[i].textbookIoId).appendTo(tr);
                    $("<td></td>").html(data.textbook_billList[i].textbookId).appendTo(tr);
                    $("<td></td>").html(data.textbook_billList[i].email).appendTo(tr);
                    $("<td></td>").html(data.textbook_billList[i].address).appendTo(tr);
                    $("<td></td>").html(data.textbook_billList[i].textbookPrice).appendTo(tr);
                    if(data.textbook_billList[i].textbookIocount == -111){
                        var textbookIocount = "已退订";
                        var pay = "已退订";
                    }else{
                        var textbookIocount = data.textbook_billList[i].textbookIocount;
                        var pay = data.textbook_billList[i].textbookPrice*data.textbook_billList[i].textbookIocount+data.textbook_billList[i].postPrice;
                    }
                    $("<td></td>").html(textbookIocount).appendTo(tr);
                    $("<td></td>").html(data.textbook_billList[i].postPrice).appendTo(tr);
                    var date = new Date(data.textbook_billList[i].textbookIotime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
                    $("<td></td>").html(pay).appendTo(tr);
                    var str = "<a class='register-book-xiugai'>退书</a>"                    
                    $("<td></td>").html(str).appendTo(tr);
                    tbody.append(tr); 
                }                      
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        });
    };

    function searchRefund () {
        var search=$(".search-book-mail #search03").val();
        var kind=$("#kind03").find("option:selected").val();
        var url01 = "<c:url value='/Refund/query' />";
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
                
                var tbody = $('#tbody003');
                tbody.empty();
                for (var i=0; i<data.refundList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.refundList[i].refundId).appendTo(tr);
                    $("<td></td>").html(data.refundList[i].textbookId).appendTo(tr);
                    $("<td></td>").html(data.refundList[i].textbookIoId).appendTo(tr);
                    $("<td></td>").html(data.refundList[i].refundPrice).appendTo(tr);
                    $("<td></td>").html(data.refundList[i].refundAmount).appendTo(tr);
                    $("<td></td>").html(data.refundList[i].reason).appendTo(tr);
                    var date = new Date(data.refundList[i].refundTime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
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
