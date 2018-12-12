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
import com.tuvi.dao.Fair;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDFair
 */
@WebServlet("/CRUDFair")
public class CRUDFair extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDFair() {
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
		System.out.println("CRUDFair doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDFair doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String image = request.getParameter("image");
				String seo = request.getParameter("seo");
				if (title == null || content == null || image == null ||seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				Fair fair = new Fair();
				fair.setImage(image);
				fair.setTitle(title);
				fair.setContent(content);			
				fair.setSeo(seo);
				
				try {
					result = DBUtil.insertFair(DBConnection.getMySQLConnection(), fair);
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
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				String image = request.getParameter("image");
				String seo = request.getParameter("seo");
				String sid = request.getParameter("id");
								
				if (title == null || content == null || image == null || sid == null || seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				Fair fair = new Fair();
				fair.setImage(image);
				fair.setTitle(title);
				fair.setContent(content);
				fair.setId(id);
				fair.setSeo(seo);
				
				try {
					result = DBUtil.updateFair(DBConnection.getMySQLConnection(), fair);
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
					result = DBUtil.deleteFair(DBConnection.getMySQLConnection(), id);
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
					Fair resultObject = DBUtil.getFair(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("image", resultObject.getImage());
							json.put("timeCreated", resultObject.getTimeCreated().toString());
							json.put("title", resultObject.getTitle());
							json.put("content", resultObject.getContent());
							json.put("seo", resultObject.getSeo());	
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
					ArrayList<Fair> list = (ArrayList<Fair>) DBUtil.queryFair(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (Fair fair: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("image", fair.getImage());
								json.put("timeCreated", fair.getTimeCreated().toString());
								json.put("title", fair.getTitle());
								json.put("content", fair.getContent());
								json.put("seo", fair.getSeo());	
								jsonList.put(String.valueOf(fair.getId()), json);
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
		System.out.println("CRUDFair doPost end");
	}
}
