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
                            <!-- 库存管理 -->
                            


                            <div class="stock-textbook">
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-head">
                                        <h3>库存管理</h3>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-middle">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a class="search-stock" href="javascript:void;">库存查询</a></li>
                                            <li><a class="sale-detail-stock" href="javascript:void;">采购记录查询</a></li>
                                            <li><a class="buy-record-stock" href="javascript:void;">销售记录查询</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-footing">
                                        <!-- 库存查询 -->
                                        <div class="search-stock">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbook/query2" method="post">
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
                                                        <strong>库存查询结果列表</strong>
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
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${textbookList}" var="textbook">
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
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 进销明细查询 -->
                                        <div class="sale-detail-stock">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Reserve/query2" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind01" class="form-control">
                                                            <option value="111">订单编号</option>
                                                            <option value="222">教材编号</option>
                                                            <option value="333">经销商编号</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="search01" placeholder="请选择条件">
                                                    </div>
                                                    <div class="col-sm-2">
                                                        <button type="button" onclick="searchReserve()" class="btn btn-primary" style="padding:6px 33px;">查询</button>
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
                                                        <strong>进销明细列表</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>订单编号</th>
                                                            <th>教材名称</th>
                                                            <th>经销商</th>
                                                            <th>购入单价(元)</th>
                                                            <th>购入数量</th>
                                                            <th>购入时间</th>
                                                            <th>总金额(元)</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001">
                                                        <!-- <c:forEach items="${reserveList}" var="reserve">
                                                        <tr>
                                                            <td>${reserve.getReserveId()}</td>
                                                            <td>${reserve.getTextbookId()}</td>
                                                            <td>${reserve.getDealerId()}</td>
                                                            <td>${reserve.getPrice()}</td>
                                                            <td>${reserve.getReserveTime()}</td>
                                                            <td>${reserve.getNum()}</td>
                                                            <td>${reserve.getNum()*reserve.getPrice()}</td>
                                                        </tr>
                                                        </c:forEach> -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- 销售记录查询 -->
                                        <div class="buy-record-stock">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/Textbookbill/query3" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-2">
                                                        <select name="kind" id="kind02" class="form-control">
                                                            <option value="111">教材编码</option>
                                                            <option value="222">买家账号</option>
                                                            <option value="333">订单编号</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input name="search" type="text" class="form-control" id="search02" placeholder="${Textbookbill}">
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
                                                        <strong>销售订单列表</strong>
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
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody002">
                                                        <!-- <c:forEach items="${textbook_billList3}" var="textbook_bill">
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
                                                        </tr>
                                                        </c:forEach> -->
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
    //库存管理--start
    $(".stock-textbook .nav li").click(function(event) {
        $(this).addClass('active').siblings('li').removeClass('active');
    })
    $(".stock-textbook .r-down-footing .search-stock").show().siblings('div').hide();
    $(".stock-textbook .r-down-middle .nav li a").click(function(event) {
            $(".stock-textbook .r-down-footing ." + event.target.className).show();
            $(".stock-textbook .r-down-footing ." + event.target.className).siblings('div').hide();
        });
    
    //进销明细查询ajax
    function searchReserve(){
        var search=$(".sale-detail-stock #search01").val();
        var kind=$("#kind01").find("option:selected").val();
        var url01 = "<c:url value='/Reserve/query' />";
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
                for (var i=0; i<data.reserveList.length; i++)
                {
                    var tr = $("<tr></tr>");
                    $("<td></td>").html(data.reserveList[i].reserveId).appendTo(tr);
                    $("<td></td>").html(data.reserveList[i].textbookName).appendTo(tr);
                    $("<td></td>").html(data.reserveList[i].dealerName).appendTo(tr);
                    $("<td></td>").html(data.reserveList[i].price).appendTo(tr);
                    $("<td></td>").html(data.reserveList[i].num).appendTo(tr);
                    $("<td></td>").html(new Date(data.reserveList[i].reserveTime)).appendTo(tr);
                    var pay = data.reserveList[i].price*data.reserveList[i].num
                    $("<td></td>").html(pay).appendTo(tr);
                    tbody.append(tr); 
                }                      
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        });
    };

    //销售记录查询ajax
    function searchTextbookbill () {
        var search=$(".buy-record-stock #search02").val();
        var kind=$("#kind02").find("option:selected").val();
        var url01 = "<c:url value='/Textbookbill/query3' />";
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
                    $("<td></td>").html(new Date(data.textbook_billList[i].textbookIotime)).appendTo(tr);
                    $("<td></td>").html(pay).appendTo(tr);
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
