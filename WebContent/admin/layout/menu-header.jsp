<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav
	class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
	<div
		class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
		<a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/admin/"> <img
			src="${pageContext.request.contextPath}/admin/images/logo.png" alt="logo" />
		</a>
		<!-- logo mobile -->
		<a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/admin/"> <img
			src="${pageContext.request.contextPath}/admin/images/logo-mini.png" alt="logo" />
		</a>
	</div>
	<div class="navbar-menu-wrapper d-flex align-items-center">
		<!-- <ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">
			<li class="nav-item"><a href="#" class="nav-link">Schedule <span
					class="badge badge-primary ml-1">New</span>
			</a></li>
			<li class="nav-item active"><a href="#" class="nav-link"> <i
					class="mdi mdi-elevation-rise"></i>Reports
			</a></li>
			<li class="nav-item"><a href="#" class="nav-link"> <i
					class="mdi mdi-bookmark-plus-outline"></i>Score
			</a></li>
		</ul> -->
		<ul class="navbar-nav navbar-nav-right">
			<!-- <li class="nav-item dropdown"><a
				class="nav-link count-indicator dropdown-toggle"
				id="messageDropdown" href="#" data-toggle="dropdown"
				aria-expanded="false"> <i class="mdi mdi-file-document-box"></i>
					<span class="count">7</span>
			</a>
				<div
					class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
					aria-labelledby="messageDropdown">
					<div class="dropdown-item">
						<p class="mb-0 font-weight-normal float-left">You have 7
							unread mails</p>
						<span class="badge badge-info badge-pill float-right">View
							all</span>
					</div>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face4.jpg" alt="image" class="profile-pic">
						</div>
						<div class="preview-item-content flex-grow">
							<h6 class="preview-subject ellipsis font-weight-medium text-dark">
								David Grey <span
									class="float-right font-weight-light small-text">1
									Minutes ago</span>
							</h6>
							<p class="font-weight-light small-text">The meeting is
								cancelled</p>
						</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face2.jpg" alt="image" class="profile-pic">
						</div>
						<div class="preview-item-content flex-grow">
							<h6 class="preview-subject ellipsis font-weight-medium text-dark">
								Tim Cook <span class="float-right font-weight-light small-text">15
									Minutes ago</span>
							</h6>
							<p class="font-weight-light small-text">New product launch</p>
						</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<img src="images/faces/face3.jpg" alt="image" class="profile-pic">
						</div>
						<div class="preview-item-content flex-grow">
							<h6 class="preview-subject ellipsis font-weight-medium text-dark">
								Johnson <span class="float-right font-weight-light small-text">18
									Minutes ago</span>
							</h6>
							<p class="font-weight-light small-text">Upcoming board
								meeting</p>
						</div>
					</a>
				</div></li>


			hiển thị thông báo mới
			<li class="nav-item dropdown"><a
				class="nav-link count-indicator dropdown-toggle"
				id="notificationDropdown" href="#" data-toggle="dropdown"> <i
					class="mdi mdi-bell"></i> <span class="count">4</span>
			</a>
				<div
					class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
					aria-labelledby="notificationDropdown">
					<a class="dropdown-item">
						<p class="mb-0 font-weight-normal float-left">Bạn có 4 thông
							báo mới</p> <span class="badge badge-pill badge-warning float-right">Xem
							tất cả</span>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-success">
								<i class="mdi mdi-alert-circle-outline mx-0"></i>
							</div>
						</div>
						<div class="preview-item-content">
							<h6 class="preview-subject font-weight-medium text-dark">Báo
								lỗi</h6>
							<p class="font-weight-light small-text">vừa xong</p>
						</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-warning">
								<i class="mdi mdi-comment-text-outline mx-0"></i>
							</div>
						</div>
						<div class="preview-item-content">
							<h6 class="preview-subject font-weight-medium text-dark">Cài
								đặt</h6>
							<p class="font-weight-light small-text">Tin nhắn riêng tư</p>
						</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item preview-item">
						<div class="preview-thumbnail">
							<div class="preview-icon bg-info">
								<i class="mdi mdi-email-outline mx-0"></i>
							</div>
						</div>
						<div class="preview-item-content">
							<h6 class="preview-subject font-weight-medium text-dark">Thành
								viên đăng ký mới</h6>
							<p class="font-weight-light small-text">2 ngày trước</p>
						</div>
					</a>
				</div></li> -->
			<!-- Thông tin user admin -->
			<li class="nav-item dropdown d-none d-xl-inline-block"><a
				class="nav-link dropdown-toggle" id="UserDropdown" href="#"
				data-toggle="dropdown" aria-expanded="false"> <span
					class="profile-text">Xin chào <%
 	String nameH = (String) session.getAttribute("actionSession");

 	out.println(nameH);
 %>!
				</span> <img class="img-xs rounded-circle" src="${pageContext.request.contextPath}/admin/images/faces/face1.jpg"
					alt="Profile image">
			</a>
				<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
					aria-labelledby="UserDropdown">
					<a class="dropdown-item p-0">
						<!-- <div class="d-flex border-bottom">
							<div
								class="py-3 px-4 d-flex align-items-center justify-content-center">
								<i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
							</div>
							<div
								class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
								<i class="mdi mdi-account-outline mr-0 text-gray"></i>
							</div>
							<div
								class="py-3 px-4 d-flex align-items-center justify-content-center">
								<i class="mdi mdi-alarm-check mr-0 text-gray"></i>
							</div>
						</div> -->
					</a> <a class="dropdown-item mt-2"> Thông tin tài khoản </a> 
					<a class="dropdown-item " href="${pageContext.request.contextPath}/admin/pages/ChangePassword.jsp"> Đổi mật khẩu </a> 
					<a class="dropdown-item">Tin nhắn </a> 
					<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/login.jsp"> Đăng xuất</a>
				</div></li>
		</ul>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
</nav>