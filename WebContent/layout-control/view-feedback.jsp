<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.io.*,java.util.*"  %> 

<%@page import="java.util.ArrayList"%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tuvi.utils.DBConnection"%>
<%@page import="com.tuvi.utils.DBUtil"%>
<%@page import="com.tuvi.dao.StudentFeedback"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>

<section id="block-views-admin-cam-nghi-hoc-vien-block-1"
					class="block block-views block-title-style container clearfix">
				<h3 class="block-title">Cảm nghĩ học viên</h3>
				<div
					class="view view-admin-cam-nghi-hoc-vien view-id-admin_cam_nghi_hoc_vien view-display-id-block_1 block-views-cam-nghi-home view-dom-id-b05ad76e8fc34a7037f72fbaf5a85ffb">
					<div id="owl-example-1" class="owl-carousel">
					
						<%
						try {
							ArrayList<StudentFeedback> list = (ArrayList<StudentFeedback>) DBUtil
									.queryStudentFeedback(DBConnection.getMySQLConnection());
							
							if (list.size() > 0) {
								int i = 1;
								for (StudentFeedback ev : list) {
									try {
										
						%>
						
						<div class="item">
						<span class="hide"><% out.print(ev.getStudentId()); %></span>
							<div class="views-field views-field-body">
								<div class="field-content">
									<p><% out.print(ev.getContent()); %></p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="S:/anh2.png"
										alt="<% out.print(ev.getStudentName()); %>" title="<% out.print(ev.getStudentName()); %>" />
										<img typeof="foaf:Image" class="img-responsive"
										src="S:/anh1.jpg"
										alt="<% out.print(ev.getStudentName()); %>" title="<% out.print(ev.getStudentName()); %>" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content"><% out.print(ev.getStudentName()); %></span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content"><% out.print(ev.getInfor()); %></div>
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
						<!-- <div class="item">
							<div class="views-field views-field-body">
								<div class="field-content">
									<p>Con cám ơn chị Hiền và đặc biệt là cô Lan đã đồng hành
										cùng con trong suốt 2 tháng và hướng dẫn con trong quá trình
										làm hồ sơ và xin Học bổng.</p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="sites/default/files/styles/thumbnail/public/cam-nghi/201709/binh_johnb0f8.jpg?itok=dP8FsToN"
										alt="Bình John" title="Bình John" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content">Bình John</span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content">Học bổng $33,000 / năm -
									Wayland Academy</div>
							</div>
						</div>
						<div class="item">
							<div class="views-field views-field-body">
								<div class="field-content">
									<p>Mình thích môi trường đa văn hóa và năng động của nước
										Mỹ. Nhờ có sự tư vấn và giúp đỡ nhiệt tình của chị Vy ở
										SEJOONG, mình đã dễ dàng tìm được ngôi trường có chất lượng
										đào tạo MBA khá tốt và phù hợp với điều kiện của mình</p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="sites/default/files/styles/thumbnail/public/cam-nghi/201606/4-_nguyen_khanh_linh6209.jpg?itok=1VpZcivU"
										alt="" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content">Nguyễn Khánh Linh</span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content">Sinh viên theo học MBA, trường
									Southern New Hampshire</div>
							</div>
						</div>
						<div class="item">
							<div class="views-field views-field-body">
								<div class="field-content">
									<p>Mình đặc biệt bị ấn tượng bởi sự nhiệt tình và cởi mở
										của các anh chị SEJOONG. Từ giai đoạn tư vấn làm hồ sơ đến
										thực hiện, phỏng vấn thư mời, làm Visa, các anh chị luôn rất
										quan tâm đến mình. Mình cảm thấy thật dễ dàng để bắt đầu hành
										trình mới đến nước Mỹ</p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="sites/default/files/styles/thumbnail/public/cam-nghi/201606/2-_le_thuy_lien_nhibb4c.jpg?itok=bzOaXRiN"
										alt="" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content">Lê Thủy Liên Nhi</span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content">Sinh viên theo học bậc Cử nhân
									chuyên ngành Tài chính, trường Đại học DeVry University</div>
							</div>
						</div>
						<div class="item">
							<div class="views-field views-field-body">
								<div class="field-content">
									<p>Đặc biệt cảm ơn các anh chị trong SEJOONG đã giúp mình
										thực hiện “giấc mơ Mỹ”. Nhờ có sự tư vấn cặn kẽ, chi tiết và
										nhiệt tình của SEJOONG mà mình từng bước thực hiện giấc mơ du
										học tại trường Arkansas State University</p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="sites/default/files/styles/thumbnail/public/cam-nghi/201606/1-_nguyen_minh_viet-v13c5a.jpg?itok=pdSTN0hM"
										alt="" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content">Nguyễn Minh Việt</span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content">Sinh viên theo học Thạc sỹ,
									chuyên ngành truyền thông, trường Đại học Arkansas State
									University</div>
							</div>
						</div>
						<div class="item">
							<div class="views-field views-field-body">
								<div class="field-content">
									<p>Cảm ơn sự nhiệt tình của các anh chị ở SEJOONG đã giúp
										mình xin được visa chỉ sau một lần phỏng vấn. Hiện tại, mình
										đang học khóa Tiếng Anh dự bị tại trường Arkansas State
										University và kỳ học tới mình sẽ học chuyên ngành</p>
								</div>
							</div>
							<div class="views-field views-field-field-image">
								<div class="field-content">
									<img typeof="foaf:Image" class="img-responsive"
										src="sites/default/files/styles/thumbnail/public/cam-nghi/201606/6-_nguyen_quang_huy9efc.jpg?itok=mK35dZNj"
										alt="" />
								</div>
							</div>
							<div class="views-field views-field-title">
								<span class="field-content">Nguyễn Quang Huy</span>
							</div>
							<div class="views-field views-field-field-cong-viec">
								<div class="field-content">Sinh viên theo học chương trình
									Tiếng Anh, trường Arkansas State University</div>
							</div>
						</div> -->
					</div>
				</div>
				</section>