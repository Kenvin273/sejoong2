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
import com.tuvi.dao.LocationInfo;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDLocationInfo
 */
@WebServlet("/CRUDLocationInfo")
public class CRUDLocationInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDLocationInfo() {
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
		System.out.println("CRUDLocation doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDLocation doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String locationName = request.getParameter("locationName");
				String content = request.getParameter("content");
				String smapX = request.getParameter("mapX");
				String smapY = request.getParameter("mapY");
				
				if (locationName == null || content == null || smapX == null || smapY == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				LocationInfo locationInfo = new LocationInfo();
				locationInfo.setLocationName(locationName);
				locationInfo.setContent(content);
				try {
					locationInfo.setMapX(Float.parseFloat(smapX));
					locationInfo.setMapY(Float.parseFloat(smapY));
				} catch (NumberFormatException e){
					out.print(ErrorCode.ERROR_OCCUR.code());
					break;
				}

				try {
					result = DBUtil.insertLocationInfo(DBConnection.getMySQLConnection(), locationInfo);
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
				String locationName = request.getParameter("locationName");
				String content = request.getParameter("content");
				String smapX = request.getParameter("mapX");
				String smapY = request.getParameter("mapY");
				String sid = request.getParameter("id");
								
				if (locationName == null || content == null || smapX == null ||smapY == null|| sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				LocationInfo locationInfo = new LocationInfo();
				locationInfo.setLocationName(locationName);
				locationInfo.setContent(content);
				locationInfo.setLocationId(id);
				try {
					locationInfo.setMapX(Float.parseFloat(smapX));
					locationInfo.setMapY(Float.parseFloat(smapY));
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.ERROR_OCCUR.code());
					break;
				}
				
				try {
					result = DBUtil.updateLocationInfo(DBConnection.getMySQLConnection(), locationInfo);
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
					result = DBUtil.deleteLocationInfo(DBConnection.getMySQLConnection(), id);
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
					LocationInfo resultObject = DBUtil.getLocationInfo(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("locationName", resultObject.getLocationName());
							json.put("content", resultObject.getContent());
							json.put("mapX", resultObject.getMapX());	
							json.put("mapY", resultObject.getMapY());	
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
					ArrayList<LocationInfo> list = (ArrayList<LocationInfo>) DBUtil.queryLocationInfo(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (LocationInfo locationInfo: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("locationName", locationInfo.getLocationName());
								json.put("content", locationInfo.getContent());
								json.put("mapX", locationInfo.getMapX());
								json.put("mapY", locationInfo.getMapY());
								jsonList.put(String.valueOf(locationInfo.getLocationId()), json);
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
		System.out.println("CRUDLocation doPost end");
	}

}
