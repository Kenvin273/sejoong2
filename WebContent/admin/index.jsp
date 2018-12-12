<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@include file="layout/content-header.jsp"%>
</head>

<body>

	<%
		if (session == null
				|| session.getAttribute("actionSession") == null) {
	%>
	<jsp:include page="login.jsp"></jsp:include>
	<%
		} else {
	%>
	<jsp:include page="layout/layout-main.jsp"></jsp:include>


	<%
		}
	%>
</body>

</html>