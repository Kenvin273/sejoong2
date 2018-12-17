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
<%@page import="com.tuvi.dao.News"%>

<div class="row">

	<div class="col-12 grid-margin">
		<div class="card">
			<div class="card-body">
				
					<h5 class="card-title mb-4" >Danh sách tin tức 2</h5>
					
					
				<form action="">
					<button type="submit" class="btn btn-success mr-2" type="submit" value="add-news" name ="type"
						formaction="${pageContext.request.contextPath}/Layouts">Thêm bài viết</button>
				
				</form>	
						

					
					
				<div class="fluid-container">
					<!--------------------------------------------------------------------------------- -->
					<%
						try {
							ArrayList<News> list = (ArrayList<News>) DBUtil
									.queryNews(DBConnection.getMySQLConnection());
							if (list.size() > 0) {
								int i = 1;
								for (News ev : list) {
									try {
					%>

					<div class="row ticket-card mt-3 pb-2 border-bottom pb-3 mb-3">
						<!-- <div class="col-md-1">
								<img class="img-sm rounded-circle mb-4 mb-md-0"
									src="images/faces/face1.jpg" alt="profile image">
							</div> -->
						<div class="ticket-details col-md-9">
							<div class="d-flex">
								<p class="text-dark font-weight-semibold mr-2 mb-0 no-wrap">
									<%
										out.println(String.valueOf(i) + ". ");
														i++;
									%>
								</p>
						<p class="mb-0 ellipsis">
									<%
										out.print(ev.getTitle());
									%>
								</p>
							</div>
							<p class="text-gray ellipsis mb-2">
								<%
									out.print(ev.getContent().toString());
								%>
							</p>
							<div class="row text-gray d-md-flex d-none">
								<%-- <div class="col-4 d-flex">
									<small class="mb-0 mr-2 text-muted text-muted">Thời
										gian diễn ra:</small> <small
										class="Last-responded mr-2 mb-0 text-muted text-muted">
										<%
											out.print(ev.getTimePlace());
										%>
									</small>
								</div> --%>
								<div class="col-4 d-flex">
									<small class="mb-0 mr-2 text-muted text-muted">Thời
										gian tạo :</small> <small
										class="Last-responded mr-2 mb-0 text-muted text-muted">
										<%
											out.print(ev.getTimeCreated());
										%>
									</small>
								</div>
							</div>
						</div>
						<div class="ticket-actions col-md-2">
							<div class="btn-group dropdown">
								<button type="button"
									class="btn btn-success dropdown-toggle btn-sm"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">Tùy chọn</button>
								<div class="dropdown-menu">
									<a class="dropdown-item"
										href="${pageContext.request.contextPath}/CRUDNews?id=<%out.print(ev.getNewsId());%>&type=edit-news">
										<i class="fa fa-reply fa-fw"></i>Sửa bài viết
									</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item"
										href="${pageContext.request.contextPath}/CRUDNews?id=<%out.print(ev.getNewsId());%>&type=delete-news"
										style="color: red;"> <i
										class="fa fa-times text-danger fa-fw"></i>Xóa bài viết
									</a>
								</div>
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
					<!--------------------------------------------------------------------------------  -->


				</div>
			</div>
		</div>
	</div>
</div>