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
import com.tuvi.dao.News;
import com.tuvi.dao.ServiceInfo;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDService
 */
@WebServlet("/CRUDService")
public class CRUDService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDService() {
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
		System.out.println("CRUDService doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDService doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String serviceName = request.getParameter("serviceName");
				String content = request.getParameter("content");
				String seo = request.getParameter("seo");
				
				if (serviceName == null || content == null || seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				ServiceInfo serviceInfo = new ServiceInfo();
				serviceInfo.setServiceName(serviceName);
				serviceInfo.setContent(content);
				serviceInfo.setSeo(seo);

				try {
					result = DBUtil.insertService(DBConnection.getMySQLConnection(), serviceInfo);
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
				String serviceName = request.getParameter("serviceName");
				String content = request.getParameter("content");
				String seo = request.getParameter("seo");
				String sid = request.getParameter("id");
								
				if (serviceName == null || content == null || sid == null || seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				ServiceInfo serviceInfo = new ServiceInfo();
				serviceInfo.setServiceName(serviceName);
				serviceInfo.setContent(content);
				serviceInfo.setServiceId(id);
				serviceInfo.setSeo(seo);
				
				try {
					result = DBUtil.updateService(DBConnection.getMySQLConnection(), serviceInfo);
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
					result = DBUtil.deleteService(DBConnection.getMySQLConnection(), id);
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
					ServiceInfo resultObject = DBUtil.getService(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("serviceName", resultObject.getServiceName());
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
					ArrayList<ServiceInfo> list = (ArrayList<ServiceInfo>) DBUtil.queryService(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (ServiceInfo serviceInfo: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("serviceName", serviceInfo.getServiceName());
								json.put("content", serviceInfo.getContent());
								json.put("seo", serviceInfo.getSeo());
								
								jsonList.put(String.valueOf(serviceInfo.getServiceId()), json);
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
		System.out.println("CRUDService doPost end");
	}
}
