<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		<li class="nav-item nav-profile">
			<div class="nav-link">
				<div class="user-wrapper">
					<div class="profile-image">
						<img
							src="${pageContext.request.contextPath}/admin/images/faces/face1.jpg"
							alt="profile image">
					</div>
					<div class="text-wrapper">
						<p class="profile-name">
							<%
								String name = (String) session.getAttribute("actionSession");

								out.println(name);
							%>
						</p>
						<div>
							<small class="designation text-muted">Quản lý</small> <span
								class="status-indicator online"></span>
						</div>
					</div>
				</div>
				<form action="">
					<button class="btn btn-success btn-block" type="submit" value="register" name ="type"
						formaction="${pageContext.request.contextPath}/Pages">
						Thêm nhân viên mới <i class="mdi mdi-plus"></i>
						

					</button>
				</form>
			</div>
		</li>
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/admin/"> <i
				class="menu-icon mdi mdi-television"></i> <span class="menu-title">Tổng
					quan</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				<i class="menu-icon mdi mdi-content-copy"></i> <span
				class="menu-title">Danh mục</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/Pages?type=news">Tin
							tức</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/Pages?type=event">Sự
							kiện</a></li>

					<li class="nav-item"><a class="nav-link" href="#">Du học
							hàn quốc</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/Pages?type=servies">Dịch
							vụ</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/Pages?type=introduce">Giới
							thiệu</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/Pages?type=feedback">Feedback
					</a></li>
				</ul>
			</div></li>

		<!-- <li class="nav-item"><a class="nav-link"
			href="#"> <i
				class="menu-icon mdi mdi-backup-restore"></i> <span
				class="menu-title">Danh sách đăng ký</span>
		</a></li> -->
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Pages?type=statistical"> <i
				class="menu-icon mdi mdi-chart-line"></i> <span class="menu-title">Thống
					kê</span>
		</a></li>
	
		<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/Pages?type=list-contact"> <i
					class="menu-icon mdi mdi-table"></i> <span class="menu-title">Danh
						sách đăng ký</span>
				</a>
			</li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Pages?type=partner"> <i
				class="menu-icon mdi mdi-sticker"></i> <span class="menu-title">Đối
					tác</span>
		</a></li>
		<!-- <li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#auth" aria-expanded="false" aria-controls="auth"> <i
				class="menu-icon mdi mdi-restart"></i> <span class="menu-title">User
					Pages</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="auth">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/blank-page.html"> Blank Page </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/login.html"> Login </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/register.html"> Register </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-404.html"> 404 </a></li>
					<li class="nav-item"><a class="nav-link"
						href="pages/samples/error-500.html"> 500 </a></li>
				</ul>
			</div></li> -->
	</ul>
</nav>