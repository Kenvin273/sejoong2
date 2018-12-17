<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>

<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.tuvi.utils.DBConnection"%>
<%@page import="com.tuvi.utils.DBUtil"%>
<%@page import="com.tuvi.dao.RegisteredForm"%>
<div class="row">
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Danh sách đăng ký</h4>
					<div class="table-responsive">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>#</th>
									<th>Họ và tên</th>
									<th>Email</th>
									<th>Số điện thoại</th>
									<th>Quốc gia</th>
									<th>Nội dung</th>
									<th>Active</th>
								</tr>
							</thead>
							<tbody>
							<%
						try {
							ArrayList<RegisteredForm> list = (ArrayList<RegisteredForm>) DBUtil
									.queryRegisteredForm(DBConnection.getMySQLConnection());
							if (list.size() > 0) {
								int i = 1;
								for (RegisteredForm ev : list) {
									try {
					%>
								<tr>
									<td class="font-weight-medium"><%out.print(ev.getPersonId()) ;%></td>
									<td><%out.print(ev.getFullName()) ;%></td>
									<td><%out.print(ev.getEmail()) ;%></td>
									<td><%out.print(ev.getPhoneNumber()) ;%></td>
									<td><%out.print(ev.getLocation()) ;%></td>
									<td><%out.print(ev.getContent()) ;%></td>
									<td class="badge badge-danger">Pending</td>
								</tr>
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
								
							
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>