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

import org.json.JSONException;
import org.json.JSONObject;

import com.tuvi.constant.ErrorCode;
import com.tuvi.dao.PartnerInfo;
import com.tuvi.dao.RegisteredForm;
import com.tuvi.dao.ServiceInfo;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDRegisteredForm
 */
@WebServlet("/CRUDRegisteredForm")
public class CRUDRegisteredForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CRUDRegisteredForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("CRUDRegisteredForm doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null) {
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);

		System.out.println("CRUDPartner doPost type=" + type);

		int result = 0;

		switch (type) {
		case 1: {
			// create
			String fullName = request.getParameter("fullName");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String location = request.getParameter("location");

			if (fullName == null || email == null || phoneNumber == null
					|| subject == null || content == null || location == null) {
				out.print(ErrorCode.INVALID_INPUT.code());
				return;
			}

			RegisteredForm registeredForm = new RegisteredForm();

			registeredForm.setFullName(fullName);
			registeredForm.setEmail(email);
			registeredForm.setPhoneNumber(phoneNumber);
			registeredForm.setContent(content);
			registeredForm.setLocation(location);
			registeredForm.setSubject(subject);

			try {
				result = DBUtil.insertRegisteredForm(
						DBConnection.getMySQLConnection(), registeredForm);
				if (result == 1) {
					out.print(ErrorCode.OK.code());
				} else {
					out.print(ErrorCode.ERROR_OCCUR.code());
				}

			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(ErrorCode.EXCEPTION.code());
				break;
			}
			break;
		}
		case 2: {
			// update
			String fullName = request.getParameter("fullName");
			String email = request.getParameter("email");
			String phoneNumber = request.getParameter("phoneNumber");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String location = request.getParameter("location");
			String sid = request.getParameter("id");
							
			if (fullName == null || email == null || phoneNumber == null
					|| subject == null || content == null || location == null || sid == null){
				out.print(ErrorCode.INVALID_INPUT.code());
				return;
			}
			int id = Integer.parseInt(sid);
			
			RegisteredForm registeredForm = new RegisteredForm();
			registeredForm.setFullName(fullName);
			registeredForm.setEmail(email);
			registeredForm.setPhoneNumber(phoneNumber);
			registeredForm.setContent(content);
			registeredForm.setLocation(location);
			registeredForm.setSubject(subject);
			registeredForm.setPersonId(id);
			
			try {
				result = DBUtil.updateRegisteredForm(DBConnection.getMySQLConnection(), registeredForm);
				if (result == 1){
					out.print(ErrorCode.OK.code());
				} else {
					out.print(ErrorCode.ERROR_OCCUR.code());
				}					
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(ErrorCode.EXCEPTION.code());
				break;
			}
			break;
		}
		case 3: {
			// delete
			String sid = request.getParameter("id");
			if (sid == null){
				out.print(ErrorCode.INVALID_INPUT.code());
				return;
			}
			int id = Integer.parseInt(sid);
			try {
				result = DBUtil.deleteRegisteredForm(DBConnection.getMySQLConnection(), id);
				if (result == 1){
					out.print(ErrorCode.OK.code());
				} else {
					out.print(ErrorCode.ERROR_OCCUR.code());
				}					
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(-1);					
			}				
			break;
		}
		case 4: {
			//get
			String sid = request.getParameter("id");
			if (sid == null){
				out.print(ErrorCode.INVALID_INPUT.code());
				return;
			}
			int id = Integer.parseInt(sid);
			System.out.println("id=" + id);
			try {
				RegisteredForm resultObject = DBUtil.getRegisteredForm(DBConnection.getMySQLConnection(), id);
				if (resultObject != null){
					JSONObject  json = new JSONObject();
					try {
						//json.put("id", resultObject.getEvetnId());
						json.put("fullName", resultObject.getFullName());
						json.put("email", resultObject.getEmail());
						json.put("phoneNumber", resultObject.getPhoneNumber());	
						json.put("subject", resultObject.getSubject());	
						json.put("content", resultObject.getContent());	
						json.put("location", resultObject.getLocation());
						json.put("processed", resultObject.isProcessed());
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						out.print(ErrorCode.EXCEPTION.code());		
						break;
					}					
					out.print(json.toString());		
				} else {
					out.print(ErrorCode.ERROR_OCCUR.code());
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(ErrorCode.EXCEPTION.code());					
			}	
			break;
		}
		case 5: {
			// get all
			try {
				ArrayList<RegisteredForm> list = (ArrayList<RegisteredForm>) DBUtil
						.queryRegisteredForm(DBConnection.getMySQLConnection());
				if (list.size() > 0) {
					JSONObject jsonList = new JSONObject();
					for (RegisteredForm registeredForm : list) {
						JSONObject json = new JSONObject();
						try {
							json.put("fullName", registeredForm.getFullName());
							json.put("content", registeredForm.getContent());
							json.put("email",
									registeredForm.getEmail());
							json.put("phoneNumber", registeredForm.getPhoneNumber());
							json.put("subject", registeredForm.getSubject());
							json.put("location", registeredForm.getLocation());
							jsonList.put(
									String.valueOf(registeredForm.getPersonId()),
									json);
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							continue;
						}
					}
					out.print(jsonList);
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(ErrorCode.EXCEPTION.code());
			}
			break;
		}
		case 6: {
			// get all with status
			String sproccessed = request.getParameter("proccessed");
			boolean processed = Boolean.parseBoolean(sproccessed);
			try {
				ArrayList<RegisteredForm> list = (ArrayList<RegisteredForm>) DBUtil
						.queryRegisteredFormWithStatus(DBConnection.getMySQLConnection(), processed);
				if (list.size() > 0) {
					JSONObject jsonList = new JSONObject();
					for (RegisteredForm registeredForm : list) {
						JSONObject json = new JSONObject();
						try {
							json.put("fullName", registeredForm.getFullName());
							json.put("content", registeredForm.getContent());
							json.put("email",
									registeredForm.getEmail());
							json.put("phoneNumber", registeredForm.getPhoneNumber());
							json.put("subject", registeredForm.getSubject());
							json.put("location", registeredForm.getLocation());
							jsonList.put(
									String.valueOf(registeredForm.getPersonId()),
									json);
						} catch (JSONException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
							continue;
						}
					}
					out.print(jsonList);
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				out.print(ErrorCode.EXCEPTION.code());
			}
			break;
		}
		default: {
			out.print(ErrorCode.INVALID_INPUT.code());
		}
		}
		System.out.println("CRUDPartner doPost end");
	}

}
