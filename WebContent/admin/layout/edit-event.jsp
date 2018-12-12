<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/library/ckeditor/ckeditor.js"></script>

</head>
<body>
	<form action="${pageContext.request.contextPath}/CRUDEvent" method="post" style="padding: 30px;">
	<input type="hidden"  value="2" name="type" >
		<input type="hidden" name="eventId"  value="<% out.print(request.getAttribute("id").toString());%>">
	
		<h2 class="text-center mb-4">Cập nhật sự kiện</h2>
		<div class="form-group">
			<h5>Tiêu đề</h5>
			<div class="input-group">

				<input type="text" class="form-control" placeholder="Title news" value="<%out.print(request.getAttribute("title").toString()); %>"
					name="edit-event-title">

			</div>
			
		</div>
		<div class="form-group">
			<h5>SEO</h5>
			<div class="input-group">

				<input type="text" class="form-control" placeholder="Keyword Seo" name="edit-event-seo" value="<%out.print(request.getAttribute("seo").toString()); %>">

			</div>
		</div>
		<div class="form-group">
			<h5>Ngày diễn ra</h5>
			<div class="form-group">
					
				<div class="input-group col-xs-12">
					
					<input type="date" value="2019-01-01"   name="timePlace" >
					<input type="time" value="10:11:00" name="timePlaceOclock">
				</div>
			</div>
		</div>
		<div class="form-group">
			<h5>Nội dung sự kiện</h5>
			<textarea cols="80" id="editor" name="edit-event-content" rows="10" 
				> <%out.print(request.getAttribute("content").toString()); %></textarea>
		</div>

		 <button type="submit" class="btn btn-success mr-2">Cập nhật sự kiện</button>
	</form>
	<script>
		CKEDITOR.replace('editor');
	</script>
</body>
</html>