<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"  %> 

<%@page import="java.util.ArrayList"%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tuvi.utils.DBConnection"%>
<%@page import="com.tuvi.utils.DBUtil"%>
<%@page import="com.tuvi.dao.Event"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
<html lang="vi" dir="ltr"
	prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# book: http://ogp.me/ns/book# profile: http://ogp.me/ns/profile# video: http://ogp.me/ns/video# product: http://ogp.me/ns/product# content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema# owl: http://www.w3.org/2002/07/owl# rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns# rss: http://purl.org/rss/1.0/ site: http://vnis.edu.vn/vi/ns#">

<!-- Mirrored from vnis.edu.vn/vi/su-kien-da-dien-ra by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Nov 2018 18:52:23 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<head profile="http://www.w3.org/1999/xhtml/vocab">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--[if IE]><![endif]-->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="International Education Solution Provider in Vietnam | Education Fairs | Services for Schools in the U.S. and other countries." />
<meta name="news_keywords"
	content="SEJOONG vietnam,vietnamese student recruitment" />
<meta name="rating" content="general" />
<meta name="generator" content="Drupal 7 (http://drupal.org)" />
<link rel="canonical" href="su-kien-sap-toi.html" />
<link rel="shortlink" href="su-kien-sap-toi.html" />
<%@include file="layouts/header-script.jsp" %>

<title>Sự kiện sắp tới | SEJOONG VIỆT NAM®</title>

