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
                            <!-- 样卷管理 -->

                            <c:if  test = "${borrowQuestionBank2 == 'borrowSuccess2'}">
                                <script type="text/javascript">
                                    alert("借用试卷成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${borrowQuestionBank2 == 'borrowError2'}">
                                <script type="text/javascript">
                                    alert("借用试卷失败！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${borrowQuestionBank2 == 'returnSuccess2'}">
                                <script type="text/javascript">
                                    alert("归还试卷成功！！！");
                                </script>
                            </c:if>
                            <c:if  test = "${borrowQuestionBank2 == 'returnError2'}">
                                <script type="text/javascript">
                                    alert("归还试卷失败！！！");
                                </script>
                            </c:if>

                            <div class="test-sample">
                                <div class="row-fluid r-down-head">
                                    <h3>样卷管理</h3>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12  r-down-middle">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a class="search-noreturn-test" href="javascript:void(0)">查看未归还样卷</a></li>
                                            <li><a class="search-return-test" href="javascript:void(0)">查看可借样卷</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="row-fluid">
                                    <div class="col-md-12 r-down-footing">
                                        <!-- 查询未归还样卷 -->
                                        <div class="search-noreturn-test">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/queryBeBorrow" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-8">
                                                        <input name="search" type="text" class="form-control" id="firstname" placeholder="试卷id相关" value='${search}'>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <button type="submit" class="btn btn-primary" style="padding:6px 33px;">查询未归还样卷</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>查询未归还样卷</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>借阅编号</th>
                                                            <th>试卷ID</th>
                                                            <th>借阅人</th>
                                                            <th>经手人</th>
                                                            <th>借出时间</th>
                                                            <th>预计归还时间</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${questionoutList}" var="questionoutofstorages">
                                                        <tr>
                                                            <td>${questionoutofstorages.borrowRecordId}</td>
                                                            <td>${questionoutofstorages.questionbankId}</td>
                                                            <td>${questionoutofstorages.email}</td>
                                                            <td>${questionoutofstorages.outUserEmail}</td>
                                                            <td><fmt:formatDate value="${questionoutofstorages.borrowTime}" pattern="yyyy-MM-dd"/></td>
                                                            <td><fmt:formatDate value="${questionoutofstorages.preReturntime}" pattern="yyyy-MM-dd"/></td>
                                                            <td>
                                                                <a class="noreturn-in-test" href="javascript:void(0)">
                                                            入库
                                                            </a>
                                                            </td>
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
                                                                    <a href="<%=classpath%>/QuestionBank/queryBeBorrow?pageNum=${p}&search=${search}">${p}</a>
                                                                </li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                 <li>
                                                                    <a href="<%=classpath%>/QuestionBank/queryBeBorrow?pageNum=${p}&search=${search}">${p}</a>
                                                                 </li>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- 查询可借样卷 -->
                                        <div class="search-return-test">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/queryCanBorrow" method="post">
                                                <div class="form-group">
                                                    <div class="col-sm-8">
                                                        <input name="search" type="text" class="form-control" id="search1" placeholder="试卷名称相关">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <button type="button" onclick="queryCanBorrow()" class="btn btn-primary" style="padding:6px 33px;">查询可借样卷</button>
                                                    </div>
                                                </div>
                                            </form>
                                            <div class="table-responsive">
                                                <table class="table table-striped table-bordered table-hover table-condensed">
                                                    <caption class="text-center">
                                                        <strong>可借样卷</strong>
                                                    </caption>
                                                    <thead>
                                                        <tr>
                                                            <th>试卷ID</th>
                                                            <th>试卷名称</th>
                                                            <th>所用教材ID</th>
                                                            <th>出题人</th>
                                                            <th>录入时间</th>
                                                            <th>操作</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tbody001">
                                                        <!-- <c:forEach items="${questionbankList}" var="questionbank">
                                                        <tr>
                                                            <td>${questionbank.getQuestionbankId()}</td>
                                                            <td>${questionbank.getPaperType()}</td>
                                                            <td>${questionbank.getTestbookId()}</td>
                                                            <td>${questionbank.getWriter()}</td>
                                                            <td>${questionbank.getInTime()}</td>
                                                            <td>
                                                                <a class='return-out-test'>出库</a>
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
                                <div class="row-fluid r-down-footer">
                                    <div class="col-md-12 r-down-footering">
                                        <!-- 样卷入库 -->
                                        <div class="noreturn-in-test">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/borrowOrReturn?type=Return" method="post">
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">借阅编号</label>
                                                    <div class="col-sm-10">
                                                        <input name="borrowRecordId" type="text" class="form-control" id="firstname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">试卷ID</label>
                                                    <div class="col-sm-10">
                                                        <input name="questionbankId" type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">借阅人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">经手人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">借出时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入入库时间" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">预计归还时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="请输入入库时间" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button type="submit" class="btn btn-primary">提交</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- 样卷出库 -->
                                        <div class="return-out-test">
                                            <form class="form-horizontal" role="form" action="<%=classpath%>/QuestionBank/borrowOrReturn?type=Borrow" method="post">
                                                <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">样卷编号：</label>
                                                    <div class="col-sm-10">
                                                        <input name="questionbankId" type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">样卷名称：</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">样卷所用教材：</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">出题人</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">录入时间</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="lastname" placeholder="" readonly="readonly">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastname" class="col-sm-2 control-label">借用人工号</label>
                                                    <div class="col-sm-10">
                                                        <input name="email" type="text" class="form-control" id="lastname" placeholder="请输入借用人工号" required>
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
    <!-- <script type="text/javascript" src="js/topic-testsample.js"></script> -->
    <script type="text/javascript">

    $(function(){
    //左边导航栏打开状态设置
    $(".mid-left .nav .mid-left-li00021").addClass("open");
    $(".mid-left .nav .mid-left-li00021").children('ul').slideDown();

    //样卷管理模块
    //右边导航栏
    $(".test-sample .r-down-middle .nav li").click(function(event) {
        $(this).addClass("active");
        $(this).siblings().removeClass('active');
        $(".test-sample .r-down-footer .noreturn-in-test").hide().siblings('div').hide();
    });

    $(".test-sample .r-down-footing .search-noreturn-test").show().siblings('div').hide();
    $(".test-sample .r-down-middle .nav li a").click(function(event) {
        /* Act on the event */
        $(".test-sample .r-down-footing ." + event.target.className).show();
        $(".test-sample .r-down-footing ." + event.target.className).siblings('div').hide();
    });
    
    // 样卷点击出库入库跳出对应页面
    $(".test-sample .r-down-footer .noreturn-in-test").hide().siblings('div').hide();
    $(".test-sample .r-down-footing .table ").on("click","a",function(event) {
        // alert("dsf")
        $(".test-sample .r-down-footer ." + event.target.className).show();
        $(".test-sample .r-down-footer ." + event.target.className).siblings('div').hide();
    });
    // 样卷出库
    $(document).on("click","#tbody001>tr>td>a.return-out-test",function(e){
        e.preventDefault();
        var tdLength=$(this).parent('td').siblings('td').size();
        for(var i=0;i<tdLength;i++){
            var tdText=$(this).parent('td').siblings('td').eq(i).text();
            // console.log(tdText);
            var inputValue=$(".return-out-test .form-group").eq(i);
            inputValue.find('input').val(tdText);
        }
    });
     // $(".search-return-test .table tbody td ").on("click","a",function(event){
     //    alert("dfsa");
     //    var tdLength=$(this).parent('td').siblings('td').size();
     //    for(var i=0;i<tdLength;i++){
     //        var tdText=$(this).parent('td').siblings('td').eq(i).text();
     //        // console.log(tdText);
     //        var inputValue=$(".return-out-test .form-group").eq(i);
     //        inputValue.find('input').val(tdText);
     //    }
     // });
    // 样卷入库列表
    $(".search-noreturn-test .table tbody td ").on("click","a",function(event){
        // alert($(this).parent('td').siblings('td').eq(1).text())
        // alert('fg');
        var tdLength=$(this).parent('td').siblings('td').size();
        for(var i=0;i<tdLength;i++){
            var tdText=$(this).parent('td').siblings('td').eq(i).text();
            var inputValue=$(".noreturn-in-test .form-group").eq(i);
            inputValue.find('input').val(tdText);
        }
    });
});
    //查看可借样卷
    function queryCanBorrow (pagenum) {
           var search=$(".search-return-test #search1").val();
           var url01 = "<c:url value='/QuestionBank/queryCanBorrow' />";
           // var pageNum = "1";
           var pageNum=pagenum;
           //alert(search);

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
                    $("<td></td>").html(data.questionbankList[i].testbookId).appendTo(tr);
                    $("<td></td>").html(data.questionbankList[i].writer).appendTo(tr);
                    var date = new Date(data.questionbankList[i].inTime);
                    var setDate = date.getFullYear()+"-"+date.getMonth()+"-"+date.getDay();
                    $("<td></td>").html(setDate).appendTo(tr);
                    $("<td></td>").html("<a class='return-out-test' href='javascript:void(0)'>出库</a>").appendTo(tr);
                    tbody.append(tr); 
                }  
                // fen分页
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
                    // var astr="<a href='<%=classpath%>/QuestionBank/queryCanBorrow?pageNum="+i+"&search="+data.search+"'>"+i+"</a>";
                    // $("<li></li>").html(astr).appendTo(ul001);
                }
            },   
            error :function(){   
                alert("网络连接出错！");   
            }   
        }); 
    };
    $(".search-return-test .page-btn #ul001").on("click",'li a',function(event){
        var pagenum=$(this).text();
        //alert(pagenum);
        queryCanBorrow (pagenum);
    });
    </script>
</body>

</html>
