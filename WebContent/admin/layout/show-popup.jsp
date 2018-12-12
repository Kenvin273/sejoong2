<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="popup-wrap">
	<div class="popup-box">
		<form>
			<h2>Title of Popup</h2>
			<h3>A sub-heading for the popup with a little description.</h3>
			<a class="close-btn popup-close" href="#">x</a> <input type="text"
				name="id">
		</form>
	</div>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('.popup-btn').click(
						function(e) {
							$('.popup-wrap').fadeIn(500);
							$('.popup-box').removeClass('transform-out')
									.addClass('transform-in');

							e.preventDefault();
						});

				$('.popup-close').click(
						function(e) {
							$('.popup-wrap').fadeOut(500);
							$('.popup-box').removeClass('transform-in')
									.addClass('transform-out');

							e.preventDefault();
						});
			});
</script>
<style>
.popup-wrap {
	width: 100%;
	height: 100%;
	display: none;
	position: absolute;
	top: 0px;
	left: 0px;
	content: '';
	background: rgba(0, 0, 0, 0.85);
}

.popup-box {
	width: 400px;
	padding: 70px;
	transform: translate(-50%, -50%) scale(0.5);
	position: absolute;
	top: 50%;
	left: 50%;
	box-shadow: 0px 2px 16px rgba(0, 0, 0, 0.5);
	border-radius: 3px;
	background: #fff;
	text-align: center;
	h2
	{
	color
	:
	#1a1a1a;
}

h3 {
	color: #888;
}

.close-btn {
	width: 35px;
	height: 35px;
	display: inline-block;
	position: absolute;
	top: 10px;
	right: 10px;
	-webkit-transition: all ease 0.5s;
	transition: all ease 0.5s;
	border-radius: 1000px;
	background: #d75f70;
	font-weight: bold;
	text-decoration: none;
	color: #fff;
	line-height: 190%; &: hover { -webkit-transform : rotate( 180deg);
	transform: rotate(180deg);
}

}
}
.transform-in, .transform-out {
	display: block;
	-webkit-transition: all ease 0.5s;
	transition: all ease 0.5s;
}

.transform-in {
	-webkit-transform: translate(-50%, -50%) scale(1);
	transform: translate(-50%, -50%) scale(1);
}

.transform-out {
	-webkit-transform: translate(-50%, -50%) scale(0.5);
	transform: translate(-50%, -50%) scale(0.5);
}
</style>