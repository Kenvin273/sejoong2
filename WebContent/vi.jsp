<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN"
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">
  
  <%@include file="layout-control/include-script.jsp" %>
<html lang="vi" dir="ltr"
	prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article# book: http://ogp.me/ns/book# profile: http://ogp.me/ns/profile# video: http://ogp.me/ns/video# product: http://ogp.me/ns/product# content: http://purl.org/rss/1.0/modules/content/ dc: http://purl.org/dc/terms/ foaf: http://xmlns.com/foaf/0.1/ rdfs: http://www.w3.org/2000/01/rdf-schema# sioc: http://rdfs.org/sioc/ns# sioct: http://rdfs.org/sioc/types# skos: http://www.w3.org/2004/02/skos/core# xsd: http://www.w3.org/2001/XMLSchema# owl: http://www.w3.org/2002/07/owl# rdf: http://www.w3.org/1999/02/22-rdf-syntax-ns# rss: http://purl.org/rss/1.0/ site: http://SEJOONG.edu.vn/vi/ns#">

<!-- Mirrored from SEJOONG.edu.vn/vi by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Nov 2018 14:37:19 GMT -->
<!-- Added by HTTrack -->


<!--<link href="https://fonts.googleapis.com/css?family=Fira+Sans:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=vietnamese" rel="stylesheet">-->
</head>
<body class="html front not-logged-in no-sidebars page-node i18n-vi">
	<!-- Google Tag Manager (noscript) -->
	
	
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5LFBZ8M"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<h1 class="hide">Tư vấn Du học Hàn quốc</h1>
	
	<!-- include menu  -->
	<%@include file="layout-control/control-menutop.jsp" %>
	<!-- end include menu  -->
	<div class="content-top">
		<div class="br-slide">
			<div class="form-dang-ky">
				<div class="container">
					<div class="form-wrap">
						<div class="form-title">Đăng ký tư vấn</div>
						<div id="webform-ajax-wrapper-117">
							 <form class="webform-client-form webform-client-form-117"
								
								id="webform-client-form-117" accept-charset="UTF-8"> 
								<div>
									<div class="webform-progressbar">
										<div class="webform-progressbar-outer">
											<div class="webform-progressbar-inner" style="width: 0%">&nbsp;</div>
											<span class="webform-progressbar-page current"
												style="left: 0%"> <span
												class="webform-progressbar-page-number">1</span> <span
												class="webform-progressbar-page-label"> Start </span>
											</span> <span class="webform-progressbar-page" style="left: 100%">
												<span class="webform-progressbar-page-number">2</span> <span
												class="webform-progressbar-page-label"> Complete </span>
											</span>
										</div>
									</div>
									<div
										class="form-item webform-component webform-component-textfield webform-component--ho-ten form-group form-item form-item-submitted-ho-ten form-type-textfield form-group">
										<input type="hidden" value="1" name="type" id="type"> 
										<input required="required" placeholder="Họ tên"
											class="form-control form-text required" type="text"
											id="fullName" name="fullName" value=""
											size="60" maxlength="128" /> <label
											class="element-invisible" for="edit-submitted-ho-ten">Họ
											tên <span class="form-required"
											title="This field is required.">*</span>
										</label>.
									</div>
									<div
										class="form-item webform-component webform-component-email webform-component--email form-group form-item form-item-submitted-email form-type-webform-email form-group">
										<input required="required"
											class="email form-control form-text form-email required"
											placeholder="Email" type="email" id="email"
											name="email" size="60" /> <label
											class="element-invisible" for="edit-submitted-email">Email
											<span class="form-required" title="This field is required.">*</span>
										</label>.
									</div>
									<div
										class="form-item webform-component webform-component-textfield webform-component--phone form-group form-item form-item-submitted-phone form-type-textfield form-group">
										<input required="required" placeholder="Số điện thoại"
											class="form-control form-text required" type="text"
											id="phoneNumber" name="phoneNumber" value=""
											size="60" maxlength="128" /> <label
											class="element-invisible" for="edit-submitted-phone">Số
											điện thoại <span class="form-required"
											title="This field is required.">*</span>
										</label>.
									</div>
									<div
										class="form-item webform-component webform-component-select webform-component--country form-group form-item form-item-submitted-country form-type-select form-group">
										<select class="form-control form-select"
											id="subject" name="subject"><option
												value="" selected="selected">Chọn quốc gia</option>
											<option value="KOREA">Hàn Quốc</option>
											<!-- <option value="Anh">Anh</option>
											<option value="Canada">Canada</option>
											<option value="Úc">Úc</option> -->
											<option value="Other">Khác</option></select> <label
											class="element-invisible" for="edit-submitted-country">Quốc
											gia du học </label>.
									</div>
									<div
										class="form-item webform-component webform-component-textarea webform-component--noi-dung form-group form-item form-item-submitted-noi-dung form-type-textarea form-group">
										<div class="form-textarea-wrapper">
											<textarea placeholder="Nội dung"
												class="form-control form-textarea"
												id="content" name="content"
												cols="60" rows="5"></textarea>
										</div>
										<label class="element-invisible" for="edit-submitted-noi-dung">Nội
											dung </label>.
									</div>
									<div
										class="form-item webform-component webform-component-select webform-component--van-phong-tu-van form-group form-item form-item-submitted-van-phong-tu-van form-type-select form-group">
										<select required="required"
											class="form-control form-select required"
											id="location"
											name="location"><option
												value="Hà Nội" selected="selected">Hà Nội</option>
											<!-- <option value="Nha Trang">Nha Trang</option>
											<option value="TP. Hồ Chí Minh">TP. Hồ Chí Minh</option> --></select> <label
											class="element-invisible"
											for="edit-submitted-van-phong-tu-van">Văn phòng Tư
											vấn <span class="form-required"
											title="This field is required.">*</span>
										</label>.
									</div>
									
									<div class="captcha">
										<input type="hidden" name="capchaid" value="943025" /><input
											type="hidden" name="captcha_token"
											value="6Lf7j4EUAAAAAHeo1aOU27nbwZZE5u957P3f5y6d" /><input
											type="hidden" name="captcha_response"
											value="Google no captcha" />
										<div class="g-recaptcha"
											data-sitekey="6Lf7j4EUAAAAAFZ2IwDpls2bFQ6CphjaU2o-JNNL"
											data-theme="light" data-type="image"></div>
									</div>
									<div class="form-actions">
										<button
											class="webform-submit button-primary btn btn-default form-submit"
											type="button" id="submitSentRegistered" name="submitSentRegistered"
											value="Đăng ký">Đăng ký</button>
									</div>
								</div>
							</form> 
						</div>
					</div>
				</div>
			</div>
			<div
				class="view view-admin-banner view-id-admin_banner view-display-id-block_1 view-dom-id-44846b8bb29669d8664680dd3512caf1">
				<div class="view-content">
					<div class="banner-flexslider">
						<ul class="slides">
							<li><a href="vi/gioi-thieu-chung.html" target="_blank">
									<img typeof="foaf:Image" class="img-responsive"
									src="sites/default/files/image/banner/welcome-sejoong.png"
									width="2000" height="500"
									alt="Chào mừng đến với SEJOONG Education"
									title="Chào mừng đến với SEJOONG Education" />
							</a></li>
							<!-- <li><a href="vi/SEJOONG-scholars.html" target="_blank">
									<img typeof="foaf:Image" class="img-responsive"
									src="sites/default/files/image/banner/banner3.png"
									width="2000" height="500" alt="SEJOONG Scholars"
									title="SEJOONG Scholars" />
							</a></li>
							<li><a
								href="http://cleveracademy.vn/tin-tuc/on-thi-sat-act-ssat-gmat-gre-truc-tuyen/"
								target="_blank"> <img typeof="foaf:Image"
									class="img-responsive"
									src="sites/default/files/image/banner/hoc_online.jpg"
									width="2000" height="500" alt="Học online tại CA"
									title="Học online tại CA" />
							</a></li>
							<li><a href="vi/du-hoc-my.html" target="_blank"> <img
									typeof="foaf:Image" class="img-responsive"
									src="sites/default/files/image/banner/banner1.png" width="2000"
									height="500" alt="" />
							</a></li>
							<li><a href="vi/du-hoc-anh.html" target="_blank"> <img
									typeof="foaf:Image" class="img-responsive"
									src="sites/default/files/image/banner/banner2.png" width="2000"
									height="500" alt="" />
							</a></li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container box-news-home">
			<div class="region region-content-top">
				<section id="block-quicktabs-news-home"
					class="block block-quicktabs col-xs-12 col-sm-9 col-lg-9 clearfix">
				<div class="block-title">Tin tức trang chủ</div>
				<div id="quicktabs-news_home"
					class="quicktabs-wrapper quicktabs-style-nostyle">
					<ul class="quicktabs-tabs quicktabs-style-nostyle">
						<li class="active"><a
							href="vi0f6a.html?qt-news_home=0#qt-news_home"
							id="quicktabs-tab-news_home-0"
							class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-views-delta-admin-article-block-1 active">Tin
								tức</a></li>
						<li><a href="vic295.html?qt-news_home=1#qt-news_home"
							id="quicktabs-tab-news_home-1"
							class="quicktabs-tab quicktabs-tab-block quicktabs-tab-block-views-delta-admin-article-block-2 active">Câu
								chuyện thành công</a></li>
					</ul>
					<div id="quicktabs-container-news_home"
						class="quicktabs_main quicktabs-style-nostyle">
						<div id="quicktabs-tabpage-news_home-0" class="quicktabs-tabpage ">
							<section id="block-views-admin-article-block-1"
								class="block block-views clearfix">
							<div
								class="view view-admin-article view-id-admin_article view-display-id-block_1 views-block-news-home view-dom-id-1d3fec6bc28de610caa2a6cc5e68ff8e">
								<div class="view-content">
									<div id="views-bootstrap-grid-1"
										class="views-bootstrap-grid-plugin-style">
										<div class="row">
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a
															href="vi/tin-tuc/hoi-thao-thong-tin-tacoma-community-college-dien-ra-tot-dep.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/fb_ad_-_welcoming5342.jpg?itok=wsrfLI6n"
															alt="Hội thảo thông tin Tacoma CC" /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/tin-tuc/hoi-thao-thong-tin-tacoma-community-college-dien-ra-tot-dep.html">Hội
															thảo Thông tin với Đại diện trường Tacoma Community
															College (Mỹ) đã diễn ra tốt đẹp</a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">Ngày 27/10 vừa qua, tại
														The Coffee House - 259 Kim Mã, Ba Đình, Hà Nội đã diễn ra
														buổi Hội thảo Thông tin với chủ đề "Gặp gỡ Đại diện tới từ
														trường Tacoma Community College - Washington".</span>
												</div>
											</div>
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a
															href="vi/tin-tuc/trien-lam-du-hoc-SEJOONG-thu-2018-dien-ra-thanh-cong.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/185e52.jpg?itok=EzLTnhSJ"
															alt="Chuỗi Triển lãm Du học Quốc tế SEJOONG - Thu 2018 đã diễn ra thành công" /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/tin-tuc/trien-lam-du-hoc-SEJOONG-thu-2018-dien-ra-thanh-cong.html">Chuỗi
															Triển lãm Du học Quốc tế SEJOONG - Thu 2018 đã diễn ra
															thành công</a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">Chuỗi Triển lãm Du học
														Quốc tế SEJOONG - Thu 2018 tại 3 thành phố Hà Nội (ngày
														03/10), Nha Trang (ngày 05/10) và TP. Hồ Chí Minh (ngày
														07/10) đã diễn ra hết sức thành công. Triển lãm lần này có
														sự góp...</span>
												</div>
											</div>
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a href="vi/tin-tuc/ielts-hoi-dong-anh.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/ielts_tang_quacb98.png?itok=o1zzv9Pl"
															alt="Nhận quà tặng độc quyền từ Hội Đồng Anh cho thí sinh đăng ký thi IELTS tại Clever Academy/SEJOONG Education." /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/tin-tuc/ielts-hoi-dong-anh.html">Nhận quà
															tặng độc quyền từ Hội Đồng Anh cho thí sinh đăng ký thi
															IELTS tại Clever Academy/SEJOONG Education</a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">Từ nay tới hết
														15/11/2018, các bạn có thể cầm theo voucher nhận tại Triển
														lãm Du học Quốc tế SEJOONG để đổi ngay bộ quà tặng hấp dẫn
														của Hội Đồng Anh khi đăng ký thi IELTS tại văn phòng
														SEJOONG Education...</span>
												</div>
											</div>
											<div class="clearfix visible-lg-block"></div>
										</div>
									</div>
								</div>
								<div class="view-footer">
									<h3 class="hide">Tin tức</h3>
									<a href="vi/tin-tuc.html">Xem thêm</a>
								</div>
							</div>
							</section>
						</div>
						<div id="quicktabs-tabpage-news_home-1"
							class="quicktabs-tabpage quicktabs-hide">
							<section id="block-views-admin-article-block-2"
								class="block block-views clearfix">
							<div
								class="view view-admin-article view-id-admin_article view-display-id-block_2 views-block-news-home view-dom-id-356857d7e78bdab4b95f37ea72808fdc">
								<div class="view-content">
									<div id="views-bootstrap-grid-2"
										class="views-bootstrap-grid-plugin-style">
										<div class="row">
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a
															href="vi/du-hoc-my/cau-chuyen-thanh-cong/ly-hao-minh-the-northwest-school.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/ly_hao_minh256f.png?itok=ajBxdokY"
															alt="Lý Hạo Minh - The Northwest School " /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/du-hoc-my/cau-chuyen-thanh-cong/ly-hao-minh-the-northwest-school.html">Lý
															Hạo Minh - The Northwest School </a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">Một tin vui nữa lại tới
														với SEJOONG Education, em học sinh lớp 9 Lý Hạo Minh đã
														vừa xuất sắc có visa Du học Mỹ. Minh sẽ theo học cấp 3 tại
														ngôi trường danh giá The Northwest School - trường học
														vinh dự...</span>
												</div>
											</div>
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a
															href="vi/du-hoc-canada/cau-chuyen-thanh-cong/le-quynh-trang.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/lequynhtrang_202cb.png?itok=3sLTnUZt"
															alt="Lê Quỳnh Trang - University of Manitoba " /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/du-hoc-canada/cau-chuyen-thanh-cong/le-quynh-trang.html">Lê
															Quỳnh Trang - University of Manitoba </a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">SEJOONG Education xin
														chúc mừng Lê Quỳnh Trang, học sinh mới nhất đã trúng tuyển
														Đại học tại Canada. Quỳnh Trang sẽ theo học tại University
														of Manitoba - top 20 Đại học tốt nhất Canada vào kì Mùa
														Thu...</span>
												</div>
											</div>
											<div class="col col-xs-12 col-lg-4">
												<div class="views-field views-field-field-image">
													<div class="field-content">
														<a
															href="vi/du-hoc-my/cau-chuyen-thanh-cong/tran-duc-luu-cuong.html"><img
															typeof="foaf:Image" class="img-responsive"
															src="sites/default/files/styles/tin_tuc_feature/public/field/image/tran_duc_luu_cuong0ac5.png?itok=_14Riz_K"
															alt="Trần Đức Lưu Cương - visa Mỹ ngành Kế toán tại Arkansas State University " /></a>
													</div>
												</div>
												<div class="views-field views-field-title">
													<span class="field-content"><a
														href="vi/du-hoc-my/cau-chuyen-thanh-cong/tran-duc-luu-cuong.html">Trần
															Đức Lưu Cương - Sinh viên đạt visa Mỹ ngành Kế toán tại
															Arkansas State University </a></span>
												</div>
												<div class="views-field views-field-field-mo-ta">
													<span class="field-content">Chúng tôi xin chúc mừng
														Trần Đức Lưu Cương đã đạt visa du học tại trường Arkansas
														State University - top 20 trường công lập hàng đầu Hoa Kỳ,
														bậc Đại học - ngành Kế toán với học bổng 50% cho 4 năm
														học...</span>
												</div>
											</div>
											<div class="clearfix visible-lg-block"></div>
										</div>
									</div>
								</div>
								<div class="view-footer">
									<h3 class="hide">Câu chuyện thành công</h3>
									<a href="vi/tin-tuc/cau-chuyen-thanh-cong.html">Xem thêm</a>
								</div>
							</div>
							</section>
						</div>
					</div>
				</div>
				</section>
				<section id="block-views-admin-su-kien-block-1"
					class="block block-views col-xs-12 col-sm-3 col-lg-3 block-title-style clearfix">
				<div class="block-title">Sự kiện</div>
				<div
					class="view view-admin-su-kien view-id-admin_su_kien view-display-id-block_1 block-view-su-kien-home view-dom-id-3580fafcb506f0251f4afa0b5fd90a66">
					<div class="view-content">
						<div class="views-row views-row-1 views-row-odd views-row-first">
							<div class="views-field views-field-field-thoi-gian">
								<div class="field-content">
									<span class="month">Oct</span><span class="day">29</span>
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><a
									href="vi/su-kien/gap-go-dai-dien-truong-the-northwest-school.html">Gặp
										gỡ và Phỏng vấn Trực tiếp cùng Giám đốc Tuyển sinh của The
										Northwest School</a></span>
							</div>
						</div>
						<div class="views-row views-row-2 views-row-even">
							<div class="views-field views-field-field-thoi-gian">
								<div class="field-content">
									<span class="month">Oct</span><span class="day">27</span>
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><a
									href="vi/su-kien/hoi-thao-thong-tin-tacoma-community-college.html">Hội
										thảo Thông tin: Gặp gỡ đại diện đến từ Tacoma Community
										College, Mỹ</a></span>
							</div>
						</div>
						<div class="views-row views-row-3 views-row-odd">
							<div class="views-field views-field-field-thoi-gian">
								<div class="field-content">
									<span class="month">Oct</span><span class="day">03</span>
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><a
									href="vi/su-kien/hoi-thao-ielts-102018.html">Hội thảo ĐỘC
										QUYỀN về IELTS: BÍ QUYẾT CHINH PHỤC KÌ THI IELTS SPEAKING từ
										Hội Đồng Anh</a></span>
							</div>
						</div>
						<div class="views-row views-row-4 views-row-even">
							<div class="views-field views-field-field-thoi-gian">
								<div class="field-content">
									<span class="month">Oct</span><span class="day">03</span>
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><a
									href="vi/su-kien/trien-lam-du-hoc-my-canada-thu-2018.html">Triển
										lãm Du học Quốc tế SEJOONG - Mùa Thu 2018</a></span>
							</div>
						</div>
						<div class="views-row views-row-5 views-row-odd views-row-last">
							<div class="views-field views-field-field-thoi-gian">
								<div class="field-content">
									<span class="month">Aug</span><span class="day">29</span>
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><a
									href="vi/su-kien/the-mba-tour-082018.html">The MBA Tour –
										TP.Hồ Chí Minh, 29/08/2018</a></span>
							</div>
						</div>
					</div>
					<div class="view-footer">
						<a href="vi/su-kien-sap-toi.html">Xem thêm</a>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="feature-home-box">
		<div class="container">
			<div class="region region-feature-home">
				<section id="block-liva-SEJOONG-feature-home"
					class="block block-liva-SEJOONG clearfix">
				<div class='feature-home'>
					<div class='col col-lg-3'>
						<div class="icon">
							<img alt="image" src="sites/default/files/hoc-vien_hover_0.png" />
						</div>
						<span class='number'>4000+</span><span class="mo-ta">Tổng
							số khách hàng tại Việt Nam và các nước đã và đang sử dụng dịch vụ
							của SEJOONG VIỆT NAM®</span>
					</div>
					<div class='col col-lg-3'>
						<div class="icon">
							<img alt="image" src="sites/default/files/diem_hover.png" />
						</div>
						<span class='number'>300+</span><span class="mo-ta">Hơn 300
							trường đối tác trên khắp thế giới</span>
					</div>
					<div class='col col-lg-3'>
						<div class="icon">
							<img alt="image" src="sites/default/files/luong_hover.png" />
						</div>
						<span class='number'>30-100%</span><span class="mo-ta">Mức
							học bổng trung bình mà học sinh của SEJOONG VIỆT NAM® nhận được</span>
					</div>
					<div class='col col-lg-3'>
						<div class="icon">
							<img alt="image" src="sites/default/files/luong-cao_hover.png" />
						</div>
						<span class='number'>30+</span><span class="mo-ta">Hơn 30
							sự kiện triển lãm - hội thảo giáo dục hữu ích được tổ chức hàng
							năm</span>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="country-home-box">
		<div class="container">
			<div class="region region-country-home">
				<section id="block-liva-SEJOONG-quoc-gia"
					class="block block-liva-SEJOONG clearfix">
				<h3 class="block-title">Lựa chọn điểm đến của bạn</h3>
				<div class="quoc-gia">
					<div class="item">
						<div class="image">
							<img typeof="foaf:Image" class="img-responsive"
								src="sites/default/files/image/icon/usa-flag.gif" alt="" />
						</div>
						<div class="name">
							<h2>
								<a href="vi/du-hoc-my.html">Du học Mỹ</a>
							</h2>
						</div>
						<div class="mo-ta">
							<p>Hệ thống giáo dục ở Mỹ là sự tổng hợp của các trường ĐH
								nổi tiếng thế giới trong đó các chương trình học đều đạt đến
								đỉnh cao cùng với sự hiện đại, phong phú, đa dạng nhất trên thế
								giới.</p>
						</div>
					</div>
					<div class="item">
						<div class="image">
							<img typeof="foaf:Image" class="img-responsive"
								src="sites/default/files/styles/medium/public/image/icon/anhquoc_7efce.jpg?itok=KrI6wKBc"
								alt="" />
						</div>
						<div class="name">
							<h2>
								<a href="vi/du-hoc-anh.html">Du học Anh</a>
							</h2>
						</div>
						<div class="mo-ta">
							<p>Từ lâu vương quốc Anh được toàn thế giới biết đến không
								chỉ là một quốc gia có nền kinh tế phát triển hùng mạnh mà còn
								có nền giáo dục ưu tú vượt bậc</p>
						</div>
					</div>
					<div class="item">
						<div class="image">
							<img typeof="foaf:Image" class="img-responsive"
								src="sites/default/files/styles/medium/public/image/icon/Flag_of_Canada83f5.png?itok=C7TekUkU"
								alt="" />
						</div>
						<div class="name">
							<h2>
								<a href="vi/du-hoc-canada.html">Du học Canada</a>
							</h2>
						</div>
						<div class="mo-ta">
							<p>Theo hiến pháp Canada, giáo dục thuộc trách nhiệm của
								chính quyền các tỉnh (bang). Do đó, Canada không có một hệ thống
								đồng nhất các quy định về giáo dục.</p>
						</div>
					</div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<div class="main-container">
		<section class="col-sm-12">
		<div class="row">
			<div class="region region-content">
				
				<%@include file="layout-control/view-feedback.jsp" %>
				
				<%@include file="layout-control/view-partner.jsp" %>
			</div>
		</div>
		</section>
	</div>
	
	<!-- include footer -->
 	<%@include file="layout-control/view-footer.jsp" %>
	<!-- end include footer -->
	
	
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#submitSentRegistered").click(function() {
		
		alert(1);
		$.ajax({
			  type: "POST",
			  url: "${pageContext.request.contextPath}/Test",
			  data: {
				  abc: "abc",
				  otp: "ê á"
			  },
			  success: function(data){
				  console.log(data);
				  alert("success: " + data);
				  /* window.location.reload(); */
			  }
			});
	});
});
</script>
<!-- Mirrored from SEJOONG.edu.vn/vi by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Nov 2018 14:49:13 GMT -->
</html>