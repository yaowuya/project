<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String classpath = request.getContextPath();
%>
<%
    String filepath = request.getContextPath() + "/test";
%>
<%
    String path = request.getContextPath();
%>

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
<link rel="stylesheet" type="text/css"
	href="<%=filepath%>/font-awesome-4.3.0/css/font-awesome.min.css">
<!-- 加载bootstrap层叠样式表 -->
<link href="<%=filepath%>/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=filepath%>/css/index.css">
<link rel="stylesheet" type="text/css"
	href="<%=filepath%>/css/text-book.css">
<link rel="stylesheet" type="text/css"
	href="<%=filepath%>/css/validate.css">
<link rel="stylesheet" type="text/css"
	href="<%=filepath%>/css/pagination.css">
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
								<li class="dropdown"><a href="center.html" target=""
									class="dropdown-toggle color-green dropdown-a"
									data-toggle="dropdown"> <i class="fa fa-user"></i> <span>${ user.userName}</span>
										您好！

								</a></li>
								<li class="dropdown"><a class="dropdown-a"
									href="<%=path%>/user/logout">退出</a></li>
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
							<a class="navbar-brand" href="<%=path%>/index.jsp"
								style="width: 100%;"> <i class="fa fa-home"></i>首页
							</a>
						</div>
						<div>
							<ul class="nav navbar-nav">
								<c:forEach items="${fatherList }" var="father">
									<li class="mid-left-li mid-left-li${father.menuId }"><a
										href="#"> <i class="fa fa-star"></i> ${father.fatherName }
											<b class="caret"></b>
									</a>
										<ul>
											<c:forEach items="${menuList }" var="menu">
												<c:if test="${menu.fatherName == father.fatherName }">
													<li><a href="<%=path %>${menu.url }">${menu.menuName }</a>
													</li>
												</c:if>
											</c:forEach>
										</ul></li>
								</c:forEach>

							</ul>
						</div>
					</nav>
				</div>
				<div class="col-md-8 mid-right">
					<div class="row-fluid mid-right-up">
						<h2>
							<i class="fa fa-desktop color"></i>教材管理 <small>自考管理系统</small>
						</h2>
					</div>
					<div class="row-fluid mid-right-down">
						<div class="col-md-12 mid-r-down">
							<!-- 教材采购 -->

							<c:if test="${TextbookBuy == 'addDealerSuccess'}">
								<script type="text/javascript">
									alert("经销商录入成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'addDealerError'}">
								<script type="text/javascript">
									alert("经销商录入失败！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateDealerSuccess'}">
								<script type="text/javascript">
									alert("经销商修改成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateDealerError'}">
								<script type="text/javascript">
									alert("经销商修改失败！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'addTextbookSuccess'}">
								<script type="text/javascript">
									alert("教材录入成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'addTextbookError'}">
								<script type="text/javascript">
									alert("教材录入失败！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'addReserveSuccess'}">
								<script type="text/javascript">
									alert("订单录入成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'addReserveError'}">
								<script type="text/javascript">
									alert("订单录入失败！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateTextbookSuccess'}">
								<script type="text/javascript">
									alert("教材修改成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateTextbookError'}">
								<script type="text/javascript">
									alert("教材修改失败！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateReserveSuccess'}">
								<script type="text/javascript">
									alert("订单修改成功！！！");
								</script>
							</c:if>
							<c:if test="${TextbookBuy == 'updateReserveError'}">
								<script type="text/javascript">
									alert("订单修改失败！！！");
								</script>
							</c:if>

							<div class="buy-textbook">
								<div class="row-fluid">
									<div class="col-md-12 r-down-head">
										<h3>教材采购</h3>
									</div>
								</div>
								<div class="row-fluid">
									<div class="col-md-12 r-down-middle">
										<ul class="nav nav-tabs">
											<li class="active"><a class="dealer-buy-textbook"
												href="javascript:void;">经销商管理</a></li>
											<li><a class="adddealer-buy-textbook"
												href="javascript:void;">经销商录入</a></li>
											<li><a class="note-buy-textbook" href="javascript:void;">登记教材订购</a></li>
											<li><a class="note-order-textbook"
												href="javascript:void;">教材订购单</a></li>
											<li><a class="infomation-buy-textbook"
												href="javascript:void;">教材管理</a></li>
											<li><a class="add-info-textbook" href="javascript:void;">录入教材信息</a></li>
										</ul>
									</div>
								</div>
								<div class="row-fluid">
									<div class="col-md-12 r-down-footing">
										<!-- 经销商管理 -->
										<div class="dealer-buy-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Dealer/query" method="post">
												<div class="form-group">
													<div class="col-sm-2">
														<select name="kind" class="form-control">
															<option value="111">公司名字</option>
															<option value="222">公司编号</option>
															<option value="333">联系人</option>
														</select>
													</div>
													<div class="col-sm-4">
														<input name="search" type="text" class="form-control"
															id="firstname" placeholder="${TextbookBuy}">
													</div>
													<div class="col-sm-2">
														<button type="submit" class="btn btn-primary"
															style="padding: 6px 33px;">查询</button>
													</div>
													<div class="col-sm-3">
														<p></p>
														<p class="text-danger"></p>
													</div>
												</div>
											</form>
											<div class="table-responsive" style="margin-top: 30px;">
												<table
													class="table table-striped table-bordered table-hover table-condensed">
													<caption class="text-center">
														<strong>经销商列表</strong>
													</caption>
													<thead>
														<tr>
															<th>经销商编号</th>
															<th>经销商名字</th>
															<th>公司地址</th>
															<th>联系人</th>
															<th>联系电话</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody id="Searchresult">
													</tbody>
													<tbody id="hiddenresult" style="display: none;">
														<c:forEach items="${dealerList}" var="dealer">
															<tr>
																<td>${dealer.getDealerId()}</td>
																<td>${dealer.getDealerName()}</td>
																<td>${dealer.getDealerAddress()}</td>
																<td>${dealer.getDealerContacts()}</td>
																<td>${dealer.getDealerPhone()}</td>
																<td><a class="dealer-buy-xiugai"
																	href="javascript:void;" title="">修改</a></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
											<div id="Pagination" class="pagination">
												<!-- 这里显示分页 -->
											</div>
										</div>
										<!-- 经销商录入 -->
										<div class="adddealer-buy-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Dealer/add" method="post"
												id="text-form-adddealer">
												<!-- <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">经销商编号</label>
                                                    <div class="col-sm-9">
                                                        <input name="dealerId" type="text" class="form-control" id="firstname" placeholder="经销商编号" value="" required>
                                                    </div>
                                                </div> -->
												<div class="form-group">
													<label for="dealerName" class="col-sm-2 control-label">经销商名字</label>
													<div class="col-sm-9">
														<input name="dealerName" type="text" class="form-control"
															id="dealerName" placeholder="经销商名字" value="">
													</div>
												</div>
												<div class="form-group">
													<label for="companyAdrr" class="col-sm-2 control-label">公司地址</label>
													<div class="col-sm-9">
														<input name="dealerAddress" type="text"
															class="form-control" id="companyAdrr" placeholder="公司地址"
															value="">
													</div>
												</div>
												<div class="form-group">
													<label for="connectPerson" class="col-sm-2 control-label">联系人</label>
													<div class="col-sm-9">
														<input name="dealerContacts" type="text"
															class="form-control" id="connectPerson" placeholder="联系人"
															value="">
													</div>
												</div>
												<div class="form-group">
													<label for="connectPhone" class="col-sm-2 control-label">联系电话</label>
													<div class="col-sm-9">
														<input name="dealerPhone" type="text" class="form-control"
															id="connectPhone" placeholder="联系电话" value="">
													</div>
												</div>
												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-9">
														<button type="submit" class="btn btn-primary">提交</button>
													</div>
												</div>
											</form>
										</div>
										<!-- 登记教材订购 -->
										<div class="note-buy-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Reserve/add" method="post"
												id="text-form-note">
												<!-- <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">订单编号</label>
                                                    <div class="col-sm-9">
                                                        <input name="reserveId" type="text" class="form-control" id="firstname" placeholder="订单编号" value="" required>
                                                    </div>
                                                </div> -->
												<div class="form-group">
													<label for="firstname" class="col-sm-2 control-label">教材编号</label>
													<div class="col-sm-9">
														<select name="textbookId" class="form-control">
															<c:forEach items="${textbookList001}" var="textbook">
																<option value="${textbook.getTextbookId()}">${textbook.getBookname()}</option>
															</c:forEach>
														</select>
														<!-- <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="教材编号" value=""> -->
													</div>
												</div>
												<div class="form-group">
													<label for="firstname" class="col-sm-2 control-label">经销商编号</label>
													<div class="col-sm-9">
														<select name="dealerId" class="form-control">
															<c:forEach items="${dealerList001}" var="dealer">
																<option value="${dealer.getDealerId()}">${dealer.getDealerName()}</option>
															</c:forEach>
														</select>
														<!-- <input name="dealerId" type="text" class="form-control" id="firstname" placeholder="经销商编号" value=""> -->
													</div>
												</div>
												<div class="form-group">
													<label for="buy-price" class="col-sm-2 control-label">购入单价</label>
													<div class="col-sm-9">
														<input name="price" type="text" class="form-control"
															id="buy-price" placeholder="购入单价" value="">
													</div>
												</div>
												<div class="form-group">
													<label for="buy-num" class="col-sm-2 control-label">购入数量</label>
													<div class="col-sm-9">
														<input name="num" type="text" class="form-control"
															id="buy-num" placeholder="购入数量" value="">
													</div>
												</div>
												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-9">
														<button type="submit" class="btn btn-primary">提交</button>
													</div>
												</div>
											</form>
										</div>
										<!-- 教材订购单 -->
										<div class="note-order-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Reserve/query" method="post">
												<div class="form-group">
													<div class="col-sm-2">
														<select name="kind" id="kind01" class="form-control">
															<option value="111">订单编号</option>
															<option value="222">教材编号</option>
															<option value="333">经销商编号</option>
														</select>
													</div>
													<div class="col-sm-4">
														<input name="search" type="text" class="form-control"
															id="search01" placeholder="请选择条件">
													</div>
													<div class="col-sm-2">
														<button type="button" onclick="searchReserve()"
															class="btn btn-primary" style="padding: 6px 33px;">查询</button>
													</div>
													<div class="col-sm-3">
														<p></p>
														<p class="text-danger"></p>
													</div>
												</div>
											</form>
											<div class="table-responsive" style="margin-top: 30px;">
												<table
													class="table table-striped table-bordered table-hover table-condensed">
													<caption class="text-center">
														<strong>订购单信息列表</strong>
													</caption>
													<thead>
														<tr>
															<th>订单编号</th>
															<th>教材编号</th>
															<th>教材名称</th>
															<th>经销商编号</th>
															<th>经销商名称</th>
															<th>购入单价(元)</th>
															<th>购入数量</th>
															<th>购入时间</th>
															<th>总金额(元)</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody id="Searchtbody001">

													</tbody>

													<tbody id="tbody001" style="display: none;">

														<!-- <c:forEach items="${reserveList}" var="reserve">
                                                        <tr>
                                                            <td>${reserve.getReserveId()}</td>
                                                            <td>${reserve.getTextbookId()}</td>
                                                            <td>${reserve.getDealerId()}</td>
                                                            <td>${reserve.getPrice()}</td>
                                                            <td>${reserve.getReserveTime()}</td>
                                                            <td>${reserve.getNum()}</td>
                                                            <td>${reserve.getNum()*reserve.getPrice()}</td>
                                                            <td>
                                                                <a class="note-order-xiugai" href="javascript:void;" title="">修改</a>
                                                            </td> 
                                                        </tr>
                                                        </c:forEach> -->
													</tbody>
												</table>
											</div>
											<div id="Pagination-tbody001" class="pagination">
												<!-- 这里显示分页 -->
											</div>
										</div>
										<!-- 教材管理 -->
										<div class="infomation-buy-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Textbook/query" method="post">
												<div class="form-group">
													<div class="col-sm-2">
														<select name="kind02" id="kind02" class="form-control">
															<option value="111">所属课程</option>
															<option value="222">教材名字</option>
															<option value="333">教材编号</option>
														</select>
													</div>
													<div class="col-sm-4">
														<input name="search02" type="text" class="form-control"
															id="search02" placeholder="请输入关键词">
													</div>
													<div class="col-sm-2">
														<button type="button" onclick="searchTextbook()"
															class="btn btn-primary" style="padding: 6px 33px;">查询</button>
													</div>
													<div class="col-sm-3">
														<p></p>
														<p class="text-danger"></p>
													</div>
												</div>
											</form>
											<div class="table-responsive" style="margin-top: 30px;">
												<table
													class="table table-striped table-bordered table-hover table-condensed">
													<caption class="text-center">
														<strong>教材信息列表</strong>
													</caption>
													<thead>
														<tr>
															<th>教材编号</th>
															<th>教材名字</th>
															<th>课程编号</th>
															<th>所属课程</th>
															<th>教材类型</th>
															<th>教材储量</th>
															<th>是否报废</th>
															<th>操作</th>
														</tr>
													</thead>
                                                    <tbody id="Search-tbody002">
                                                        
                                                    </tbody>
													<tbody id="tbody002" style="display:none;">
														<!-- <c:forEach items="${textbookList}" var="textbook">
                                                        <tr>
                                                            <td>${textbook.getTextbookId()}</td>
                                                            <td>${textbook.getBookname()}</td>
                                                            <td>${textbook.getCourseId()}</td>
                                                            <td>${textbook.getBooktype()}</td>
                                                            <td>${textbook.getBookStorage()}</td>
                                                            <td>${textbook.getIsOverdue()}</td>
                                                            <td>
                                                            <a class="infomation-buy-xiugai" href="javascript:void;" title="">修改</a>
                                                            </td>
                                                        </tr>
                                                        </c:forEach> -->
													</tbody>
												</table>
											</div>
                                            <div id="Pagination-tbody002" class="pagination text-center">
                                                <!-- 这里显示分页 -->
                                            </div>
										</div>
										<!-- 录入教材信息 -->
										<div class="add-info-textbook">
											<form class="form-horizontal" role="form"
												action="<%=classpath%>/Textbook/add" method="post"
												id="text-form-addinfo">
												<!-- <div class="form-group">
                                                    <label for="firstname" class="col-sm-2 control-label">教材编号</label>
                                                    <div class="col-sm-9">
                                                        <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="教材编号" value="" required>
                                                    </div>
                                                </div> -->
												<div class="form-group">
													<label for="firstname" class="col-sm-2 control-label">教材所属课程</label>
													<div class="col-sm-9">
														<select name="courseId" class="form-control">
															<c:forEach items="${courseList}" var="course">
																<option value="${course.getCourseId()}">${course.getCourseName()}</option>
															</c:forEach>
														</select>
														<!-- <input name="courseId" type="text" class="form-control" id="firstname" placeholder="教材所属课程" value=""> -->
													</div>
												</div>
												<div class="form-group">
													<label for="textbookName" class="col-sm-2 control-label">教材名字</label>
													<div class="col-sm-9">
														<input name="bookname" type="text" class="form-control"
															id="textbookName" placeholder="教材名字" value="" required>
													</div>
												</div>
												<div class="form-group">
													<label for="textbook-type" class="col-sm-2 control-label">教材类型</label>
													<div class="col-sm-9">
														<input name="booktype" type="text" class="form-control"
															id="textbook-type" placeholder="教材类型" value="" required>
													</div>
												</div>
												<div class="form-group">
													<div class="col-sm-offset-2 col-sm-9">
														<button type="submit" class="btn btn-primary">提交</button>
													</div>
												</div>
											</form>
										</div>
										<!-- 修改跳转页面 -->
										<div class="xiugai">
											<div class="row-fluid">
												<div class="col-md-12">
													<!-- 经销商管理---修改跳转页面 -->
													<div class="dealer-buy-xiugai">
														<form class="form-horizontal" role="form"
															action="<%=classpath%>/Dealer/update" method="post"
															id="text-form-dealerbuy">
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">经销商编号</label>
																<div class="col-sm-9">
																	<input name="dealerId" type="text" class="form-control"
																		id="firstname" placeholder="" value=""
																		readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="dealer-name" class="col-sm-2 control-label">经销商名字</label>
																<div class="col-sm-9">
																	<input name="dealerName" type="text"
																		class="form-control" id="dealer-name" placeholder=""
																		value="经销商名字">
																</div>
															</div>
															<div class="form-group">
																<label for="companyAddr" class="col-sm-2 control-label">公司地址</label>
																<div class="col-sm-9">
																	<input name="dealerAddress" type="text"
																		class="form-control" id="companyAddr" placeholder=""
																		value="公司地址">
																</div>
															</div>
															<div class="form-group">
																<label for="connectPer" class="col-sm-2 control-label">联系人</label>
																<div class="col-sm-9">
																	<input name="dealerContacts" type="text"
																		class="form-control" id="connectPer" placeholder=""
																		value="联系人">
																</div>
															</div>
															<div class="form-group">
																<label for="connectPho" class="col-sm-2 control-label">联系电话</label>
																<div class="col-sm-9">
																	<input name="dealerPhone" type="text"
																		class="form-control" id="connectPho" placeholder=""
																		value="联系电话">
																</div>
															</div>
															<div class="form-group">
																<div class="col-sm-offset-2 col-sm-9">
																	<button type="submit"
																		class="btn btn-primary btn-dealer">提交</button>
																</div>
															</div>
														</form>
													</div>
													<!-- 教材管理--修改跳转页面 -->
													<div class="infomation-buy-xiugai">
														<form class="form-horizontal" role="form"
															action="<%=classpath%>/Textbook/update" method="post"
															id="text-form-infomation-xiugai">
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">教材编号</label>
																<div class="col-sm-9">
																	<input name="textbookId" type="text"
																		class="form-control" id="firstname" placeholder=""
																		value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="bookname" class="col-sm-2 control-label">教材名字</label>
																<div class="col-sm-9">
																	<input name="bookname" type="text" class="form-control"
																		id="bookname" placeholder="" value="教材名字" required>
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">教材所属课程</label>
																<div class="col-sm-9">
																	<select name="courseId" class="form-control">
																		<c:forEach items="${courseList}" var="course">
																			<option value="${course.getCourseId()}">${course.getCourseName()}</option>
																		</c:forEach>
																	</select>
																	<!-- <input name="courseId" type="text" class="form-control" id="firstname" placeholder="" value="教材所属课程"> -->
																</div>
															</div>
															<div class="form-group hide">
																<label for="firstname" class="col-sm-2 control-label">所属课程</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="" value="">
																</div>
															</div>
															<div class="form-group">
																<label for="chubanshe" class="col-sm-2 control-label">出版社</label>
																<div class="col-sm-9">
																	<input name="booktype" type="text" class="form-control"
																		id="chubanshe" placeholder="" value="" required>
																</div>
															</div>
															<div class="form-group">
																<label for="book-number" class="col-sm-2 control-label">教材储量</label>
																<div class="col-sm-9">
																	<input name="bookStorage" type="text"
																		class="form-control required digits" id="book-number"
																		placeholder="" value="">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">是否报废</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="是否报废" value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">报废时间</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="报废时间" value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="dueReason" class="col-sm-2 control-label">报废理由</label>
																<div class="col-sm-9">
																	<input name="overdueReason" type="text"
																		class="form-control" id="dueReason" placeholder="报废理由"
																		value="">
																</div>
															</div>
															<div class="form-group">
																<div class="col-sm-offset-2 col-sm-9">
																	<button type="submit"
																		class="btn btn-primary btn-dealer">提交</button>
																</div>
															</div>
														</form>
													</div>
													<!-- 教材订购单--修改 -->
													<div class="note-order-xiugai">
														<form class="form-horizontal" role="form"
															action="<%=classpath%>/Reserve/update" method="post"
															id="text-form-note-xiugai">
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">订单编号</label>
																<div class="col-sm-9">
																	<input name="reserveId" type="text"
																		class="form-control" id="firstname" placeholder=""
																		value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">教材</label>
																<div class="col-sm-9">
																	<select name="textbookId" class="form-control">
																		<option value=""></option>
																		<c:forEach items="${textbookList001}" var="textbook">
																			<option value="${textbook.getTextbookId()}">${textbook.getBookname()}</option>
																		</c:forEach>
																	</select>
																	<!-- <input name="textbookId" type="text" class="form-control" id="firstname" placeholder="" value="教材编号"> -->
																</div>
															</div>
															<div class="form-group hide">
																<label for="firstname" class="col-sm-2 control-label">教材名称</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="" value="教材名称" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">经销商</label>
																<div class="col-sm-9">
																	<select name="dealerId" class="form-control">
																		<option value=""></option>
																		<c:forEach items="${dealerList001}" var="dealer">
																			<option value="${dealer.getDealerId()}">${dealer.getDealerName()}</option>
																		</c:forEach>
																	</select>
																	<!-- <input name="dealerId" type="text" class="form-control" id="firstname" placeholder="" value="经销商编号"> -->
																</div>
															</div>
															<div class="form-group hide">
																<label for="firstname" class="col-sm-2 control-label">经销商名称</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="" value="教材名称" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="buy-price" class="col-sm-2 control-label">购入价格(元)</label>
																<div class="col-sm-9">
																	<input name="price" type="text"
																		class="form-control required number" id="buy-price"
																		placeholder="" value="购入价格(元)">
																</div>
															</div>
															<div class="form-group">
																<label for="buy-number" class="col-sm-2 control-label">购入数量</label>
																<div class="col-sm-9">
																	<input name="num" type="text"
																		class="form-control required digits" id="buy-number"
																		placeholder="" value="">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">购入时间</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="" value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<label for="firstname" class="col-sm-2 control-label">总金额(元)</label>
																<div class="col-sm-9">
																	<input type="text" class="form-control" id="firstname"
																		placeholder="" value="" readonly="readonly">
																</div>
															</div>
															<div class="form-group">
																<div class="col-sm-offset-2 col-sm-9">
																	<button type="submit"
																		class="btn btn-primary btn-dealer">提交</button>
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
					<p class="text-center">Copyright 2013 © - Bootstrap Themes</p>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery库，同时加载该库必须在加载bootstrap.min.js之前 -->
	<script src="<%=filepath%>/js/jquery-2.1.4.js"></script>
	<!-- 加载bootstrap的核心js库 -->
	<script src="<%=filepath%>/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=filepath%>/js/index.js"></script>
	<script type="text/javascript"
		src="<%=filepath%>/js/jquery.validate.min.js"></script>
	<script type="text/javascript"
		src="<%=filepath%>/js/messages_zh.min.js"></script>
	<script type="text/javascript" src="<%=filepath%>/js/myValidate.js"></script>
	<script type="text/javascript"
		src="<%=filepath%>/js/jquery.pagination.js"></script>
	<script type="text/javascript" src="<%=filepath%>/js/fenye.js"></script>
	<!-- <script type="text/javascript" src="js/text-book.js"></script> -->
	<script type="text/javascript">
		//左边导航栏打开状态设置
		$(".mid-left .nav .mid-left-li00025").addClass("open");
		$(".mid-left .nav .mid-left-li00025").children('ul').slideDown();
		//教材采购模块---start
		$(".buy-textbook .nav li").click(function(event) {
			$(this).addClass('active').siblings('li').removeClass('active');
		})
		$(".buy-textbook .r-down-footing .dealer-buy-textbook").show()
				.siblings('div').hide();
		$(".buy-textbook .r-down-middle .nav li a").click(
				function(event) {
					$(".buy-textbook .r-down-footing ."+ event.target.className).show();
					$(".buy-textbook .r-down-footing ."+ event.target.className).siblings('div')
							.hide();
				});
		// <!-- 经销商修改跳转页面 -->
		$(".dealer-buy-textbook .table ")
				.on(
						"click",
						"td .dealer-buy-xiugai",
						function(event) {
							$(".buy-textbook .r-down-footing .xiugai").show()
									.siblings('div').hide();
							$(".xiugai ." + event.target.className).show()
									.siblings().hide();
							// 点击链接，获取table的值
							var tdLength = $(this).parent('td').prevAll()
									.size();
							// alert(tdLength)
							var tdValue = $(this).parent('td').siblings('td');
							var inputValue = $(".xiugai .dealer-buy-xiugai form .form-group");
							var tdText = 0;
							for (var i = 0; i < tdLength; i++) {
								tdText = tdValue.eq(i).text();
								inputValue.eq(i).find('input').val(tdText);
							}
						})
		// 教材管理--修改跳转页面
		$(".infomation-buy-textbook .table ")
				.on(
						"click",
						"td .infomation-buy-xiugai",
						function(event) {
							$(".buy-textbook .r-down-footing .xiugai").show()
									.siblings('div').hide();
							$(".xiugai ." + event.target.className).show()
									.siblings().hide();
							// 点击链接，获取table的值
							var tdLength = $(this).parent('td').prevAll()
									.size();
							// alert(tdLength)
							var tdValue = $(this).parent('td').siblings('td');
							var inputValue = $(".xiugai .infomation-buy-xiugai form .form-group");
							var tdText = 0;
							for (var i = 0; i < tdLength; i++) {
								tdText = tdValue.eq(i).text();
								tdText1 = tdValue.eq(i + 1).text();
								if (i == 2) {
									inputValue.eq(i).find('select').children(
											'option').eq(0).text(tdText1);
									inputValue.eq(i).find('select').children(
											'option').eq(0).val(tdText);
								} else {
									inputValue.eq(i).find('input').val(tdText);
								}
							}
						});
		//教材订购单--修改页面
		$(".note-order-textbook .table ")
				.on(
						"click",
						"td .note-order-xiugai",
						function(event) {
							$(".buy-textbook .r-down-footing .xiugai").show()
									.siblings('div').hide();
							$(".xiugai ." + event.target.className).show()
									.siblings().hide();
							// 点击链接，获取table的值
							var tdLength = $(this).parent('td').prevAll()
									.size();
							// alert(tdLength)
							var tdValue = $(this).parent('td').siblings('td');
							var inputValue = $(".xiugai .note-order-xiugai form .form-group");
							var tdText = 0;
							for (var i = 0; i < tdLength; i++) {
								tdText = tdValue.eq(i).text();
								tdText1 = tdValue.eq(i + 1).text();
								if (i == 1) {
									inputValue.eq(i).find('select').children(
											'option').eq(0).text(tdText1);
									inputValue.eq(i).find('select').children(
											'option').eq(0).val(tdText);
								} else if (i == 3) {
									inputValue.eq(i).find('select').children(
											'option').eq(0).text(tdText1);
									inputValue.eq(i).find('select').children(
											'option').eq(0).val(tdText);
								} else {
									inputValue.eq(i).find('input').val(tdText);
								}
							}
						});
        // 教材订购单--隐藏table，点击查询按钮再显示
        $(".note-order-textbook form").siblings('.pagination').hide();
        $(".note-order-textbook form button[type='button']").click(function(event) {
            $(this).parents('form').siblings('.pagination').show();
        });
		//教材订购单ajax
		function searchReserve() {
			var search = $(".note-order-textbook #search01").val();
			var kind = $("#kind01").find("option:selected").val();
			var url01 = "<c:url value='/Reserve/query' />";
			//alert(kind+" + "+search);
			$
					.ajax({
						type : "POST",
						url : url01,
						data : {
							'search' : search,
							'kind' : kind,
						},
						dataType : "json",
						success : function(data) {
							//var data = eval(data);

							var tbody = $('#tbody001');
							tbody.empty();
							for (var i = 0; i < data.reserveList.length; i++) {
								var tr = $("<tr></tr>");
								$("<td></td>").html(
										data.reserveList[i].reserveId)
										.appendTo(tr);
								$("<td></td>").html(
										data.reserveList[i].textbookId)
										.appendTo(tr);
								$("<td></td>").html(
										data.reserveList[i].textbookName)
										.appendTo(tr);
								$("<td></td>").html(
										data.reserveList[i].dealerId).appendTo(
										tr);
								$("<td></td>").html(
										data.reserveList[i].dealerName)
										.appendTo(tr);
								$("<td></td>").html(data.reserveList[i].price)
										.appendTo(tr);
								$("<td></td>").html(data.reserveList[i].num)
										.appendTo(tr);
								var date = new Date(
										data.reserveList[i].reserveTime);
								var setDate = date.getFullYear() + "-"
										+ date.getMonth() + "-" + date.getDay();
								$("<td></td>").html(setDate).appendTo(tr);
								var pay = data.reserveList[i].price
										* data.reserveList[i].num
								$("<td></td>").html(pay).appendTo(tr);
								var str = "<a class='note-order-xiugai' href='javascript:void;' >修改</a>"
								$("<td></td>").html(str).appendTo(tr);
								tbody.append(tr);
							}
							var initPagination = function() {
								// 创建分页 
								// 教材订购单
								var num_tbody001 = $("#tbody001 tr ").length;
								$("#Pagination-tbody001").pagination(
										num_tbody001, {
											num_edge_entries : 2, //边缘页数
											num_display_entries : 5, //主体页数
											callback : pageselectCallback1,
											items_per_page : 4
										//每页显示4项
										});
							}();
							// 教材订单
							function pageselectCallback1(page_index, jq) {
								//总数目
								var length = $("#tbody001 tr").size();
								console.log("page_index:" + page_index + " jq:"
										+ length);
								var max_elem = Math.min((page_index + 1) * 4,
										length);
								$("#Searchtbody001").html("");
								// 获取加载元素
								for (var i = page_index * 4; i < max_elem; i++) {
									$("#Searchtbody001").append(
											$("#tbody001 tr:eq(" + i + ")")
													.clone());
								}
								//阻止单击事件
								return false;
							};
						},
						error : function() {
							alert("网络连接出错！");
						}
					});
		};

		//教材管理ajax
		function searchTextbook() {
			var search = $(".infomation-buy-textbook #search02").val();
			var kind = $("#kind02").find("option:selected").val();
			var url01 = "<c:url value='/Textbook/query' />";
			//alert(kind+" + "+search);
			$.ajax({
				type : "POST",
				url : url01,
				data : {
					'search' : search,
					'kind' : kind,
				},
				dataType : "json",
				success : function(data) {
					//var data = eval(data);

					var tbody = $('#tbody002');
					tbody.empty();
					for (var i = 0; i < data.textbookList.length; i++) {
						var tr = $("<tr></tr>");
						$("<td></td>").html(data.textbookList[i].textbookId)
								.appendTo(tr);
						$("<td></td>").html(data.textbookList[i].bookname)
								.appendTo(tr);
						$("<td></td>").html(data.textbookList[i].courseId)
								.appendTo(tr);
						$("<td></td>").html(data.textbookList[i].courseName)
								.appendTo(tr);
						$("<td></td>").html(data.textbookList[i].booktype)
								.appendTo(tr);
						$("<td></td>").html(data.textbookList[i].bookStorage)
								.appendTo(tr);
						if (data.textbookList[i].isOverdue == 000)
							var isOverdue = "否";
						else
							var isOverdue = "已报废";
						$("<td></td>").html(isOverdue).appendTo(tr);
						var str = "<a class='infomation-buy-xiugai'>修改</a>"
						$("<td></td>").html(str).appendTo(tr);
						tbody.append(tr);
					}
                    var initPagination = function() {
                                // 创建分页 
                                // 教材订购单
                                var num_tbody002 = $("#tbody002 tr ").length;
                                $("#Pagination-tbody002").pagination(
                                        num_tbody002, {
                                            num_edge_entries : 2, //边缘页数
                                            num_display_entries : 5, //主体页数
                                            callback : pageselectCallback2,
                                            items_per_page : 4
                                        //每页显示4项
                                        });
                            }();
                            // 教材订单
                            function pageselectCallback2(page_index, jq) {
                                //总数目
                                var length = $("#tbody002 tr").size();
                                console.log("page_index:" + page_index + " jq:"
                                        + length);
                                var max_elem = Math.min((page_index + 1) * 4,
                                        length);
                                $("#Search-tbody002").html("");
                                // 获取加载元素
                                for (var i = page_index * 4; i < max_elem; i++) {
                                    $("#Search-tbody002").append(
                                            $("#tbody002 tr:eq(" + i + ")")
                                                    .clone());
                                }
                                //阻止单击事件
                                return false;
                            };
				},
				error : function() {
					alert("网络连接出错！");
				}
			});
		};
	</script>
</body>

</html>
