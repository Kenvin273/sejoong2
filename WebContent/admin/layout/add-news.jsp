<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/library/ckeditor/ckeditor.js"></script>

</head>
<body>
	<form action="getContent" method="get" style="padding: 30px;">
		<h2 class="text-center mb-4">Bài viết mới</h2>
		<div class="form-group">
			<h5>Tiêu đề</h5>
			<div class="input-group">

				<input type="text" class="form-control" placeholder="Title news"
					name="title">

			</div>
		</div>
		<div class="form-group">
			<h5>SEO</h5>
			<div class="input-group">

				<input type="text" class="form-control" placeholder="Keyword Seo" name="seo">

			</div>
		</div>
		<div class="form-group">
			<h5>Ảnh bìa</h5>
			<div class="form-group">
				
				<div class="input-group col-xs-12">
					
						<input class="file-upload-browse btn btn-info" value="Tải lên" type="file" >
					</span>
				</div>
			</div>
		</div>
		<div class="form-group">
			<h5>Nội dung bài viết</h5>
			<textarea cols="80" id="editor" name="editor" rows="10"
				name="content"></textarea>
		</div>

		 <button type="submit" class="btn btn-success mr-2">Đăng bài viết</button>
	</form>
	<script>
		CKEDITOR.replace('editor');
	</script>
</body>
</html>