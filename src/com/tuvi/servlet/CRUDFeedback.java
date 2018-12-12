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
import com.tuvi.dao.ServiceInfo;
import com.tuvi.dao.StudentFeedback;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDFeedback
 */
@WebServlet("/CRUDFeedback")
public class CRUDFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("CRUDFeedback doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDFeedback doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String studentName = request.getParameter("studentName");
				String content = request.getParameter("content");
				String image = request.getParameter("image");
				String infor = request.getParameter("infor");
				
				
				if (studentName == null || content == null||
						image == null || infor == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				StudentFeedback studentFeedback = new StudentFeedback();
				studentFeedback.setStudentName(studentName);
				studentFeedback.setContent(content);
				studentFeedback.setImage(image);
				studentFeedback.setInfor(infor);

				try {
					result = DBUtil.insertStudentFeedback(DBConnection.getMySQLConnection(), studentFeedback);
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
			case 2: {
				//update
				String studentName = request.getParameter("studentName");
				String content = request.getParameter("content");
				String image = request.getParameter("image");
				String infor = request.getParameter("infor");
				String sid = request.getParameter("id");
								
				if (studentName == null || content == null||
						image == null || infor == null|| sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				StudentFeedback studentFeedback = new StudentFeedback();
				studentFeedback.setStudentName(studentName);
				studentFeedback.setContent(content);
				studentFeedback.setImage(image);
				studentFeedback.setInfor(infor);
				studentFeedback.setStudentId(id);
				
				try {
					result = DBUtil.updateStudentFeedback(DBConnection.getMySQLConnection(), studentFeedback);
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
				//delete
				String sid = request.getParameter("id");
				if (sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				try {
					result = DBUtil.deleteStudentFeedback(DBConnection.getMySQLConnection(), id);
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
					StudentFeedback resultObject = DBUtil.getStudentFeedback(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("studentName", resultObject.getStudentName());
							json.put("content", resultObject.getContent());
							json.put("image", resultObject.getImage());	
							json.put("infor", resultObject.getInfor());	
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
				//get all
				try {
					ArrayList<StudentFeedback> list = (ArrayList<StudentFeedback>) DBUtil.queryStudentFeedback(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (StudentFeedback studentFeedback: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("serviceName", studentFeedback.getStudentName());
								json.put("content", studentFeedback.getContent());
								json.put("image", studentFeedback.getImage());
								json.put("infor", studentFeedback.getInfor());
								jsonList.put(String.valueOf(studentFeedback.getStudentId()), json);
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
		System.out.println("CRUDFeedback doPost end");
	}

}
