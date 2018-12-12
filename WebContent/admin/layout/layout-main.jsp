<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="container-scroller">
	<!-- partial:partials/_navbar.html -->
	<%@include file="menu-header.jsp"%>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">

		<!-- Menu dọc hiển thị nội dung chính -->
		<%@include file="menu-vertical.jsp"%>
		<!-- partial -->
		<div class="main-panel">
			
			<%
			if (request.getAttribute("news") == null) {
				if(request.getAttribute("eventaction")== null){
		%>
		<%@include file="content-main.jsp"%>
		<% }else {
				String eventaction = (String) request.getAttribute("eventaction");
				System.out.print(eventaction);
				String layoutPath = "../layout/" + eventaction + ".jsp";
			%>
			<jsp:include page="<%=layoutPath%>"></jsp:include>
		<%
				}
			} else {
		%>
		<%
		System.out.println("news not null");
			String p = (String) request.getAttribute("news");
					String pagePath = "../pages/" + p + ".jsp";
					System.out.print(pagePath);	
		%>
	
		<jsp:include page="<%=pagePath%>"></jsp:include>
		<%
			}
		%>
			<!-- content-wrapper ends -->
			<!-- partial:partials/_footer.html -->
			<%@include file="content-footer.jsp"%>
			

			<!-- partial -->
		</div>
		<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
