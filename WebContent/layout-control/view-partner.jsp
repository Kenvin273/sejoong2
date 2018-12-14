<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.io.*,java.util.*"%>

<%@page import="java.util.ArrayList"%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tuvi.utils.DBConnection"%>
<%@page import="com.tuvi.utils.DBUtil"%>
<%@page import="com.tuvi.dao.PartnerInfo"%>
<%@ page
	import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
<section id="block-quicktabs-i-t-c-c-a-ch-ng-t-i"
	class="block block-quicktabs block-title-style block-doi-tac-home container clearfix">
	<h3 class="block-title">
		<a href="vi/danh-sach-truong.html" class="block-title-link"
			target="_blank">Đối tác của chúng tôi</a>
	</h3>
	<div id="quicktabs-_i_t_c_c_a_ch_ng_t_i"
		class="quicktabs-wrapper quicktabs-style-nostyle">
		<div id="quicktabs-container-_i_t_c_c_a_ch_ng_t_i"
			class="quicktabs_main quicktabs-style-nostyle">
			<div id="quicktabs-tabpage-_i_t_c_c_a_ch_ng_t_i-0"
				class="quicktabs-tabpage ">
				<section id="block-views-admin-truong-block-1"
					class="block block-views clearfix">
					<div
						class="view view-admin-truong view-id-admin_truong view-display-id-block_1 block-view-doi-tac-home doi-tac-slide view-dom-id-289f0043c0000114aeb494b10e9dda7a">
						<div class="view-content">

							<%
						try {
							ArrayList<PartnerInfo> list = (ArrayList<PartnerInfo>) DBUtil
									.queryPartnerInfo(DBConnection.getMySQLConnection());
							
							if (list.size() > 0) {
								int i = 1;
								for (PartnerInfo ev : list) {
									try {
										
						%>

							<div class="views-row views-row-1 views-row-odd views-row-first">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<!-- <a href="vi/danh-sach-truong/aberystwyth-university.html"> --><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/logo-1395664458.png"
											alt="<% out.print(ev.getPartnerName()); %>" title="<% out.print(ev.getPartnerName()); %>" /><!-- </a> -->
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
							<!-- <div class="views-row views-row-2 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/abbots-bromley-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/abbots_bromley_school_logo5934.jpg?itok=PBmKuHrp"
											alt="Abbots Bromley School" title="Abbots Bromley School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-3 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/plymouth-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/logo0fd2.jpg?itok=uoaCWPif"
											alt="Plymouth University" title="Plymouth University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-4 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/lsi-independent-sixth-form-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/lsi88f8.png?itok=3tYTageK"
											alt="LSI Independent Sixth Form College"
											title="LSI Independent Sixth Form College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-5 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/worthing-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/worthing-colleged7d3.png?itok=g7y2Djcn"
											alt="Worthing College" title="Worthing College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-6 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/ardingly-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/ardingly3001.png?itok=TjZt8b4L"
											alt="Ardingly College" title="Ardingly College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-7 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-hertfordshire.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/uhbb6f.png?itok=OJAuWhPx"
											alt="University of Hertfordshire"
											title="University of Hertfordshire" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-8 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-east-anglia.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/ueaa28b.png?itok=6V9EvyF1"
											alt="University of East Anglia"
											title="University of East Anglia" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-9 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/alexanders-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/alexanders58df.png?itok=hw0h_8Po"
											alt="Alexanders College" title="Alexanders College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-10 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/kaplan-international-colleges.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/kic06b2.png?itok=vczuqYMb"
											alt="Kaplan International Colleges"
											title="Kaplan International Colleges" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-11 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/middlesex-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/middlesexd87c.png?itok=a8iZ1wyp"
											alt="Middlesex University" title="Middlesex University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-12 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/anglia-ruskin-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/anglia4efc.png?itok=oVOLY6VV"
											alt="Anglia Ruskin University"
											title="Anglia Ruskin University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-13 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-essex.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/essex83c1.png?itok=3GkxNLUb"
											alt="University of Essex" title="University of Essex" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-14 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/boston-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/boston-college-logo_04400.png?itok=M-17xf7d"
											alt="Boston College" title="Boston College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-15 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/gsm-london.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/gsmlondon-profiled4eb.jpg?itok=cxFNbG-z"
											alt="GSM London" title="GSM London" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-16 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/ef-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/ef8a48.jpg?itok=VcLzzhKo"
											alt="EF Academy" title="EF Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-17 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/cambridge-school-of-visual-performing-arts-csvpa.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/csvpa-profiledc96.jpg?itok=LFqaXvS8"
											alt="Cambridge School of Visual &amp; Performing Arts (CSVPA)"
											title="Cambridge School of Visual &amp; Performing Arts (CSVPA)" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-18 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cats-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/cats-uk-profilee977.jpg?itok=8X70gcij"
											alt="CATS College" title="CATS College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-19 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/foundationcampus.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/foundationcampus-profile3d9d.jpg?itok=IcrPLIA_"
											alt="FoundationCampus" title="FoundationCampus" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-20 views-row-even views-row-last">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/bosworth-independent-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/styles/doi_tac/public/images/logo/bosworth-profile_0705a.jpg?itok=yqxtMQRz"
											alt="Bosworth Independent College"
											title="Bosworth Independent College" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div id="quicktabs-tabpage-_i_t_c_c_a_ch_ng_t_i-1"
				class="quicktabs-tabpage quicktabs-hide">
				<section id="block-views-admin-truong-block-2"
					class="block block-views clearfix">
					<div
						class="view view-admin-truong view-id-admin_truong view-display-id-block_2 doi-tac-slide view-dom-id-937b010ff8aacd7fc774bfdc38c2e37f">
						<div class="view-content">
							<div class="views-row views-row-1 views-row-odd views-row-first">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/rowan-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/rowan.png"
											alt="Rowan University " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-2 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/arkansas-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/asu-profile.jpg"
											alt="Arkansas State University"
											title="Arkansas State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-3 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-redlands.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/university_of_redlands_logo.jpg"
											alt="University of Redlands" title="University of Redlands" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-4 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/north-cedar-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/nca_logo.png"
											alt="North Cedar Academy" title="North Cedar Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-5 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/elmhurst-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/untitled-1.png"
											alt="Elmhurst College" title="Elmhurst College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-6 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-cincinnati.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uc.png"
											alt="University of Cincinnati "
											title="University of Cincinnati " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-7 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fairmont-private-schools.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fairmont_logo.png"
											alt="Fairmont Private Schools"
											title="Fairmont Private Schools" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-8 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-toledo.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/toledo.png"
											alt="University of Toledo" title="University of Toledo" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-9 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/delaware-county-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/dccc-profile_0.jpg"
											alt="Delaware County Community College"
											title="Delaware County Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-10 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cleveland-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/seal.jpg"
											alt="Cleveland State University"
											title="Cleveland State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-11 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-washington-continuum-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uw_continuum.png"
											alt="University of Washington - Continuum College"
											title="University of Washington - Continuum College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-12 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/grace-christian-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/grace_christian.jpg"
											alt="Grace Christian Academy "
											title="Grace Christian Academy " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-13 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-hawaii-at-manoa.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uh-logo.png"
											alt="University of Hawaii at Manoa"
											title="University of Hawaii at Manoa" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-14 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/suny-oswego.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/oswego-profile.png"
											alt="SUNY Oswego" title="SUNY Oswego" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-15 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cleveland-institute-of-art.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cia.jpg"
											alt="Cleveland Institute of Art"
											title="Cleveland Institute of Art" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-16 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/florida-institute-of-technology.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/the_florida_institute_of_technology_logo.jpg"
											alt="Florida Institute of Technology"
											title="Florida Institute of Technology" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-17 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/saint-anselm-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/saint_anselm_college.jpg"
											alt="Saint Anselm College" title="Saint Anselm College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-18 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-mary-hardin-baylor.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/university_of_mary_hardin-baylor.jpg"
											alt="University of Mary Hardin-Baylor"
											title="University of Mary Hardin-Baylor" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-19 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/suny-oneonta.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/suny_oneonta.jpg"
											alt="SUNY Oneonta" title="SUNY Oneonta" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-20 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/lado-international-institute.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lado.jpg"
											alt="LADO International Institute"
											title="LADO International Institute" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-21 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/south-hills-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/south_hills_academy.jpg"
											alt="South Hills Academy" title="South Hills Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-22 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-college-of-new-jersey.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/tcnj.jpg"
											alt="The College of New Jersey"
											title="The College of New Jersey" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-23 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/farmingdale-state-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/farmingdale.jpg"
											alt="Farmingdale State College"
											title="Farmingdale State College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-24 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/fulton-montgomery-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fm.jpg"
											alt="Fulton Montgomery Community College"
											title="Fulton Montgomery Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-25 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/hawaii-pacific-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/hpu.jpg"
											alt="Hawaii Pacific University"
											title="Hawaii Pacific University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-26 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lehigh-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lehigh_university_logo.jpg"
											alt="Lehigh University" title="Lehigh University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-27 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-language-company.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/tlc3.jpg"
											alt="The Language Company" title="The Language Company" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-28 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/miami-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/miami_university_logo.jpg"
											alt="Miami University" title="Miami University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-29 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/john-bapst-memorial-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/john_bapst_memorial_high_school_logo.png"
											alt="John Bapst Memorial High School"
											title="John Bapst Memorial High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-30 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/grier-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/grier_school_logo.jpg"
											alt="Grier School" title="Grier School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-31 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/stoneleigh-burnham-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/stoneleigh-burnham_school_logo.jpg"
											alt="Stoneleigh-Burnham School "
											title="Stoneleigh-Burnham School " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-32 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/wasatch-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/wasatch_academy_logo.jpg"
											alt="Wasatch Academy" title="Wasatch Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-33 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/hawaii-preparatory-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/hawaii_preparatory_academy_logo.jpg"
											alt="Hawaii Preparatory Academy"
											title="Hawaii Preparatory Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-34 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/washington-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/washington_academy.png"
											alt="Washington Academy" title="Washington Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-35 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-hockaday-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/the_hockaday_school.jpg"
											alt="The Hockaday School " title="The Hockaday School " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-36 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-brook-hill-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/the_brook_hill_school_logo1.jpg"
											alt="The Brook Hill School" title="The Brook Hill School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-37 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/oregon-episcopal-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/oregon_episcopal_school_logo.jpg"
											alt="Oregon Episcopal School" title="Oregon Episcopal School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-38 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/oldfields-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/oldfields_school_logo.jpg"
											alt="Oldfields School" title="Oldfields School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-39 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-webb-schools.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/webb.jpg"
											alt="Webb School" title="Webb School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-40 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/george-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/george_school_seal_.jpg"
											alt="George School" title="George School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-41 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/stevenson-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/stevenson_school_logo.jpg"
											alt="Stevenson School" title="Stevenson School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-42 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/xavier-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/xavier_university_logo.jpg"
											alt="Xavier University" title="Xavier University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-43 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/savannah-college-of-art-and-design.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/scad.jpg"
											alt="Savannah College of Art and Design"
											title="Savannah College of Art and Design" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-44 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/solbridge-international-school-of-business.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/solbridge_international_school_of_business.jpg"
											alt="SolBridge International School of Business"
											title="SolBridge International School of Business" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-45 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/temple-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/temple_university.png"
											alt="Temple University" title="Temple University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-46 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/springfield-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/springfield_college_logo.png"
											alt="Springfield College" title="Springfield College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-47 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/mcphs.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mcphs_logo.jpg"
											alt="MCPHS" title="MCPHS" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-48 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/northern-kentucky-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/northern_kentucky_university_logo.jpg"
											alt="Northern Kentucky University"
											title="Northern Kentucky University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-49 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cushing-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cushing_academy_logo.jpg"
											alt="Cushing Academy" title="Cushing Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-50 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cheshire-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cheshire_academy_logo.jpg"
											alt="Cheshire Academy" title="Cheshire Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-51 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/winchendon-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/winchendon_school_logo.jpg"
											alt="Winchendon School" title="Winchendon School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-52 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-pennsylvania-english-language-program.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/penn_elp.jpg"
											alt="University of Pennsylvania - English Language Program"
											title="University of Pennsylvania - English Language Program" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-53 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-village-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/the_village_school_logo.png"
											alt="The Village School" title="The Village School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-54 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/steamboat-mountain-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/steamboat_mountain_school.jpg"
											alt="Steamboat Mountain School"
											title="Steamboat Mountain School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-55 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/marianapolis-preparatory-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/marianapolis_preparatory_school_logo.jpg"
											alt="Marianapolis Preparatory School"
											title="Marianapolis Preparatory School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-56 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/norfolk-christian-schools.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/norfolk_christian_schools_logo.jpg"
											alt="Norfolk Christian Schools"
											title="Norfolk Christian Schools" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-57 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/east-catholic-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/east_catholic_high_school_logo.jpg"
											alt="East Catholic High School"
											title="East Catholic High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-58 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/pope-john-xxiii-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/pope_john_xxiii_high_school_logo.jpg"
											alt="Pope John XXIII High School"
											title="Pope John XXIII High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-59 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/presentation-of-mary-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/presentation_of_mary_academy_logo.jpg"
											alt="Presentation of Mary Academy"
											title="Presentation of Mary Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-60 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/presbyterian-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/pclogo.png"
											alt="Presbyterian College" title="Presbyterian College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-61 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/washington-jefferson-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/washington_jefferson_college_logo.jpg"
											alt="Washington &amp; Jefferson College"
											title="Washington &amp; Jefferson College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-62 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-marys-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/st._marys_university_logo.jpg"
											alt="St. Mary&#039;s University logo"
											title="St. Mary&#039;s University logo" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-63 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/darrow-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/darrow.jpg"
											alt="Darrow School" title="Darrow School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-64 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/glendale-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/glendale_community_college_logo.jpg"
											alt="Glendale Community College"
											title="Glendale Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-65 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/new-york-institute-of-technology.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/new_york_institute_of_technology_logo.jpg"
											alt="New York Institute of Technology"
											title="New York Institute of Technology" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-66 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/california-state-university-fullerton.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/california_state_university_fullerton_logo.jpg"
											alt="California State University, Fullerton"
											title="California State University, Fullerton" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-67 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/gannon-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/gannon_university_logo.jpg"
											alt="Gannon University" title="Gannon University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-68 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/missouri-western-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/missouri_western_state_university_logo.jpg"
											alt="Missouri Western State University"
											title="Missouri Western State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-69 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-tennessee-knoxville.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/university_of_tennessee_logo.jpg"
											alt="University of Tennessee" title="University of Tennessee" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-70 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/virginia-tech.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/virginia_tech_logo.jpg"
											alt="Virginia Tech" title="Virginia Tech" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-71 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lewis-clark-state-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lewis-clark_state_college_logo.jpg"
											alt="Lewis-Clark State College"
											title="Lewis-Clark State College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-72 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/hillsborough-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/hillsborough_community_college_logo.jpg"
											alt="Hillsborough Community College"
											title="Hillsborough Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-73 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/saint-johns-preparatory-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/saint_johns_preparatory_school_logo.jpg"
											alt="Saint John&#039;s Preparatory School"
											title="Saint John&#039;s Preparatory School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-74 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/portsmouth-christian-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/portsmouth_christian_academy_logo.jpg"
											alt="Portsmouth Christian Academy"
											title="Portsmouth Christian Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-75 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/north-central-texas-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/north_central_texas_academy_logo.jpg"
											alt="North Central Texas Academy"
											title="North Central Texas Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-76 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/southwestern-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/southwestern_academy_logo.jpg"
											alt="Southwestern Academy" title="Southwestern Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-77 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-north-alabama.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/university_of_north_alabama_logo.jpg"
											alt="University of North Alabama"
											title="University of North Alabama" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-78 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/college-of-lake-county.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/college_of_lake_county_logo.jpg"
											alt="College of Lake County" title="College of Lake County" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-79 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/northern-arizona-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/northern_arizona_university_logo.jpg"
											alt="Northern Arizona University "
											title="Northern Arizona University " /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-80 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-central-missouri.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/university_of_central_missouri_logo.jpg"
											alt="University of Central Missouri"
											title="University of Central Missouri" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-81 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lake-land-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lake_land_college.jpg"
											alt="Lake Land College" title="Lake Land College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-82 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-north-carolina-wilmington.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/untitled-1.jpg"
											alt="University of North Carolina Wilmington"
											title="University of North Carolina Wilmington" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-83 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/jacksonville-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/jacksonville.png"
											alt="Jacksonville University" title="Jacksonville University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-84 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/interlink-language-centers.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/interlink.png"
											alt="INTERLINK Language Centers"
											title="INTERLINK Language Centers" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-85 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/ohio-wesleyan-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/photo.jpg"
											alt="Ohio Wesleyan University"
											title="Ohio Wesleyan University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-86 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/oklahoma-city-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ocu.png"
											alt="Oklahoma City University"
											title="Oklahoma City University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-87 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/damore-mckim-school-of-business-northeastern-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ne-damore.png"
											alt="D’Amore-McKim School of Business, Northeastern University"
											title="D’Amore-McKim School of Business, Northeastern University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-88 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/northeastern-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/nu-seal.jpg"
											alt="Northeastern University" title="Northeastern University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-89 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/arizona-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/z1.png"
											alt="Arizona State University"
											title="Arizona State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-90 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/college-of-central-florida.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cf-profile.jpg"
											alt="College of Central Florida"
											title="College of Central Florida" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-91 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/tacoma-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/tacomacc.png"
											alt="Tacoma Community College"
											title="Tacoma Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-92 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cascadia-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cascadia-logo.png"
											alt="Cascadia College" title="Cascadia College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-93 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/western-new-england-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/wne-profile.png"
											alt="Western New England University"
											title="Western New England University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-94 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/towson-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/towson.png"
											alt="Towson University" title="Towson University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-95 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-findlay.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/findlay.png"
											alt="University of Findlay" title="University of Findlay" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-96 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/wayland-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/wayland-profile.jpg"
											alt="Wayland Academy" title="Wayland Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-97 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-calverton-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/calverton-profile.jpg"
											alt="The Calverton School" title="The Calverton School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-98 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-johnsbury-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/sja-profile.jpg"
											alt="St. Johnsbury Academy" title="St. Johnsbury Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-99 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/orono-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ohs.png"
											alt="Orono High School" title="Orono High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-100 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/city-university-of-seattle.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cityu-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-101 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/central-pacific-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cpc-profile.jpg"
											alt="Central Pacific College" title="Central Pacific College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-102 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cedar-crest-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cedar-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-103 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/american-honors.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ah-profile.jpg"
											alt="American Honors" title="American Honors" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-104 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/weber-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/weber.png"
											alt="Weber State University" title="Weber State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-105 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/indiana-institute-of-technology-indiana-tech.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/indianatech-logo.png"
											alt="Indiana Institute of Technology (Indiana Tech)"
											title="Indiana Institute of Technology (Indiana Tech)" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-106 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/devry-university-and-its-keller-graduate-school-of-management.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/devry-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-107 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/drexel-english-language-center.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/drexelelc-profile.jpg"
											alt="Drexel English Language Center"
											title="Drexel English Language Center" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-108 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/fountain-valley-school-of-colorado.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fvs-profile.jpg"
											alt="Fountain Valley School of Colorado"
											title="Fountain Valley School of Colorado" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-109 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fontbonne-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fontbonne-profile.jpg"
											alt="Fontbonne University" title="Fontbonne University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-110 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/full-sail-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fullsail-profile.jpg"
											alt="Full Sail University" title="Full Sail University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-111 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/gonzaga-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/gonzaga-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-112 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/grand-river-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/gra-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-113 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/green-river-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/grcc-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-114 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/illinois-eastern-community-colleges.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/iecc-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-115 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/iona-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/iona-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-116 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/jacksonville-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/jsu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-117 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/johnson-wales-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/jwu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-118 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/junipero-serra-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/serra-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-119 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/justin-siena-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/jsh-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-120 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/la-lumiere-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/llm-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-121 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lewis-clark-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lwc-profile.jpg"
											alt="Lewis &amp; Clark College"
											title="Lewis &amp; Clark College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-122 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/liberty-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/liberty-profile.jpg"
											alt="Liberty University" title="Liberty University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-123 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lincoln-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lincoln-profile.jpg"
											alt="Lincoln Academy" title="Lincoln Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-124 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/maui-preparatory-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/maui-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-125 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/maumee-valley-country-day-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mvcds-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-126 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/mentora-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mentora-profile.jpg"
											alt="Mentora College" title="Mentora College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-127 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/mercyhurst-preparatory-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/pia-profile.jpg"
											alt="Mercyhurst Preparatory School"
											title="Mercyhurst Preparatory School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-128 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/montana-state-university-billings.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/msub-profile.jpg"
											alt="Montana State University Billings"
											title="Montana State University Billings" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-129 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/montverde-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mva-profile.jpg"
											alt="Montverde Academy" title="Montverde Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-130 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/moraine-valley-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mvcc-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-131 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/mount-saint-marys-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/msmu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-132 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/muhlenberg-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/muhlenberg-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-133 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/murray-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/msu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-134 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/north-seattle-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/nsc-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-135 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/northeastern-illinois-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/neiu-profile.jpg"
											alt="Northeastern Illinois University"
											title="Northeastern Illinois University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-136 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/northeastern-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/nsuok-profile.jpg"
											alt="Northeastern State University"
											title="Northeastern State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-137 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/pierce-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/piercecollege-profile.jpg"
											alt="Pierce College" title="Pierce College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-138 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/saint-paul-lutheran-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/splhs-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-139 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/sam-houston-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/Untitled-1-1.jpg"
											alt="Sam Houston State University"
											title="Sam Houston State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-140 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/san-jose-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/3.jpg"
											alt="San Jose State University"
											title="San Jose State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-141 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/skagit-valley-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/svc-profile.jpg"
											alt="Skagit Valley College" title="Skagit Valley College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-142 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/south-seattle-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ssc-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-143 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/southern-new-hampshire-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/snhu-profile.jpg"
											alt="Southern New Hampshire University"
											title="Southern New Hampshire University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-144 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/southwestern-oregon-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/socc-profile.jpg"
											alt="Southwestern Oregon Community College"
											title="Southwestern Oregon Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-145 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/squaw-valley-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/sva-profile.jpg"
											alt="Squaw Valley Academy" title="Squaw Valley Academy" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-146 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fairfax-christian-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fcs-profile.jpg"
											alt="Fairfax Christian School"
											title="Fairfax Christian School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-147 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-michaels-senior-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/stmikes-profile_0.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-148 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-norbert-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/snc-profile.png" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-149 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-timothys-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/sts-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-150 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/tennessee-tech-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ttu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-151 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/texas-wesleyan-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/txwes-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-152 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-orme-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/orme-profile.jpg"
											alt="The Orme School" title="The Orme School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-153 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-arkansas-fort-smith.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uafs-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-154 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-north-texas.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/unt-profile.jpg"
											alt="University of North Texas"
											title="University of North Texas" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-155 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-south-florida.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/usf-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-156 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-wisconsin-colleges.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uwc-profile.jpg"
											alt="University of Wisconsin Colleges"
											title="University of Wisconsin Colleges" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-157 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/university-of-wisconsin-platteville.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uwplatteville-profile.jpg"
											alt="University of Wisconsin-Platteville"
											title="University of Wisconsin-Platteville" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-158 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/utp-high-schools.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/upt-high-schools-2.jpg"
											alt="UTP High Schools" title="UTP High Schools" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-159 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/villanova-preparatory-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/villanova-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-160 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/western-washington-university-iep.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/wwu-profile.jpg" alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-161 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/wichita-state-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/wichita-profile.jpg"
											alt="Wichita State University"
											title="Wichita State University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-162 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-idaho.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ui-profile.jpg"
											alt="University of Idaho" title="University of Idaho" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-163 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/the-northwest-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/northwest-profile.jpg"
											alt="The Northwest School" title="The Northwest School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-164 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/susquehanna-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/susqu-profile.jpg"
											alt="Susquehanna University" title="Susquehanna University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-165 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/foxcroft-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/foxcroft-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-166 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/florida-national-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/Untitled-11.jpg"
											alt="Florida National University"
											title="Florida National University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-167 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fisher-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fisher-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-168 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/ferrum-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ferrum-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-169 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/elgin-community-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/elgin-profile.jpg"
											alt="Elgin Community College" title="Elgin Community College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-170 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/dean-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/dean-profile.jpg"
											alt="Dean College" title="Dean College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-171 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/concordia-university-st-paul.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/csp-profile.jpg"
											alt="Concordia University, St. Paul"
											title="Concordia University, St. Paul" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-172 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/concordia-university-chicago.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/logo-concordiauniversitychicago-500x500px.png"
											alt="Concordia University Chicago"
											title="Concordia University Chicago" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-173 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/community-colleges-of-spokane.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/ccs-partner.jpg"
											alt="Community Colleges of Spokane"
											title="Community Colleges of Spokane" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-174 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/college-of-san-mateo.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/csm-profile.jpg"
											alt="College of San Mateo" title="College of San Mateo" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-175 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/chaminade-college-preparatory-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/chaminade-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-176 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/albright-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/albright-profile.jpg"
											alt="Albright College" title="Albright College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-177 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/besant-hill-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/besanthill-profile.jpg"
											alt="Besant Hill School" title="Besant Hill School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-178 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/california-state-university-fresno.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/csu-fresno-profile.jpg"
											alt="California State University, Fresno"
											title="California State University, Fresno" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-179 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/alfred-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/alfred-profile.jpg"
											alt="Alfred University" title="Alfred University" /></a>
									</div>
								</div>
							</div>
							<div
								class="views-row views-row-180 views-row-even views-row-last">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/california-state-university-san-bernardino.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/csusb-profile.jpg"
											alt="California State University, San Bernardino"
											title="California State University, San Bernardino" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div id="quicktabs-tabpage-_i_t_c_c_a_ch_ng_t_i-2"
				class="quicktabs-tabpage quicktabs-hide">
				<section id="block-views-admin-truong-block-3"
					class="block block-views clearfix">
					<div
						class="view view-admin-truong view-id-admin_truong view-display-id-block_3 doi-tac-slide view-dom-id-150ebf6dc11369dee2273aceaa7211f7">
						<div class="view-content">
							<div class="views-row views-row-1 views-row-odd views-row-first">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/bodwell-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/bodwell-logo.png"
											alt="Bodwell High School" title="Bodwell High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-2 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/willowdale-high-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/willo-main.png"
											alt="Willowdale High School" title="Willowdale High School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-3 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/kwantlen-polytechnic-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/kpu.jpg"
											alt="Kwantlen Polytechnic University"
											title="Kwantlen Polytechnic University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-4 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/greater-saskatoon-catholic-schools.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/greater_saskatoon_catholic_schools_logo.png"
											alt="Greater Saskatoon Catholic Schools"
											title="Greater Saskatoon Catholic Schools" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-5 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/lambton-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/lambton_college_logo_0.jpg"
											alt="Lambton College" title="Lambton College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-6 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/confederation-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/confederation_college_logo.jpg"
											alt="Confederation College" title="Confederation College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-7 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/concordia-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/concordia_university_logo.jpg"
											alt="Concordia University" title="Concordia University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-8 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/canadore-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/canadore_college_logo.jpg"
											alt="Canadore College" title="Canadore College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-9 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/golden-hills-school-district.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/golden_hills_school_district_logo.jpg"
											alt="Golden Hills School District"
											title="Golden Hills School District" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-10 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/district-school-board-of-niagara.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/district_school_board_of_niagara_logo.jpg"
											alt="District School Board of Niagara"
											title="District School Board of Niagara" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-11 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/mount-royal-university.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mru.png"
											alt="Mount Royal University" title="Mount Royal University" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-12 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/langara-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/langara.png"
											alt="Langara College" title="Langara College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-13 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/george-brown-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/georgebrown.png"
											alt="George Brown College" title="George Brown College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-14 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/niagara-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/niagara.png"
											alt="Niagara College" title="Niagara College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-15 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/conestoga-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/conestoga.png"
											alt="Conestoga College" title="Conestoga College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-16 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/vancouver-school-board.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/vsb.png"
											alt="Vancouver School Board" title="Vancouver School Board" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-17 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/selkirk-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/selkirk_college.png"
											alt="Selkirk College" title="Selkirk College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-18 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/centennial-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/centennial-profile.jpg"
											alt="Centennial College" title="Centennial College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-19 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/cambrian-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/cambrian-profile.jpg"
											alt="Cambrian College" title="Cambrian College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-20 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fleming-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fleming.png"
											alt="Fleming College" title="Fleming College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-21 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/fulford-academy.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/fulford-profile2.png"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-22 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/georgian-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/georgian-profile.jpg"
											alt="Georgian College" title="Georgian College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-23 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/manitoba-institute-of-trades-and-technology.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/mitt-profile.jpg"
											alt="Manitoba Institute of Trades and Technology"
											title="Manitoba Institute of Trades and Technology" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-24 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/parkland-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/parkland-profile.jpg"
											alt="Parkland College" title="Parkland College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-25 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/pickering-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/pickering-profile.jpg"
											alt="Pickering College" title="Pickering College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-26 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/st-lawrence-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/slc-profile.jpg"
											alt="St. Lawrence College" title="St. Lawrence College" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-27 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/trinity-college-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/trinity-profile.jpg"
											alt="" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-28 views-row-even">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/university-of-windsor.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/uwindsor-profile.jpg"
											alt="University of Windsor" title="University of Windsor" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-29 views-row-odd">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a href="vi/danh-sach-truong/vancouver-film-school.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/vfs-profile.jpg"
											alt="Vancouver Film School" title="Vancouver Film School" /></a>
									</div>
								</div>
							</div>
							<div class="views-row views-row-30 views-row-even views-row-last">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/battle-river-school-division.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/brsd-profile.jpg"
											alt="Battle River School Division"
											title="Battle River School Division" /></a>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</section>
			</div>
			<div id="quicktabs-tabpage-_i_t_c_c_a_ch_ng_t_i-3"
				class="quicktabs-tabpage quicktabs-hide">
				<section id="block-views-admin-truong-block-6"
					class="block block-views clearfix">
					<div
						class="view view-admin-truong view-id-admin_truong view-display-id-block_6 doi-tac-slide view-dom-id-1118515b8858d60e5a31d100d6558069">
						<div class="view-content">
							<div
								class="views-row views-row-1 views-row-odd views-row-first views-row-last">
								<div class="views-field views-field-field-image">
									<div class="field-content">
										<a
											href="vi/danh-sach-truong/australian-national-airline-college.html"><img
											typeof="foaf:Image" class="img-responsive"
											src="sites/default/files/images/logo/anac-profile.jpg"
											alt="Australian National Airline College"
											title="Australian National Airline College" /></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</section>