<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%
    String path = request.getContextPath();
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>专业管理</title>
    <link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.min.css">
    <!-- 加载bootstrap层叠样式表 -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/exam-home.css">
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
                    <h2><i class="fa fa-desktop color"></i> 专业管理 <small>自考管理系统</small></h2>
                </div>
                <div class="row-fluid mid-right-down">
                    <div class="col-md-12 mid-r-down">
                        <div class="exampoint-manage">
                            <div class="row-fluid r-down-head">
                                <h3>专业管理</h3>
                            </div>
                            <div class="row-fluid r-down-mid">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a class="start-exampoint" href="javascript:void;">查看管理专业</a></li>
                                    <li><a class="add-exampoint" href="javascript:void;">添加专业</a></li>
                                </ul>
                                <hr>
                            </div>
                            <div class="row-fluid r-down-footing" style="max-height:1200px;">
                                <div class="col-md-12">
                                    <div class="add-exampoint">
                                        <form class="form-horizontal" role="form" action="<%=path%>/major/addMajor" method="post" id="majorManage-add">
                                            <div class="form-group">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover table-condensed">
                                                        <thead>
                                                            <tr>
                                                                <th>专业名称</th>
                                                                <th>主考学校</th>
                                                                <th>最低学分要求</th>
                                                                <th>专业类型</th>
                                                                <th>专业层次</th>
                                                                <th>专业性质</th>
                                                                <th>是否统考</th>
                                                                <th>是否需要毕业答辩</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" name="majorName" style="width: 80px" id="majorManage1" required>
                                                                </td>
                                                                <td>
                                                                    <select name="schoolId">
                                                                        <c:forEach items="${schoolList }" var="school">
                                                                            <option value="${school.schoolId }">${school.schoolName }</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="majorCredit" style="width: 80px" id="majorManage2" required>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="majorType" style="width: 80px" id="majorManage3" required>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="majorLayer" style="width: 80px" id="majorManage4" required>
                                                                </td>
                                                                <td>
                                                                    <input type="text" name="majorPro" style="width: 80px" id="majorManage5" required>
                                                                </td>
                                                                <td>
                                                                    <select name="isExamTogether">
                                                                        <option value="1">是</option>
                                                                        <option value="2">否</option>
                                                                    </select>
                                                                </td>
                                                                <td>
                                                                    <select name="majorReply">
                                                                        <option value="1">是</option>
                                                                        <option value="2">否</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-primary pull-right">保存添加</button>
                                            <!-- <input type="submit" name="" value="保存添加" style="float: right"> -->
                                        </form>
                                    </div>
                                    <div class="start-exampoint">
                                        <form class="form-horizontal" role="form" action="<%=path %>/major/searchMajor" method="post">
                                            <div class="form-group">
                                                <div class="col-sm-8">
                                                    <input type="text" name="key" class="form-control" id="inputvalue" placeholder="输入专业ID、专业名称、学校等多种查询条件" value="${key }">
                                                </div>
                                                <div class="col-sm-4">
                                                    <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询</button>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover table-condensed">
                                                        <caption class="text-center">考点信息</caption>
                                                        <thead>
                                                            <tr>
                                                                <th>专业ID</th>
                                                                <th>专业名称</th>
                                                                <th>主考学校</th>
                                                                <th>最低学分</th>
                                                                <th>专业类型</th>
                                                                <th>专业层次</th>
                                                                <th>专业性质</th>
                                                                <th>是否统考</th>
                                                                <th>是否毕业答辩</th>
                                                                <th>修改</th>
                                                                <th>删除</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${page.list }" var="list">
	                                                             <tr>
	                                                                    <td>${list.majorId }</td>
	                                                                    <td>${list.majorName }</td>
	                                                                    <td>${list.schoolName }</td>
	                                                                    <td>${list.majorCredit }</td>
	                                                                    <td>${list.majorType }</td>
	                                                                    <td>${list.majorLayer }</td>
	                                                                    <td>${list.majorPro }</td>
	                                                                    <c:if test = "${list.isExamTogether == 1 }">
	                                                                    	<td>是</td>
	                                                                    </c:if>
	                                                                    <c:if test = "${list.isExamTogether != 1 }">
	                                                                    	<td>否</td>
	                                                                    </c:if>
	                                                                    <c:if test = "${list.majorReply == 1 }">
	                                                                    	<td>是</td>
	                                                                    </c:if>
	                                                                    <c:if test = "${list.majorReply != 1 }">
	                                                                    	<td>否</td>
	                                                                    </c:if>
	                                                                    <td>
	                                                                        <a role="button" href="<%=path %>/major/turnToUpdateMajor?majorId=${list.majorId }" class="btn btn-primary" class="btn btn-primary" style="padding:0px 25px;">修改</a>
	                                                                    </td>
	                                                                    <td>
	                                                                        <a role="button" href="<%=path %>/major/deleteMajor?majorId=${list.majorId }" class="btn btn-primary" class="btn btn-primary" style="padding:0px 25px;">删除</a>
	                                                                    </td>
	                                                                </tr>
	                                                                
	                                                                
                                                             </c:forEach>
                                                        </tbody>
                                                        
                                                    </table>
                                                    
                                                </div>
       											<div class="page-btn text-center">
