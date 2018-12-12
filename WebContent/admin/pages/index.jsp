<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@include file="../layout/content-header.jsp"%>
</head>

<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<%@include file="../layout/menu-header.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">

			<!-- Menu dọc hiển thị nội dung chính -->
			<%@include file="../layout/menu-vertical.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				
				

				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<%@include file="../layout/content-footer.jsp"%>


				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>

</body>

</html>



