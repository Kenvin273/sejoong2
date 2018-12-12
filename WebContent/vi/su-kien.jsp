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
<link rel="preconnect" href="http://cdn.jsdelivr.net/" />
<link rel="dns-prefetch" href="http://cdn.jsdelivr.net/" />
<link rel="preconnect" href="https://stats.g.doubleclick.net/" />
<link rel="dns-prefetch" href="http://stats.g.doubleclick.net/" />
<link rel="preconnect" href="https://www.google-analytics.com/" />
<link rel="dns-prefetch" href="http://www.google-analytics.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description"
	content="International Education Solution Provider in Vietnam | Education Fairs | Services for Schools in the U.S. and other countries." />
<meta name="news_keywords"
	content="SEJOONG vietnam,vietnamese student recruitment" />
<meta name="rating" content="general" />
<meta name="generator" content="Drupal 7 (http://drupal.org)" />
<link rel="canonical" href="su-kien-sap-toi.html" />
<link rel="shortlink" href="su-kien-sap-toi.html" />
<meta property="fb:admins" content="100005969041342" />
<meta property="fb:app_id" content="636988723014186" />
<meta property="og:site_name" content=" SEJOONG VIỆT NAM®" />
<meta property="og:type" content="article" />
<meta property="og:url" content="su-kien-sap-toi.html" />
<meta property="og:title" content="Sự kiện sắp tới" />
<meta name="twitter:card" content="summary" />
<meta name="twitter:site" content="@SEJOONGvietnam" />
<meta name="twitter:site:id" content="905764794" />
<meta name="twitter:creator" content="@SEJOONGvietnam" />
<meta name="twitter:creator:id" content="905764794" />
<meta name="twitter:url" content="su-kien-sap-toi.html" />
<meta name="twitter:title" content="Sự kiện sắp tới" />
<meta itemprop="name" content="Sự kiện sắp tới" />
<meta name="dcterms.title" content="Sự kiện sắp tới" />
<meta name="dcterms.type" content="Text" />
<meta name="dcterms.format" content="text/html" />
<meta name="dcterms.identifier" content="su-kien-sap-toi.html" />
<link rel="shortcut icon" href="../sites/default/files/SEJOONG-1_0.png"
	type="image/png" />
<title>Sự kiện sắp tới | SEJOONG VIỆT NAM®</title>
<link type="text/css" rel="stylesheet"
	href="../cdn.jsdelivr.net/bootstrap/3.0.2/css/bootstrap.min.css"
	media="all" />
<link type="text/css" rel="stylesheet"
	href="../sites/default/files/advagg_css/css__mVSdfbYth8xBdrWslaOtzueLeb4efj04HYIdatjMAJo__mi7hkdFMItCtSZsen_1EG0rvp-r8PrbHjy-o9kg-y-w__ZKxWTZCNNQzg131EMch2x4MZT5lVCZnpL_cLSwczB2g.css"
	media="all" />
<link type="text/css" rel="stylesheet"
	href="../sites/default/files/advagg_css/css__gl0z63MR9hN0ROiGfoYZvey7dmMdzlHQ5EORFeBFpH0__mQKdui1xo2eaOTje0zj7DBM9aYgdgKAYPKDveL3oOtI__ZKxWTZCNNQzg131EMch2x4MZT5lVCZnpL_cLSwczB2g.css"
	media="all" />

<!--[if lte IE 9]>
<script type="text/javascript" src="/sites/default/files/advagg_js/js09.js#ie9-" onload="if(jQuery.isFunction(jQuery.holdReady)){jQuery.holdReady(true);}"></script>
<![endif]-->

<!--[if gt IE 9]>
<script type="text/javascript" src="/sites/default/files/advagg_js/js09.js#ie10+" defer="defer" onload="if(jQuery.isFunction(jQuery.holdReady)){jQuery.holdReady(true);}"></script>
<![endif]-->

<!--[if !IE]><!-->
<script type="text/javascript"
	src="../sites/default/files/advagg_js/js09.js" defer="defer"
	onload="if(jQuery.isFunction(jQuery.holdReady)){jQuery.holdReady(true);}"></script>
