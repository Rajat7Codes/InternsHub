<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.materialicon {
	margin-top: 22px;
}

.notificationicon {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="page-bar">
		<div class="page-title-breadcrumb">
			<div class=" pull-left">
				<div class="page-title">Dashboard</div>
			</div>
			<ol class="breadcrumb page-breadcrumb pull-right">
				<li><i class="fa fa-home"></i>&nbsp;<a class="parent-item"
					href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i></li>
				<li class="active">Dashboard</li>
			</ol>
		</div>
	</div>
	<!-- start widget -->
	<div class="state-overview">
		<div class="row">
			<div class="col-xl-3 col-md-6 col-12">
				<div class="info-box bg-b-orange">
					<span class="info-box-icon push-bottom"><i
						class="material-icons materialicon">shopping_cart</i></span>
					<div class="info-box-content">
						<span class="info-box-text">Total Income</span> <span
							class="info-box-number">${incomeCount}</span>
						<div class="progress">
							<div class="progress-bar" style="width: 45%"></div>
						</div>
						<!-- <span class="progress-description"> 45% Increase in 28 Days
						</span> -->
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-xl-3 col-md-6 col-12">
				<div class="info-box bg-b-purple">
					<span class="info-box-icon push-bottom"><i
						class="material-icons materialicon">redeem</i></span>
					<div class="info-box-content">
						<span class="info-box-text">Total Balance Amount</span> <span
							class="info-box-number">${balanceCount}</span>
						<div class="progress">
							<div class="progress-bar" style="width: 40%"></div>
						</div>
						<!-- <span class="progress-description"> 40% Increase in 28 Days
						</span> -->
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-xl-3 col-md-6 col-12">
				<div class="info-box bg-b-cyan">
					<span class="info-box-icon push-bottom"><i
						class="material-icons materialicon">group</i></span>
					<div class="info-box-content">
						<span class="info-box-text">Total Paid Amount</span> <span
							class="info-box-number">${paidAmountCount}</span>
						<div class="progress">
							<div class="progress-bar" style="width: 85%"></div>
						</div>
						<!-- <span class="progress-description"> 85% Increase in 28 Days
						</span> -->
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
			<div class="col-xl-3 col-md-6 col-12">
				<div class="info-box bg-b-black">
					<span class="info-box-icon push-bottom"><i
						class="material-icons materialicon">monetization_on</i></span>
					<div class="info-box-content">
						<span class="info-box-text">Daily Fees Collection</span> <span
							class="info-box-number">${dailyFeesCollection}</span>
						<div class="progress">
							<div class="progress-bar" style="width: 50%"></div>
						</div>
						<!-- <span class="progress-description"> 50% Increase in 28 Days
						</span> -->
					</div>
					<!-- /.info-box-content -->
				</div>
				<!-- /.info-box -->
			</div>
			<!-- /.col -->
		</div>
	</div>
	<!-- end widget -->
	<!-- chart start -->
	<div class="row">
		<div class="col-sm-12">
			<div class="card card-box">
				<div class="card-head">
					<header>Chart Survey</header>
					<div class="tools">
						<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
						<a class="t-collapse btn-color fa fa-chevron-down"
							href="javascript:;"></a> <a class="t-close btn-color fa fa-times"
							href="javascript:;"></a>
					</div>
				</div>
				<div class="card-body no-padding height-9">
					<div class="row">
						<!-- <canvas id="canvas1"></canvas> -->
						<div class="card-body ">
							<div class="table-wrap">
								<div
									class="table-responsive tblHeightSet small-slimscroll-style">
									<table class="table display product-overview mb-30"
										id="support_table">
										<thead>
											<tr>
												<th>Sr.No.</th>
												<th>Name</th>
												<th>College</th>
												<th>Session</th>
												<th>Duration</th>
												<th>Type</th>
												<th>Fees</th>
												<th>Discount</th>
												<th>Extension</th>
												<th>Joining Date</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="stud" items="${studentEntryList }"
												varStatus="ind">
												<tr>
													<td>${ind.index+1 }</td>
													<td>${stud.firstName }&nbsp;${stud.middleName }&nbsp;${stud.lastName }</td>
													<td>${stud.getCollege().collegeName }</td>
													<td>${stud.getInternshipSession().sessionName }</td>
													<td>${stud.getInternshipDuration().duration }</td>
													<td>${stud.getInternshipType().type }</td>
													<td>${stud.feesAmount }</td>
													<td>${stud.discount }</td>
													<td>${stud.extension }</td>
													<td>${stud.date }</td>
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
		<!-- <div class="col-sm-4">
			<div class="card card-box">
				<div class="card-head">
					<header>Chart Survey</header>
					<div class="tools">
						<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
						<a class="t-collapse btn-color fa fa-chevron-down"
							href="javascript:;"></a> <a class="t-close btn-color fa fa-times"
							href="javascript:;"></a>
					</div>
				</div>
				<div class="card-body no-padding height-9">
					<div class="row">
						<canvas id="chartjs_pie"></canvas>
					</div>
				</div>
			</div>
		</div> -->
	</div>
	<!-- Chart end -->
	<!-- <div class="row">
		<div class="col-md-8 col-sm-12 col-12">
			<div class="card card-box">
				<div class="card-head">
					<header>Assign Task</header>
					<div class="tools">
						<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
						<a class="t-collapse btn-color fa fa-chevron-down"
							href="javascript:;"></a> <a class="t-close btn-color fa fa-times"
							href="javascript:;"></a>
					</div>
				</div>
				<div class="card-body ">
					<div class="table-wrap">
						<div class="table-responsive tblHeightSet small-slimscroll-style">
							<table class="table display product-overview mb-30"
								id="support_table">
								<thead>
									<tr>
										<th>#</th>
										<th>Task</th>
										<th>Assigned Agents</th>
										<th>status</th>
										<th>Progress</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Preparation for cricket team</td>
										<td>Kenny Josh</td>
										<td><span class="label label-sm label-success">Done</span>
										</td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-success progress-bar-striped active"
													role="progressbar" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100" style="width: 100%;">
													<span class="sr-only">100% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Annual function preparation</td>
										<td>Mark</td>
										<td><span class="label label-sm label-warning">
												Pending </span></td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-warning progress-bar-striped active"
													role="progressbar" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100" style="width: 70%;">
													<span class="sr-only">70% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>4</td>
										<td>Final year exam paper set</td>
										<td>Felix</td>
										<td><span class="label label-sm label-danger">Suspended</span>
										</td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-danger progress-bar-striped active"
													role="progressbar" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100" style="width: 50%;">
													<span class="sr-only">50% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>5</td>
										<td>Placement report</td>
										<td>Beryl</td>
										<td><span class="label label-sm label-success ">Done</span>
										</td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-success progress-bar-striped active"
													role="progressbar" aria-valuenow="100" aria-valuemin="0"
													aria-valuemax="100" style="width: 100%;">
													<span class="sr-only">100% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>6</td>
										<td>Fees collection report</td>
										<td>Jayesh</td>
										<td><span class="label label-sm label-success ">Done</span>
										</td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-success progress-bar-striped active"
													role="progressbar" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100" style="width: 100%;">
													<span class="sr-only">100% Complete</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td>7</td>
										<td>Library book status</td>
										<td>Sharma</td>
										<td><span class="label label-sm label-danger">Suspended</span>
										</td>
										<td>
											<div class="progress">
												<div
													class="progress-bar progress-bar-danger progress-bar-striped active"
													role="progressbar" aria-valuenow="90" aria-valuemin="0"
													aria-valuemax="100" style="width: 20%;">
													<span class="sr-only">20% Complete</span>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-4 col-sm-12 col-12">
			<div class="card  card-box">
				<div class="card-head">
					<header>Notifications</header>
					<div class="tools">
						<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
						<a class="t-collapse btn-color fa fa-chevron-down"
							href="javascript:;"></a> <a class="t-close btn-color fa fa-times"
							href="javascript:;"></a>
					</div>
				</div>
				<div class="card-body no-padding height-9">
					<div class="row">
						<div class="noti-information notification-menu">
							<div
								class="notification-list mail-list not-list small-slimscroll-style">
								<a href="javascript:;" class="single-mail"> <span
									class="icon bg-primary"> <i
										class="fa fa-user-o notificationicon"></i>
								</span> <span class="text-purple">Abhay Jani</span> Added you as friend
									<span class="notificationtime"> <small>Just Now</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon blue-bgcolor"> <i
										class="fa fa-envelope-o notificationicon"></i>
								</span> <span class="text-purple">John Doe</span> send you a mail <span
									class="notificationtime"> <small>Just Now</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-success"> <i
										class="fa fa-check-square-o notificationicon"></i>
								</span> Success Message <span class="notificationtime"> <small>
											2 Days Ago</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-warning"> <i
										class="fa fa-warning notificationicon"></i>
								</span> <strong>Database Overloaded Warning!</strong> <span
									class="notificationtime"> <small>1 Week Ago</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-primary"> <i
										class="fa fa-user-o notificationicon"></i>
								</span> <span class="text-purple">Abhay Jani</span> Added you as friend
									<span class="notificationtime"> <small>Just Now</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon blue-bgcolor"> <i
										class="fa fa-envelope-o notificationicon"></i>
								</span> <span class="text-purple">John Doe</span> send you a mail <span
									class="notificationtime"> <small>Just Now</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-success"> <i
										class="fa fa-check-square-o notificationicon"></i>
								</span> Success Message <span class="notificationtime"> <small>
											2 Days Ago</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-warning"> <i
										class="fa fa-warning notificationicon"></i>
								</span> <strong>Database Overloaded Warning!</strong> <span
									class="notificationtime"> <small>1 Week Ago</small>
								</span>
								</a> <a href="javascript:;" class="single-mail"> <span
									class="icon bg-danger"> <i
										class="fa fa-times notificationicon"></i>
								</span> <strong>Server Error!</strong> <span class="notificationtime">
										<small>10 Days Ago</small>
								</span>
								</a>
							</div>
							<div class="full-width text-center p-t-10">
								<button type="button"
									class="btn purple btn-outline btn-circle margin-0">View
									All</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	<div class="row">
		<!-- Quick Mail start -->
		<!-- <div class="col-lg-6 col-md-12 col-sm-12 col-12">
			<div class="card-box">
				<div class="card-head">
					<header>Quick Mail</header>
					<button id="demo_menu-lower-right"
						class="mdl-button mdl-js-button mdl-button--icon pull-right"
						data-upgraded=",MaterialButton">
						<i class="material-icons">more_vert</i>
					</button>
					<ul
						class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
						data-mdl-for="demo_menu-lower-right">
						<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
						<li class="mdl-menu__item"><i class="material-icons">print</i>Another
							action</li>
						<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something
							else here</li>
					</ul>
				</div>
				<div class="card-body ">
					<div class="mail-list">
						<div class="compose-mail">
							<form method="post">
								<div class="form-group">
									<label for="to" class="">To:</label> <input type="text"
										tabindex="1" id="to" class="form-control">
									<div class="compose-options">
										<a
											onclick="$(this).hide(); $('#cc').parent().removeClass('hidden'); $('#cc').focus();"
											href="javascript:;">Cc</a> <a
											onclick="$(this).hide(); $('#bcc').parent().removeClass('hidden'); $('#bcc').focus();"
											href="javascript:;">Bcc</a>
									</div>
								</div>
								<div class="form-group hidden">
									<label for="cc" class="">Cc:</label> <input type="text"
										tabindex="2" id="cc" class="form-control">
								</div>
								<div class="form-group hidden">
									<label for="bcc" class="">Bcc:</label> <input type="text"
										tabindex="2" id="bcc" class="form-control">
								</div>
								<div class="form-group">
									<label for="subject" class="">Subject:</label> <input
										type="text" tabindex="1" id="subject" class="form-control">
								</div>
								<div>
									<div id="summernote"></div>
									<input type="file" class="default" multiple>
								</div>
								  <div class="btn-group margin-top-20 ">
	                                                <button class="btn btn-primary btn-sm margin-right-10"><i class="fa fa-check"></i> Send</button>
                                           		</div>
								<div class="box-footer clearfix">
									<button type="button"
										class="mdl-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-primary pull-right">
										Send <i class="fa fa-paper-plane-o"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- Quick Mail end -->
		<!-- Activity feed start -->
		<%-- <div class="col-lg-6 col-md-12 col-sm-12 col-12">
			<div class="card-box">
				<div class="card-head">
					<header>Activity Feed</header>
					<button id="feedMenu"
						class="mdl-button mdl-js-button mdl-button--icon pull-right"
						data-upgraded=",MaterialButton">
						<i class="material-icons">more_vert</i>
					</button>
					<ul
						class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
						data-mdl-for="feedMenu">
						<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
						<li class="mdl-menu__item"><i class="material-icons">print</i>Another
							action</li>
						<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something
							else here</li>
					</ul>
				</div>
				<div class="card-body ">
					<ul class="feedBody">
						<li class="active-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user1.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblFileStyle">File</span> Sarah Smith
								<small class="text-muted">6 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">hii John, I have upload doc related
								to task.</p>

						</li>
						<li class="diactive-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user2.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblTaskStyle">Task </span> Jalpa Joshi<small
									class="text-muted">5 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">Please do as specify. Let me know if
								you have any query.</p>
						</li>
						<li class="diactive-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user3.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblCommentStyle">comment</span> Lina
								Smith<small class="text-muted">6 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">Hey, How are you??</p>
						</li>
						<li class="active-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user4.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblReplyStyle">Reply</span> Jacob Ryan
								<small class="text-muted">7 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">I am fine. You??</p>
						</li>
						<li class="active-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user5.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblFileStyle">File</span> Sarah Smith
								<small class="text-muted">6 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">hii John, I have upload doc related
								to task.</p>

						</li>
						<li class="diactive-feed">
							<div class="feed-user-img">
								<img
									src="${pageContext.request.contextPath }/static/img/user/user6.jpg"
									class="img-radius " alt="User-Profile-Image">
							</div>
							<h6>
								<span class="feedLblStyle lblTaskStyle">Task </span> Jalpa Joshi<small
									class="text-muted">5 hours ago</small>
							</h6>
							<p class="m-b-15 m-t-15">Please do as specify. Let me know if
								you have any query.</p>
						</li>
					</ul>
				</div>
			</div>
		</div> --%>
		<!-- Activity feed end -->
	</div>
	<!-- <div class="row">
		<div class="col-lg-6 col-md-12 col-sm-12 col-12">
			<div class="card-box">
				<div class="card-head">
					<header>Employee Performance</header>
					<button id="panel-button8"
						class="mdl-button mdl-js-button mdl-button--icon pull-right"
						data-upgraded=",MaterialButton">
						<i class="material-icons">more_vert</i>
					</button>
					<ul
						class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
						data-mdl-for="panel-button8">
						<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
						<li class="mdl-menu__item"><i class="material-icons">print</i>Another
							action</li>
						<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something
							else here</li>
					</ul>
				</div>
				<div class="card-body ">
					<div class="table-responsive">
						<table class="table table-striped custom-table table-hover">
							<thead>
								<tr>
									<th>Roll No</th>
									<th>Name</th>
									<th>Graph</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>23</td>
									<td>John Smith</td>
									<td><div id="sparkline"></div></td>
									<td><a href="javascript:void(0)" class=""
										data-toggle="tooltip" title="Edit"> <i class="fa fa-check"></i></a>
										<a href="javascript:void(0)" class="text-inverse"
										title="Delete" data-toggle="tooltip"> <i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<td>12</td>
									<td>Sneha Pandit</td>
									<td><div id="sparkline1"></div></td>
									<td><a href="javascript:void(0)" class=""
										data-toggle="tooltip" title="Edit"> <i class="fa fa-check"></i></a>
										<a href="javascript:void(0)" class="text-inverse"
										title="Delete" data-toggle="tooltip"> <i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<td>45</td>
									<td>Sarah Smith</td>
									<td><div id="sparkline2"></div></td>
									<td><a href="javascript:void(0)" class=""
										data-toggle="tooltip" title="Edit"> <i class="fa fa-check"></i></a>
										<a href="javascript:void(0)" class="text-inverse"
										title="Delete" data-toggle="tooltip"> <i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<td>34</td>
									<td>John Deo</td>
									<td><div id="sparkline3"></div></td>
									<td><a href="javascript:void(0)" class=""
										data-toggle="tooltip" title="Edit"> <i class="fa fa-check"></i></a>
										<a href="javascript:void(0)" class="text-inverse"
										title="Delete" data-toggle="tooltip"> <i
											class="fa fa-trash"></i></a></td>
								</tr>
								<tr>
									<td>15</td>
									<td>Jay Soni</td>
									<td><div id="sparkline4"></div></td>
									<td><a href="javascript:void(0)" class=""
										data-toggle="tooltip" title="Edit"> <i class="fa fa-check"></i></a>
										<a href="javascript:void(0)" class="text-inverse"
										title="Delete" data-toggle="tooltip"> <i
											class="fa fa-trash"></i></a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6 col-md-12 col-sm-12 col-12">
			<div class="card-box">
				<div class="card-head">
					<header>Todo List</header>
					<button id="panel-button"
						class="mdl-button mdl-js-button mdl-button--icon pull-right"
						data-upgraded=",MaterialButton">
						<i class="material-icons">more_vert</i>
					</button>
					<ul
						class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
						data-mdl-for="panel-button">
						<li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
						<li class="mdl-menu__item"><i class="material-icons">print</i>Another
							action</li>
						<li class="mdl-menu__item"><i class="material-icons">favorite</i>Something
							else here</li>
					</ul>
				</div>
				<div class="card-body ">
					<ul class="to-do-list ui-sortable" id="sortable-todo">
						<li class="clearfix">
							<div class="todo-check pull-left">
								<input type="checkbox" value="None" id="todo-check1"> <label
									for="todo-check1"></label>
							</div>
							<p class="todo-title">Add fees details in system</p>
							<div class="todo-actionlist pull-right clearfix">
								<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
							</div>
						</li>
						<li class="clearfix">
							<div class="todo-check pull-left">
								<input type="checkbox" value="None" id="todo-check2"> <label
									for="todo-check2"></label>
							</div>
							<p class="todo-title">Announcement for holiday</p>
							<div class="todo-actionlist pull-right clearfix">
								<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
							</div>
						</li>
						<li class="clearfix">
							<div class="todo-check pull-left">
								<input type="checkbox" value="None" id="todo-check3"> <label
									for="todo-check3"></label>
							</div>
							<p class="todo-title">call bus driver</p>
							<div class="todo-actionlist pull-right clearfix">
								<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
							</div>
						</li>
						<li class="clearfix">
							<div class="todo-check pull-left">
								<input type="checkbox" value="None" id="todo-check4"> <label
									for="todo-check4"></label>
							</div>
							<p class="todo-title">School picnic</p>
							<div class="todo-actionlist pull-right clearfix">
								<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
							</div>
						</li>
						<li class="clearfix">
							<div class="todo-check pull-left">
								<input type="checkbox" value="None" id="todo-check5"> <label
									for="todo-check5"></label>
							</div>
							<p class="todo-title">Exam time table generate</p>
							<div class="todo-actionlist pull-right clearfix">
								<a href="#" class="todo-remove"><i class="fa fa-times"></i></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div> -->
	<!-- start Payment Details -->
	<!-- <div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="card  card-box">
				<div class="card-head">
					<header>Payment Details</header>
					<div class="tools">
						<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
						<a class="t-collapse btn-color fa fa-chevron-down"
							href="javascript:;"></a> <a class="t-close btn-color fa fa-times"
							href="javascript:;"></a>
					</div>
				</div>
				<div class="card-body ">
					<div class="table-wrap">
						<div class="table-responsive">
							<table class="table display product-overview mb-30"
								id="support_table5">
								<thead>
									<tr>
										<th>No</th>
										<th>Name</th>
										<th>Assigned Agent</th>
										<th>Date Of Admit</th>
										<th>Status</th>
										<th>Branch</th>
										<th>Edit</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Jens Brincker</td>
										<td>Kenny Josh</td>
										<td>27/05/2016</td>
										<td><span class="label label-sm label-success">paid</span>
										</td>
										<td>Mechanical</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>Mark Hay</td>
										<td>Mark</td>
										<td>26/05/2017</td>
										<td><span class="label label-sm label-warning">unpaid
										</span></td>
										<td>Science</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Anthony Davie</td>
										<td>Cinnabar</td>
										<td>21/05/2016</td>
										<td><span class="label label-sm label-success ">paid</span>
										</td>
										<td>Commerce</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>4</td>
										<td>David Perry</td>
										<td>Felix</td>
										<td>20/04/2016</td>
										<td><span class="label label-sm label-danger">unpaid</span>
										</td>
										<td>Mechanical</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>5</td>
										<td>Anthony Davie</td>
										<td>Beryl</td>
										<td>24/05/2016</td>
										<td><span class="label label-sm label-success ">paid</span>
										</td>
										<td>M.B.A.</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>6</td>
										<td>Alan Gilchrist</td>
										<td>Joshep</td>
										<td>22/05/2016</td>
										<td><span class="label label-sm label-warning ">unpaid</span>
										</td>
										<td>Science</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>7</td>
										<td>Mark Hay</td>
										<td>Jayesh</td>
										<td>18/06/2016</td>
										<td><span class="label label-sm label-success ">paid</span>
										</td>
										<td>Commerce</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
									<tr>
										<td>8</td>
										<td>Sue Woodger</td>
										<td>Sharma</td>
										<td>17/05/2016</td>
										<td><span class="label label-sm label-danger">unpaid</span>
										</td>
										<td>Mechanical</td>
										<td><a href="javascript:void(0)" class=""
											data-toggle="tooltip" title="Edit"><i class="fa fa-check"></i></a>
											<a href="javascript:void(0)" class="text-inverse"
											title="Delete" data-toggle="tooltip"><i
												class="fa fa-trash"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
</body>
</html>