<%--                                                     <c:if test="${pageNum == null }">
	                                                   	<%
	                                                   		int temp = 1;
	                                                   		request.setAttribute("pageNum", "1");
	                                                   	%>
                                                    </c:if> --%>
                                                    <ul class="pagination"> 
                                                        <c:forEach begin="1" end="${page.total }" var="p">
                                                        	<c:if test="${pageNum == p }">
                                                        		<li class="active">
                                                        			<a href="<%=path%>/major/searchMajor?pageNum=${p}&key=${key}">${p }</a>
                                                        		</li>
                                                        	</c:if>
                                                            <c:if test="${pageNum != p }">
                                                        		<li>
                                                        			<a href="<%=path%>/major/searchMajor?pageNum=${p}&key=${key}">${p }</a>
                                                        		</li>
                                                        	</c:if>
                                                        </c:forEach>
                                                    </ul>
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
    <script type="text/javascript" src="<%=path %>/js/usermanage.js"></script>
    <script type="text/javascript" src="<%=path %>/js/major-manage.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/messages_zh.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/myValidate.js"></script>
    <script type="text/javascript">
    // 查询
    var tbodyTr = $(".r-down-footer .btn-search .table tbody");
    var tdLength = $(".r-down-footer .btn-search .table thead th").size() - 1;
    var trVal = $(".r-down-footing .start-exampoint .table tbody tr");
    var trLength = trVal.size();
    console.log("trLength:" + trLength);
    var searchTrLength = 0;
    // 用于判断页面刷新
    var refresh = 0;
    // 查询table隐藏
    $(".r-down-footer .btn-search").hide();
    // 点击查询
    $(".r-down-footing .start-exampoint form .form-group .btn-search").click(function(event) {
        // 刷新
        // alert(tdLength);
        refresh++;
        if (refresh == 1) {
            tbodyTr.empty();
            // alert(refresh);
            refresh--;
        }
        $(".r-down-footer .btn-search").show();
        // 获取搜索框的值
        var inputValue = $(".r-down-footing .start-exampoint form .form-group #inputvalue").val();
        console.log("输入的值：" + inputValue);
        // 点击查询后，重置搜索框的值
        $(".r-down-footing .start-exampoint form .form-group #inputvalue").prop('value', '');
        // var tdVal = 0;
        var treq = 0;
        // 判断搜索是否在同一行
        var panduan = 0;
        var flag = 0;
        searchTrLength = tbodyTr.children('tr').size();
        // alert(trLength);
        if ($.trim(inputValue) != "") {
            for (var i = 0; i < trLength; i++) {
                panduan = 0;
                for (var j = 0; j < tdLength; j++) {
                    treq = trVal.eq(i).children('td').eq(j).filter(":contains('" + inputValue + "')");
                    if (treq.text()) {
                        flag = 1;
                        panduan++;
                        if (panduan == 1) {
                            addTable(searchTrLength, i);
                        }
                    }
                }
            }
            if (flag == 0) {
                alert("无匹配");
            } else {
                flag = 0;
            }
        } else {
            alert('无输入');
        }
    });

    function addTable(searchTrLength, i) {
        var tdVal = 0;
        if (searchTrLength == 0) {
            var tra = $("<tr></tr>");
            // alert("dsa")
            for (var t = 0; t < tdLength; t++) {
                tdVal = trVal.eq(i).children('td').eq(t).text();
                $("<td></td>").appendTo(tra).text(tdVal);
            }
            var tdaa = trVal.eq(i).children('td').eq(tdLength).find('a');
            var tda = $("<a></a>").text("修改").attr({
                role: 'button',
                class: 'btn btn-primary',
                href: tdaa.attr("href"),
                style: 'padding:0px 33px;',
            });
            var tdd = $("<td></td>")
            tda.appendTo(tdd)
            tdd.appendTo(tra);
            tra.appendTo(tbodyTr);
        } else {
            // alert(searchTrLength+"i:"+i);
            console.log("else" + inputValue);
            var tra = $("<tr></tr>");
            // alert("dsa")
            for (var t = 0; t < tdLength; t++) {
                tdVal = trVal.eq(i).children('td').eq(t).text();
                $("<td></td>").appendTo(tra).text(tdVal);
            }
            var tdaa = trVal.eq(i).children('td').eq(tdLength).find('a');
            var tda = $("<a></a>").text("修改").attr({
                role: 'button',
                class: 'btn btn-primary',
                href: tdaa.attr("href"),
                style: 'padding:0px 33px;',
            });
            var tdd = $("<td></td>")
            tda.appendTo(tdd)
            tdd.appendTo(tra);
            tbodyTr.children('tr').eq(searchTrLength - 1).after(tra);
        }
    };
    </script>
</body>

</html>