<!--<![endif]-->
<script type="text/javascript"
	src="../sites/default/files/advagg_js/js21.js" defer="defer"
	onload="function advagg_mod_1(){advagg_mod_1.count=++advagg_mod_1.count||1;try{if(advagg_mod_1.count<=40){init_drupal_core_settings();advagg_mod_1.count=100}}catch(e){if(advagg_mod_1.count>=40){throw e}else window.setTimeout(advagg_mod_1,1)}}
function advagg_mod_1_check(){if(window.init_drupal_core_settings&&window.jQuery&&window.Drupal){advagg_mod_1()}else window.setTimeout(advagg_mod_1_check,1)};advagg_mod_1_check();"></script>
<script type="text/javascript"
	src="../sites/default/files/advagg_js/js12.js" defer="defer"></script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
	window.google_analytics_uacct = "UA-41486826-7";
	//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
	(function(i, s, o, g, r, a, m) {
		i["GoogleAnalyticsObject"] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, "script",
			"../../www.google-analytics.com/analytics.js", "ga");
	ga("create", "UA-41486826-7", {
		"cookieDomain" : "auto"
	});
	ga("require", "linkid", "linkid.html");
	ga("require", "displayfeatures");
	ga("set", "anonymizeIp", true);
	ga("send", "pageview");
	//--><!]]>
</script>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
	function init_drupal_core_settings() {
		jQuery
				.extend(
						Drupal.settings,
						{
							"basePath" : "\/",
							"pathPrefix" : "vi\/",
							"ajaxPageState" : {
								"theme" : "liva_SEJOONGtheme",
								"theme_token" : "sgCd3jaGh97kZto2ETe3VTDfQktTI0D7XCmwOp40s8M",
								"jquery_version" : "1.10",
								"css" : {
									"\/\/cdn.jsdelivr.net\/bootstrap\/3.0.2\/css\/bootstrap.min.css" : 1,
									"modules\/system\/system.base.css" : 1,
									"misc\/ui\/jquery.ui.core.css" : 1,
									"misc\/ui\/jquery.ui.theme.css" : 1,
									"sites\/all\/modules\/contrib\/date\/date_api\/date.css" : 1,
									"sites\/all\/modules\/contrib\/date\/date_popup\/themes\/datepicker.1.7.css" : 1,
									"modules\/field\/theme\/field.css" : 1,
									"modules\/node\/node.css" : 1,
									"sites\/all\/modules\/contrib\/simpleads\/css\/simpleads.css" : 1,
									"sites\/all\/modules\/extlink\/extlink.css" : 1,
									"sites\/all\/modules\/contrib\/views\/css\/views.css" : 1,
									"sites\/all\/modules\/contrib\/ctools\/css\/ctools.css" : 1,
									"sites\/all\/modules\/contrib\/ctools\/css\/modal.css" : 1,
									"modules\/locale\/locale.css" : 1,
									"sites\/all\/themes\/bootstrap\/css\/3.0.2\/overrides.min.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/fonts\/opensan\/font.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/fonts\/fontawesome\/font-awesome.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/jquery.flexisel.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/jquery.bxslider.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/flexslider.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/magnific-popup.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/owl.carousel.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/owl.theme.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/style.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/style1.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/responsive-iphone.css" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/css\/responsive-ipad.css" : 1
								},
								"js" : {
									"sites\/all\/modules\/contrib\/jquery_update\/replace\/ui\/ui\/minified\/jquery.ui.core.min.js" : 1,
									"sites\/all\/modules\/contrib\/jquery_update\/replace\/ui\/external\/jquery.cookie.js" : 1,
									"sites\/all\/modules\/contrib\/jquery_update\/replace\/misc\/jquery.form.min.js" : 1,
									"sites\/all\/modules\/contrib\/jquery_update\/js\/jquery_update.js" : 1,
									"\/\/cdn.jsdelivr.net\/bootstrap\/3.0.2\/js\/bootstrap.min.js" : 1,
									"sites\/all\/modules\/contrib\/admin_menu\/admin_devel\/admin_devel.js" : 1,
									"sites\/all\/modules\/extlink\/extlink.js" : 1,
									"sites\/all\/modules\/contrib\/resp_img\/resp_img.js" : 1,
									"sites\/all\/themes\/bootstrap\/js\/misc\/_progress.js" : 1,
									"sites\/all\/modules\/contrib\/ctools\/js\/modal.js" : 1,
									"sites\/all\/modules\/contrib\/google_analytics\/googleanalytics.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/jquery.bxslider.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/jquery.flexslider-min.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/jquery.magnific-popup.min.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/jquery.flexisel.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/googlemap.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/liva_SEJOONG.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/owl.carousel.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/jquery.cycle.min.js" : 1,
									"sites\/all\/themes\/liva_SEJOONGtheme\/js\/scripts.js" : 1,
									"sites\/all\/themes\/bootstrap\/js\/modules\/ctools\/js\/modal.js" : 1,
									"sites\/all\/themes\/bootstrap\/js\/bootstrap.js" : 1,
									"sites\/all\/modules\/contrib\/jquery_update\/replace\/jquery\/1.10\/jquery.min.js" : 1,
									"misc\/jquery.once.js" : 1,
									"misc\/drupal.js" : 1,
									"misc\/ajax.js" : 1,
									"sites\/all\/themes\/bootstrap\/js\/misc\/ajax.js" : 1
								}
							},
							"respImg" : {
								"default_suffix" : "",
								"current_suffix" : false,
								"forceRedirect" : false,
								"forceResize" : false,
								"reloadOnResize" : false,
								"useDevicePixelRatio" : false,
								"suffixes" : {
									"" : 1
								}
							},
							"CToolsModal" : {
								"loadingText" : "Loading...",
								"closeText" : "Close Window",
								"closeImage" : "\u003Cimg typeof=\u0022foaf:Image\u0022 class=\u0022img-responsive\u0022 src=\u0022http:\/\/SEJOONG.edu.vn\/sites\/all\/modules\/contrib\/ctools\/images\/icon-close-window.png\u0022 alt=\u0022Close window\u0022 title=\u0022Close window\u0022 \/\u003E",
								"throbber" : "\u003Cimg typeof=\u0022foaf:Image\u0022 class=\u0022img-responsive\u0022 src=\u0022http:\/\/SEJOONG.edu.vn\/sites\/all\/modules\/contrib\/ctools\/images\/throbber.gif\u0022 alt=\u0022Loading\u0022 title=\u0022Loading...\u0022 \/\u003E"
							},
							"better_exposed_filters" : {
								"views" : {
									"admin_su_kien" : {
										"displays" : {
											"page_3" : {
												"filters" : []
											}
										}
									},
									"admin_banner_sidebar" : {
										"displays" : {
											"block_1" : {
												"filters" : []
											}
										}
									},
									"admin_banner" : {
										"displays" : {
											"block_2" : {
												"filters" : []
											}
										}
									}
								}
							},
							"extlink" : {
								"extTarget" : "_blank",
								"extClass" : 0,
								"extLabel" : "(link is external)",
								"extImgClass" : 0,
								"extIconPlacement" : "append",
								"extSubdomains" : 1,
								"extExclude" : "",
								"extInclude" : "",
								"extCssExclude" : "",
								"extCssExplicit" : "",
								"extAlert" : 0,
								"extAlertText" : "This link will take you to an external web site.",
								"mailtoClass" : "mailto",
								"mailtoLabel" : "(link sends e-mail)"
							},
							"googleanalytics" : {
								"trackOutbound" : 1,
								"trackMailto" : 1,
								"trackDownload" : 1,
								"trackDownloadExtensions" : "7z|aac|arc|arj|asf|asx|avi|bin|csv|doc(x|m)?|dot(x|m)?|exe|flv|gif|gz|gzip|hqx|jar|jpe?g|js|mp(2|3|4|e?g)|mov(ie)?|msi|msp|pdf|phps|png|ppt(x|m)?|pot(x|m)?|pps(x|m)?|ppam|sld(x|m)?|thmx|qtm?|ra(m|r)?|sea|sit|tar|tgz|torrent|txt|wav|wma|wmv|wpd|xls(x|m|b)?|xlt(x|m)|xlam|xml|z|zip"
							},
							"urlIsAjaxTrusted" : {
								"\/vi\/tim-kiem" : true
							},
							"bootstrap" : {
								"anchorsFix" : 0,
								"anchorsSmoothScrolling" : 1,
								"formHasError" : 1,
								"popoverEnabled" : 0,
								"popoverOptions" : {
									"animation" : 1,
									"html" : 0,
									"placement" : "right",
									"selector" : "",
									"trigger" : "click",
									"triggerAutoclose" : 1,
									"title" : "",
									"content" : "",
									"delay" : 0,
									"container" : "body"
								},
								"tooltipEnabled" : 0,
								"tooltipOptions" : {
									"animation" : 1,
									"html" : 0,
									"placement" : "auto left",
									"selector" : "",
									"trigger" : "hover focus",
									"delay" : 0,
									"container" : "body"
								}
							}
						});
		if (jQuery.isFunction(jQuery.holdReady)) {
			jQuery.holdReady(false);
		}
	}
	if (window.jQuery && window.Drupal) {
		init_drupal_core_settings();
	}
	//--><!]]>
</script>
<script type='text/javascript'
	src='https://maps.googleapis.com/maps/api/js?key=AIzaSyCieWATmuM5VmTFBuzKOKKNAAPqAmCDgLI&amp;v=1.85'></script>
<!-- HTML5 element support for IE6-8 -->
<!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-5LFBZ8M');
</script>
<!-- End Google Tag Manager -->
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'../../connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1827443564154083', {
		em : 'insert_email_variable,'
	});
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1827443564154083&amp;ev=PageView&amp;noscript=1" />
</noscript>
<!-- DO NOT MODIFY -->
<!-- End Facebook Pixel Code -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;subset=vietnamese"
	rel="stylesheet">
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
						try {
							ArrayList<Event> list = (ArrayList<Event>) DBUtil
									.queryEvent(DBConnection.getMySQLConnection());
							
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
								<li><a title="Go to page 2"
									href="su-kien-da-dien-ra2679.html?page=1">2</a></li>
								<li><a title="Go to page 3"
									href="su-kien-da-dien-ra4658.html?page=2">3</a></li>
								<li><a title="Go to page 4"
									href="su-kien-da-dien-ra9ba9.html?page=3">4</a></li>
								<li><a title="Go to page 5"
									href="su-kien-da-dien-rafdb0.html?page=4">5</a></li>
								<li><a title="Go to page 6"
									href="su-kien-da-dien-raaf4d.html?page=5">6</a></li>
								<li><a title="Go to page 7"
									href="su-kien-da-dien-rac575.html?page=6">7</a></li>
								<li><a title="Go to page 8"
									href="su-kien-da-dien-ra235c.html?page=7">8</a></li>
								<li><a title="Go to page 9"
									href="su-kien-da-dien-rafdfa.html?page=8">9</a></li>
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
	<footer class="footer ">
	<div class="footer_top">
		<div class="container">
			<div class="region region-footer-top">
				<section id="block-menu-menu-menu-footer-top"
					class="block block-menu clearfix">
				<div class="block-title">Menu footer top</div>
				<ul class="menu nav">
					<li class="first expanded expanded"><a href="../vi.html"
						title="">Giới thiệu</a>
					<ul class="sub-menu">
							<li class="first leaf"><a
								href="gioi-thieu/ve-chung-toi.html">Thông tin về Công ty</a></li>
							<li class="last leaf"><a href="http://cleveracademy.vn/">Đào
									tạo tiếng Anh</a></li>
						</ul></li>
					<li class="expanded expanded"><a href="../vi.html">Các
							trường đối tác</a>
					<ul class="sub-menu">
							<li class="first leaf"><a
								href="du-hoc-anh/cac-truong-tai-anh.html" title="">Anh</a></li>
							<li class="leaf"><a
								href="du-hoc-canada/cac-truong-tai-canada.html" title="">Canada</a></li>
							<li class="last leaf"><a
								href="du-hoc-my/cac-truong-tai-my.html" title="">Mỹ</a></li>
						</ul></li>
					<li class="expanded expanded"><a href="../vi.html" title="">Quốc
							gia du học</a>
					<ul class="sub-menu">
							<li class="first leaf"><a href="du-hoc-anh.html" title="">Anh</a></li>
							<li class="leaf"><a href="du-hoc-canada.html" title="">Canada</a></li>
							<li class="last leaf"><a href="du-hoc-my.html" title="">Mỹ</a></li>
						</ul></li>
					<li class="last expanded expanded"><a href="../vi.html"
						title="">Thư viện</a>
					<ul class="sub-menu">
							<li class="first leaf"><a href="video.html" title="">Video</a></li>
							<li class="last leaf"><a href="thu-vien-anh.html" title="">Ảnh</a></li>
						</ul></li>
				</ul>
				</section>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="region region-footer">
				<section id="block-system-main-menu"
					class="block block-system col-xs-12 col-sm-9 col-lg-9 block-menu clearfix">
				<div class="block-title">Main menu</div>
				<ul class="menu nav">
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
							<li class="first expanded expanded"><a href="du-hoc-my.html"
								title="Mỹ">Mỹ</a>
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
										href="du-hoc-anh/huong-dan-nop-don.html">Hướng dẫn Nộp đơn</a></li>
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
									<li class="last leaf"><a href="du-hoc-canada/su-kien.html">Sự
											kiện</a></li>
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
				</section>
				<section id="block-block-2"
					class="block block-block col-xs-12 col-sm-3 col-lg-3 clearfix">
				<a href="https://www.facebook.com/vnis.vietnam" class="facebook"></a>
				<a href="https://twitter.com/VNISVietnam" class="twitter"></a>
				<a href="https://www.youtube.com/user/VNISVietnam" class="youtube"></a>
				<a href="https://www.linkedin.com/company/vnis-corporation"
					class="linkedin"></a>
				<a href="https://www.instagram.com/vniseducation/" class="instagram"></a></section>
			</div>
			<div class="footer-info">
				<span>Bản quyền thuộc về VNIS Education®, một công ty thành
					viên của VNIS Group®. Bảo lưu mọi quyền.</span>
				<div>
					Công ty TNHH VNIS Việt Nam </br>hoạt động theo giấy chứng nhận dịch vụ
					tư vấn du học số 10848/CN-SGD-ĐT do Sở Giáo dục & Đào tạo Hà Nội
					cấp. Giấy chứng nhận đăng ký kinh doanh số 0106023568.
				</div>
			</div>
		</div>
	</div>
	</footer>
	<script type="text/javascript"
		src="../sites/default/files/advagg_js/js4.js" defer="defer"></script>
	<script type="text/javascript" defer="defer"
		src="../cdn.jsdelivr.net/bootstrap/3.0.2/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../sites/default/files/advagg_js/js15.js" defer="defer"></script>
	<script type="text/javascript"
		src="../sites/default/files/advagg_js/js18.js" defer="defer"></script>
	<script type="text/javascript"
		src="../sites/default/files/advagg_js/js06.js" defer="defer"></script>
	<script type="text/javascript"
		src="../sites/default/files/advagg_js/js11.js" defer="defer"></script>

	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "../../connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script type="text/javascript"
		src="../../apis.google.com/js/plusone.js"></script>

	<script type="text/javascript">
		(function(d, s, id) {
			var z = d.createElement(s);
			z.type = "text/javascript";
			z.id = id;
			z.async = true;
			z.src = "../../static.zotabox.com/b/c/bc49461975a27f712de4430cc7992f3e/widgets.js";
			var sz = d.getElementsByTagName(s)[0];
			sz.parentNode.insertBefore(z, sz)
		}(document, "script", "zb-embed-code"));
	</script>
</body>

<!-- Mirrored from vnis.edu.vn/vi/su-kien-da-dien-ra by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 13 Nov 2018 18:52:34 GMT -->
</html>