<!--<link href="https://fonts.googleapis.com/css?family=Fira+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=vietnamese" rel="stylesheet">-->
</head>
<body
	class="html not-front not-logged-in one-sidebar sidebar-first page-su-kien-sap-toi i18n-vi">
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5LFBZ8M"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- Global site tag (gtag.js) - Google Ads: 1003099810 -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=AW-1003099810"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'AW-1003099810');
	</script>
	<div id="skip-link">
		<a href="#main-content" class="element-invisible element-focusable">Skip
			to main content</a>
	</div>
	<div class="header-warpper">
		<div class="header-banner"></div>
		<div class="header-top">
			<div class="container">
				<div class="hotline col-xs-12 col-sm-3 col-lg-6">Hotline: 097
					565 6406</div>
				<div class="social col-xs-12 col-sm-9 col-lg-6">
					<form action="http://vnis.edu.vn/vi/tim-kiem" method="get"
						id="views-exposed-form-search-index-page" accept-charset="UTF-8">
						<div>
							<div class="views-exposed-form">
								<div class="views-exposed-widgets clearfix">
									<div id="edit-tu-khoa-wrapper"
										class="views-exposed-widget views-widget-filter-search_api_views_fulltext">
										<div class="views-widget">
											<div
												class="form-item form-item-tu-khoa form-type-textfield form-group">
												<input placeholder="Tìm kiếm" class="form-control form-text"
													type="text" id="edit-tu-khoa" name="tu-khoa" value=""
													size="30" maxlength="128" />
											</div>
										</div>
									</div>
									<div class="views-exposed-widget views-submit-button">
										<button type="submit" id="edit-submit-search-index" name=""
											value="Apply" class="btn btn-info form-submit">Apply</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<div class="list-social">
						<a href="thu-vien-anh.html" class="text-link">Thư viện ảnh</a><a
							href="video.html" class="text-link video">Video</a><a
							href="https://www.facebook.com/vnis.vietnam" class="facebook"><i
							class="fa fa-facebook"></i></a><a
							href="https://twitter.com/VNISVietnam" class="twitter"><i
							class="fa fa-twitter"></i></a><a
							href="https://plus.google.com/u/0/+VNISVietnam" class="google"><i
							class="fa fa-google-plus"></i></a><a
							href="https://www.youtube.com/user/VNISVietnam" class="youtube"><i
							class="fa fa-youtube"></i></a>
					</div>
					<ul class="language-switcher-locale-url">
						<li class="vi first active"><a href="su-kien-da-dien-ra.html"
							class="language-link active" xml:lang="vi"><img
								class="language-icon img-responsive" typeof="foaf:Image"
								src="../sites/all/modules/contrib/languageicons/flags/vi.png"
								width="16" height="12" alt="Tiếng Việt" title="Tiếng Việt" /></a></li>
						<li class="en last"><a href="../en/events-took-place.html"
							class="language-link" xml:lang="en"><img
								class="language-icon img-responsive" typeof="foaf:Image"
								src="../sites/all/modules/contrib/languageicons/flags/en.png"
								width="16" height="12" alt="English" title="English" /></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="heder-logo">
			<div class="container">
				<div class="header-left col-xs-12 col-sm-8 col-lg-10">
					<div class="row">
						<div class="logo-warpper col-xs-12 col-sm-3 col-lg-3">
							<a class="logo navbar-btn pull-left" href="../vi.html"
								title="Trang chủ"> <img
								src="../sites/default/files/site_logo_custom/vnis_edu_vn.png"
								alt="Trang chủ" />
							</a>
						</div>
						<div class="logo-text col-xs-12 col-sm-9 col-lg-9">
							<span>CÔNG TY TƯ VẤN DU HỌC VNIS EDUCATION®</span><span>Tư
								vấn Du học Mỹ, Canada, Úc, Anh</span>
						</div>
					</div>
				</div>
				<div class="header-right col-xs-12 col-sm-4 col-lg-2">
					<div class="img-home">
						<img class="menu-img" alt="image"
							src="../sites/default/files/2logo1.jpg" />
					</div>
				</div>
			</div>
		</div>
		<div class="navbar-menu">
			<div class="container">
				<button type="button" class="navbar-toggle navbar-toggle-mobile"
					data-toggle="collapse" data-target=".navbar-mobile-collapse">
					<div class="text-menu">Menu</div>
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="navbar-collapse navbar-mobile-collapse collapse">
					<nav role="navigation">
					<ul class="menu nav navbar-nav">
						<li class="first leaf"><a href="../vi.html" title="">Trang
								chủ</a></li>
						<li class="expanded expanded"><a href="gioi-thieu-chung.html"
							title="">Giới thiệu</a>
						<ul class="sub-menu">
								<li class="first leaf"><a
									href="gioi-thieu/ve-chung-toi.html" title="Về chúng tôi">Về
										chúng tôi</a></li>
								<li class="leaf"><a href="gioi-thieu/tam-nhin-su-menh.html"
									title="Tầm nhìn và Sứ mệnh">Tầm nhìn và Sứ mệnh</a></li>
								<li class="leaf"><a href="gioi-thieu/cac-dich-vu.html"
									title="Các Dịch vụ">Các Dịch vụ</a></li>
								<li class="leaf"><a
									href="gioi-thieu/uu-tien-chien-luoc.html"
									title="Ưu tiên Chiến lược">Ưu tiên Chiến lược</a></li>
								<li class="leaf"><a href="gioi-thieu/doi-ngu-quan-ly.html"
									title="Đội ngũ Quản lý">Đội ngũ Quản lý</a></li>
								<li class="leaf"><a href="gioi-thieu/doi-ngu-co-van.html"
									title="Đội ngũ Cố vấn">Đội ngũ Cố vấn</a></li>
								<li class="leaf"><a
									href="gioi-thieu/chuong-trinh-doi-tac-tuyen-sinh.html"
									title="Chương trình Đối tác Tuyển sinh (RAP)">Chương trình
										Đối tác Tuyển sinh (RAP)</a></li>
								<li class="last leaf"><a href="tuyen-dung.html">Tuyển
										dụng</a></li>
							</ul></li>
						<li class="expanded expanded"><a href="du-hoc-my.html"
							title="">Quốc gia du học</a>
						<ul class="sub-menu">
								<li class="first expanded expanded"><a
									href="du-hoc-my.html" title="Mỹ">Mỹ</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="du-hoc-my/hoc-tap-tai-50-bang-cua-my.html">Học tập
												tại 50 bang của Mỹ</a></li>
										<li class="leaf"><a href="du-hoc-my/tuyen-sinh.html">Tuyển
												sinh</a></li>
										<li class="leaf"><a
											href="du-hoc-my/hoc-bong-du-hoc-my.html">Học bổng</a></li>
										<li class="leaf"><a
											href="du-hoc-my/huong-dan-nop-don.html">Hướng dẫn Nộp đơn</a></li>
										<li class="leaf"><a
											href="du-hoc-my/chuong-trinh-trai-he.html">Chương trình
												Trại hè</a></li>
										<li class="leaf"><a href="du-hoc-my/kinh-nghiem.html">Kinh
												nghiệm</a></li>
										<li class="leaf"><a href="du-hoc-my/tin-tuc.html">Tin
												tức</a></li>
										<li class="last leaf"><a href="du-hoc-my/su-kien.html">Sự
												kiện</a></li>
									</ul></li>
								<li class="expanded expanded"><a href="du-hoc-anh.html"
									title="Anh">Anh</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="du-hoc-anh/tuyen-sinh.html">Tuyển sinh</a></li>
										<li class="leaf"><a
											href="du-hoc-anh/hoc-bong-du-hoc-anh.html">Học bổng</a></li>
										<li class="leaf"><a
											href="du-hoc-anh/huong-dan-nop-don.html">Hướng dẫn Nộp
												đơn</a></li>
										<li class="leaf"><a
											href="du-hoc-anh/chuong-trinh-trai-he.html">Chương trình
												Trại hè</a></li>
										<li class="leaf"><a href="du-hoc-anh/kinh-nghiem.html">Kinh
												nghiệm</a></li>
										<li class="leaf"><a href="du-hoc-anh/tin-tuc.html">Tin
												tức</a></li>
										<li class="last leaf"><a href="du-hoc-anh/su-kien.html">Sự
												kiện</a></li>
									</ul></li>
								<li class="expanded expanded"><a href="du-hoc-canada.html"
									title="Canada">Canada</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="du-hoc-canada/hoc-tap-tai-cac-tinh-bang-o-canada.html">Học
												tập tại các tỉnh bang ở Canada</a></li>
										<li class="leaf"><a href="du-hoc-canada/tuyen-sinh.html">Tuyển
												sinh</a></li>
										<li class="leaf"><a
											href="du-hoc-canada/hoc-bong-du-hoc-canada.html">Học bổng</a></li>
										<li class="leaf"><a
											href="du-hoc-canada/huong-dan-nop-don.html">Hướng dẫn Nộp
												đơn</a></li>
										<li class="leaf"><a
											href="du-hoc-canada/chuong-trinh-trai-he.html">Chương
												trình Trại hè</a></li>
										<li class="leaf"><a href="du-hoc-canada/kinh-nghiem.html">Kinh
												nghiệm</a></li>
										<li class="leaf"><a href="du-hoc-canada/tin-tuc.html">Tin
												tức</a></li>
										<li class="last leaf"><a
											href="du-hoc-canada/su-kien.html">Sự kiện</a></li>
									</ul></li>
								<li class="last leaf"><a href="quoc-gia/58.html" title="Úc">Úc</a></li>
							</ul></li>
						<li class="expanded expanded"><a href="danh-sach-truong.html">Các
								trường đối tác</a>
						<ul class="sub-menu">
								<li class="first expanded expanded"><a
									href="danh-sach-truong3563.html?quoc-gia%5B%5D=7">Mỹ</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="danh-sach-truong4598.html?quoc-gia%5B%5D=7&amp;loai-truong%5B0%5D=10&amp;loai-truong%5B1%5D=11">Các
												trường Trung học tại Mỹ</a></li>
										<li class="leaf"><a
											href="danh-sach-truong59fc.html?quoc-gia%5B%5D=7&amp;loai-truong%5B%5D=27">Các
												trường Cao đẳng tại Mỹ</a></li>
										<li class="leaf"><a
											href="danh-sach-truonge5f1.html?quoc-gia%5B%5D=7&amp;loai-truong%5B%5D=28">Các
												trường Đại học tại Mỹ</a></li>
										<li class="last leaf"><a
											href="danh-sach-truong1ec4.html?quoc-gia%5B%5D=7&amp;loai-truong%5B%5D=29">Các
												trung tâm tiếng Anh tại Mỹ</a></li>
									</ul></li>
								<li class="expanded expanded"><a
									href="danh-sach-truong7bdf.html?quoc-gia%5B%5D=8">Anh</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="danh-sach-truonge1c1.html?quoc-gia%5B%5D=8&amp;loai-truong%5B0%5D=10&amp;loai-truong%5B1%5D=11">Các
												trường Trung học tại Anh</a></li>
										<li class="leaf"><a
											href="danh-sach-truong6247.html?quoc-gia%5B%5D=8&amp;loai-truong%5B%5D=26">Các
												trường Cao đẳng tại Anh</a></li>
										<li class="leaf"><a
											href="danh-sach-truong27d5.html?quoc-gia%5B%5D=8&amp;loai-truong%5B%5D=28">Các
												trường Đại học tại Anh</a></li>
										<li class="last leaf"><a
											href="danh-sach-truongfd74.html?quoc-gia%5B%5D=8&amp;loai-truong%5B%5D=29">Các
												trung tâm tiếng Anh tại Anh</a></li>
									</ul></li>
								<li class="expanded expanded"><a
									href="danh-sach-truong4b46.html?quoc-gia%5B%5D=9">Canada</a>
								<ul class="sub-menu">
										<li class="first leaf"><a
											href="danh-sach-truongf7ce.html?quoc-gia%5B%5D=9&amp;loai-truong%5B0%5D=10&amp;loai-truong%5B1%5D=11">Các
												trường Trung học tại Canada</a></li>
										<li class="leaf"><a
											href="danh-sach-truonge6b6.html?quoc-gia%5B%5D=9&amp;loai-truong%5B%5D=26">Các
												trường Cao đẳng tại Canada</a></li>
										<li class="leaf"><a
											href="danh-sach-truong939e.html?quoc-gia%5B%5D=9&amp;loai-truong%5B%5D=28">Các
												trường Đại học tại Canada</a></li>
										<li class="last leaf"><a
											href="danh-sach-truongf165.html?quoc-gia%5B%5D=9&amp;loai-truong%5B%5D=29">Các
												trung tâm tiếng Anh tại Canada</a></li>
									</ul></li>
								<li class="last leaf"><a href="dang-ky-tu-van-du-hoc.html">Đăng
										ký Tư vấn Du học</a></li>
							</ul></li>
						<li class="expanded expanded"><a href="tin-tuc.html"
							class="menu-none-click">Tin tức - sự kiện</a>
						<ul class="sub-menu">
								<li class="first leaf"><a href="tin-tuc.html" title="">Tin
										tức</a></li>
								<li class="leaf"><a href="su-kien-sap-toi.html" title="">Sự
										kiện</a></li>
								<li class="leaf"><a
									href="tin-tuc/cau-chuyen-thanh-cong.html" title="">Câu
										chuyện thành công</a></li>
								<li class="last leaf"><a href="tuyen-dung.html">Tuyển
										dụng</a></li>
							</ul></li>
						<li class="expanded expanded"><a
							href="dich-vu-cho-doi-tac.html">Các dịch vụ</a>
						<ul class="sub-menu">
								<li class="first leaf"><a href="dich-vu-tu-van-du-hoc.html">Dịch
										vụ Tư vấn Du học</a></li>
								<li class="leaf"><a
									href="dich-vu-visa-du-lich-tham-than.html">Dịch vụ Visa Du
										lịch/Thăm thân</a></li>
								<li class="leaf"><a href="http://cleveracademy.vn/">Đào
										tạo Anh ngữ</a></li>
								<li class="leaf"><a href="vnis-scholars.html">VNIS
										Scholars - Chương trình Săn Học bổng và Nhập học Đại học Mỹ</a></li>
								<li class="leaf"><a href="dich-vu-cho-doi-tac.html">Dịch
										vụ cho đối tác</a></li>
								<li class="last leaf mi-fairs"><a href="fairs/43.html">Fairs</a></li>
							</ul></li>
						<li class="last leaf"><a href="contact.html" title="">Liên
								hệ</a></li>
					</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="content-top">
		<div class="container breadcrumb-top">
			<ol class="breadcrumb">
				<li><a href="../vi.html">Trang chủ</a></li>
				<li>Tin tức - sự kiện</li>
				<li>Sự kiện</li>
			</ol>
		</div>
		<div class="container">
			<h1 class="page-header title-top">Sự kiện sắp tới</h1>
		</div>
		<div class="br-slide">
			<div
				class="view view-admin-banner view-id-admin_banner view-display-id-block_2 views-block-baner-page view-dom-id-e913f3aeb3564072bcf3def3d8314907">
				<div class="view-content">
					<div id="views-bootstrap-grid-3"
						class="views-bootstrap-grid-plugin-style">
						<div class="row">
							<div class="col col-xs-12 col-lg-12">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<img typeof="foaf:Image" class="img-responsive"
											src="../sites/default/files/image/banner/trang-trong-v1.png"
											width="2000" height="163" alt="" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="main-container container">
		<div class="row">
			<aside class="col-sm-3" role="complementary">
			<div class="region region-sidebar-first well">
				<section id="block-liva-vnis-menu-left-su-kien"
					class="block block-liva-vnis block-danh-muc-left clearfix">
				<div class="block-title">Danh mục</div>
				<ul>
					<li><a href="su-kien-sap-toi.html">Sự kiện sắp tới</a></li>
					<li><a href="su-kien-da-dien-ra.html" class="active">Sự
							kiện đã diễn ra</a></li>
				</ul>
				</section>
				<section id="block-views-admin-banner-sidebar-block-1"
					class="block block-views clearfix">
				<div
					class="view view-admin-banner-sidebar view-id-admin_banner_sidebar view-display-id-block_1 view-dom-id-92d32fa25a126cd43756a03ba14b5c13">
					<div class="view-content">
						<div id="views-bootstrap-grid-2"
							class="views-bootstrap-grid-plugin-style">
							<div class="row">
								<div class="col col-xs-12 col-lg-12">
									<div class="views-field views-field-field-image">
										<div class="field-content">
											<a href="su-kien/trien-lam-du-hoc-my-canada-thu-2018.html"
												target="_blank"><img typeof="foaf:Image"
												class="img-responsive"
												src="../sites/default/files/styles/800x600/public/image/banner/postfb_2000x2000pxb644.png?itok=CJT6CllI"
												alt="" /></a>
										</div>
									</div>
								</div>
								<div class="col col-xs-12 col-lg-12">
									<div class="views-field views-field-field-image">
										<div class="field-content">
											<a href="https://vnisgroup.com/" target="_blank"><img
												typeof="foaf:Image" class="img-responsive"
												src="../sites/default/files/styles/800x600/public/image/banner/vnisgroup-findout3c83.png?itok=MEryvrDE"
												alt="" /></a>
										</div>
									</div>
								</div>
								<div class="col col-xs-12 col-lg-12">
									<div class="views-field views-field-field-image">
										<div class="field-content">
											<a href="tin-tuc/vnis-scholars-nov-2017.html" target="_blank"><img
												typeof="foaf:Image" class="img-responsive"
												src="../sites/default/files/styles/800x600/public/image/banner/1000x1000-newc410.png?itok=CBQJ9fl7"
												alt="" /></a>
										</div>
									</div>
								</div>
								<div class="col col-xs-12 col-lg-12">
									<div class="views-field views-field-field-image">
										<div class="field-content">
											<a href="tin-tuc/hoc-sat-gmat-truc-tuyen-o-dau.html"
												target="_blank"><img typeof="foaf:Image"
												class="img-responsive"
												src="../sites/default/files/styles/800x600/public/image/banner/sat_online449d.jpg?itok=O2BG8jt4"
												alt="" /></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>
			</div>
			</aside>
			<section class="col-sm-9">
			<div class="">
				<div class="region region-content">
					<section id="block-system-main" class="block block-system clearfix">
					<div
						class="view view-admin-su-kien view-id-admin_su_kien view-display-id-page_4 block-view-su-kien-country list-su-kien view-dom-id-ee766dc0475ad709dc5983c83870c818">
						<div class="view-content">
							<div id="views-bootstrap-grid-1"
								class="views-bootstrap-grid-plugin-style">
								<div class="row">
									<!--  --------------------------------------------------     -->
									<%
									int pages = 0, firstResult = 0, maxResult = 0, total = 0;
						            if (request.getParameter("pages") != null) {
						                pages = (int) Integer.parseInt(request.getParameter("pages"));
						            }
						            ArrayList<Event> listEvent = (ArrayList<Event>) DBUtil
											.queryEvent(DBConnection.getMySQLConnection());
						            total = listEvent.size();
						            if (total <= 8) {
						                firstResult = 1;
						                maxResult = total;
						            }else{
						                firstResult = pages  * 8;
						                maxResult = 8;
						            }
						try {
							ArrayList<Event> list = (ArrayList<Event>) DBUtil
									.queryEventTookPlace(DBConnection.getMySQLConnection(), firstResult, maxResult);
							
							if (list.size() > 0) {
								int i = 1;
								for (Event ev : list) {
									try {
										Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(ev.getTimePlace().toString());
										String timePlace = new SimpleDateFormat("HH:mm").format(date);
										String dayPlace = new SimpleDateFormat("dd").format(date);
										String monthPlace = new SimpleDateFormat("MM").format(date);
					%>
									<div class="col col-xs-12 col-lg-12">
										<div class="views-field views-field-field-thoi-gian">
											<div class="field-content">
												<div class="bg_calandar">
													<span class="times"> <%out.print(timePlace); %></span><span class="day">
														<span><%out.print(dayPlace); %></span> <span class="month">tháng <span
															ng-bind="item.location[1].month"><%out.print(monthPlace); %></span>
													</span>
													</span>
												</div>
											</div>
										</div>
										<div class="views-field views-field-title">
											<span class="field-content"><a
												href="su-kien/gap-go-dai-dien-truong-the-northwest-school.html"><%out.print(ev.getTitle().toString()); %></a></span>
										</div>
										<div class="views-field views-field-created">
											<span class="field-content"><%out.print(ev.getTimeCreated().toString()); %></span>
										</div>
										<div class="views-field views-field-field-mo-ta">
											<div class="field-content">
												<p><%out.print(ev.getContent().toString()); %></p>
											</div>
										</div>
									</div>
									
									<%
						/* 	System.out.println(adminAccount.getUserId());
											System.out.println(adminAccount.getUserName());
											System.out.println(adminAccount.getPassword());
											System.out.println(adminAccount.getPermission());
										 */
									} catch (Exception e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
										continue;
									}
									// out.print(json.toString());
								}
							}
						} catch (ClassNotFoundException | SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							out.print(-1);
						}
					%>
									<!-- ---------------------------------------------------- -->
									
								</div>
							</div>
						</div>
						<div class="text-center">
							<ul class="pagination">
								<li class="active"><span>1</span></li>
								<%for(int i=1;i<=(total/8)+1;i++){%>
                        <li class="arrow"><a href="su-kien-da-dien-ra.jsp?pages=<%=i%>"><%=i+1%></a></li>
                    <%}%>
								<!-- <li><a title="Go to page 2"
									href="su-kien-da-dien-ra.jsp?page=1">2</a></li>
								<li><a title="Go to page 3"
									href="su-kien-da-dien-ra.jsp?page=2">3</a></li>
								<li><a title="Go to page 4"
									href="su-kien-da-dien-ra.jsp?page=3">4</a></li>
								<li><a title="Go to page 5"
									href="su-kien-da-dien-rafdb0.html?page=4">5</a></li>
								<li><a title="Go to page 6"
									href="su-kien-da-dien-raaf4d.html?page=5">6</a></li>
								<li><a title="Go to page 7"
									href="su-kien-da-dien-rac575.html?page=6">7</a></li>
								<li><a title="Go to page 8"
									href="su-kien-da-dien-ra235c.html?page=7">8</a></li>
								<li><a title="Go to page 9"
									href="su-kien-da-dien-rafdfa.html?page=8">9</a></li> -->
								<li class="pager-ellipsis disabled"><span>…</span></li>
								<li class="next"><a title="Go to next page"
									href="su-kien-da-dien-ra2679.html?page=1">next ›</a></li>
								<li class="pager-last"><a title="Go to last page"
									href="su-kien-da-dien-ra5760.html?page=15">last »</a></li>
							</ul>	
						</div>
					</div>
					</section>
				</div>
			</div>
			</section>
		</div>
	</div>
	<%@include file="layouts/view-footer.jsp" %>
	
</body>

<!-- Mirrored from vnis.edu.vn/vi/su-kien-da-dien-ra by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Nov 2018 18:52:34 GMT -->
</html>