package com.tuvi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.tuvi.constant.ErrorCode;
import com.tuvi.dao.AdminAccount;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDAdmin
 */
@WebServlet("/CRUDAdmin")
public class CRUDAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int permissionUser = 0;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

		String value1 = request.getParameter("type").toString();
		String value2 = request.getParameter("id").toString();
		if (permissionUser == 1) {
			if (value1.equals("edit-info")) {

				System.out.println("info" + value2);
				Openpage(response);
			} else if (value1.equals("edit-password")) {
				System.out.println("password" + value2);
				Openpage(response);
			} else if (value1.equals("edit-delete")) {
				System.out.println("delete" + value2);
				
				
				try {
					int result = DBUtil.deleteAdminAccountID(
							DBConnection.getMySQLConnection(), Integer.parseInt(value2));
					
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
				Openpage(response);
			} else {
				System.out.println("erro");
				Openpage(response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		int type = Integer.parseInt(stype);
		System.out.println("CRUDAdmin doPost");
		System.out.println("CRUDAdmin doPost type="+ type);
		
		int result = 0;
		PrintWriter out = response.getWriter();
		switch (type){
			case 1: {
				//create				
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				String spermission = request.getParameter("permission");
				if (userName == null || password == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int permission = 0;
				try {
					permission = Integer.parseInt(spermission);
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				AdminAccount adminAccount = new AdminAccount();
				adminAccount.setUserName(userName);
				//event.setTimeCreated(timeCreated);
				adminAccount.setPassword(password);
				adminAccount.setPermission(permission);			

				try {
					result = DBUtil.insertAdminAccount(DBConnection.getMySQLConnection(), adminAccount);
					if (result == 1){
						out.print(0);
					} else {
						out.print(1);
					}					
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					out.print(-1);
					break;
				}				
				break;
			}
			case 2: {
				//update
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				String sid = request.getParameter("id");
				String spermission = request.getParameter("permission");
				int permission = 0, id = 0;
				if (userName == null|| password == null||sid == null||spermission == null){
					out.print( ErrorCode.INVALID_INPUT.code());
					return;
				}
				try {
					permission = Integer.parseInt(spermission);
					id = Integer.parseInt(sid);
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				
				AdminAccount adminAccount = new AdminAccount();
				adminAccount.setUserName(userName);
				adminAccount.setPassword(password);
				adminAccount.setPermission(permission);
				adminAccount.setUserId(id);
				
				try {
					result = DBUtil.updateAdminAccount(DBConnection.getMySQLConnection(), adminAccount);
					if (result == 1){
						out.print(0);
					} else {
						out.print(1);
					}
					
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					out.print(-1);
					break;
				}	
				
				break;
			}
			case 3: {
				//delete
				String sid = request.getParameter("id");
				if (sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = 0;
				try {
					id = Integer.parseInt(sid);
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				try {
					result = DBUtil.deleteAdminAccountID(DBConnection.getMySQLConnection(), id);
					out.print(0);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					out.print(ErrorCode.EXCEPTION.code());					
				}				
				break;
			}
			case 4: {
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				System.out.println("userName,password : " + userName + "+"
						+ password);
				try {
					AdminAccount resultObject = DBUtil.getAdminAccount(
							DBConnection.getMySQLConnection(), userName);
					if (resultObject != null) {

						if (password.equals(resultObject.getPassword())) {
							HttpSession session = request.getSession();
							permissionUser = resultObject.getPermission();
							session.setAttribute("actionSession", userName);
							request.setAttribute("actionSession", userName);
							Openpage(response);

							// out.print(json.toString());
						} else {
							OpenpageAgain(response);
						}
						/*
						 * RequestDispatcher rd =
						 * request.getRequestDispatcher("/admin/index.html");
						 * rd.forward(request, response);
						 */

					} else {
						OpenpageAgain(response);
						// out.print(1);
					}
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					out.print(-1);
				}
				break;
			}
			case 5: {
				//get all
				try {
					ArrayList<AdminAccount> list = (ArrayList<AdminAccount>) DBUtil.queryAdminAccount(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						for (AdminAccount adminAccount: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("userId", adminAccount.getUserId());
								json.put("userName", adminAccount.getUserName());
								json.put("password", adminAccount.getPassword());
								json.put("permission", adminAccount.getPermission());						
							} catch (JSONException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
								continue;
							}					
							out.print(json.toString());	
						}
					}
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					out.print(-1);
				}
				break;
			}
			default: {
				out.print(1);
			}
		}
		System.out.println("CRUDAdmin doPost end");
	}
	public void Openpage(HttpServletResponse res) throws IOException{
	    // here type your JSP page that you want to open
	    res.sendRedirect("admin/index.jsp");
	    }
	public void OpenpageAgain(HttpServletResponse res) throws IOException{
	    // here type your JSP page that you want to open
	    res.sendRedirect("admin/login.jsp");
	    }
}
