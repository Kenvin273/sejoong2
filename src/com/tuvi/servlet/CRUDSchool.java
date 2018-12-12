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
import com.tuvi.dao.SchoolInfo;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDSchool
 */
@WebServlet("/CRUDSchool")
public class CRUDSchool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDSchool() {
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
		System.out.println("CRUDSchool doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDSchool doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String schoolName = request.getParameter("schoolName");
				String slevel = request.getParameter("level");
				String learningFee = request.getParameter("learningFee");
				String content = request.getParameter("content");
				String logo = request.getParameter("logo");
				String scountryId = request.getParameter("countryId");
				String district = request.getParameter("district");
				String seo = request.getParameter("seo");
				
				if (schoolName == null ||
						slevel == null ||
						learningFee == null||						
						content == null ||
						logo == null||
						scountryId == null||
						district == null||
						seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				SchoolInfo schoolInfo = new SchoolInfo();
				schoolInfo.setSchoolName(schoolName);
				schoolInfo.setContent(content);
				schoolInfo.setDistrict(district);
				schoolInfo.setLearningFee(learningFee);
				schoolInfo.setLogo(logo);
				schoolInfo.setSeo(seo);
				try{
					schoolInfo.setLevel(Integer.parseInt(slevel));
					schoolInfo.setCountryId(Integer.parseInt(scountryId));
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.EXCEPTION.code());
					break;
				}
				try {
					result = DBUtil.insertSchool(DBConnection.getMySQLConnection(), schoolInfo);
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
				String schoolName = request.getParameter("schoolName");
				String slevel = request.getParameter("level");
				String learningFee = request.getParameter("learningFee");
				String content = request.getParameter("content");
				String logo = request.getParameter("logo");
				String scountryId = request.getParameter("countryId");
				String district = request.getParameter("district");
				String seo = request.getParameter("seo");
				String sid = request.getParameter("id");
				
				if (schoolName == null ||
						slevel == null ||
						learningFee == null||						
						content == null ||
						logo == null||
						scountryId == null||
						district == null||
						sid == null ||
						seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				SchoolInfo schoolInfo = new SchoolInfo();
				schoolInfo.setSchoolName(schoolName);
				schoolInfo.setContent(content);
				schoolInfo.setDistrict(district);
				schoolInfo.setLearningFee(learningFee);
				schoolInfo.setLogo(logo);
				schoolInfo.setSeo(seo);
				
				try{
					schoolInfo.setLevel(Integer.parseInt(slevel));
					schoolInfo.setCountryId(Integer.parseInt(scountryId));
					schoolInfo.setSchoolId(Integer.parseInt(sid));
				} catch (NumberFormatException e){
					e.printStackTrace();
					out.print(ErrorCode.EXCEPTION.code());
					break;
				}
				
				try {
					result = DBUtil.updateSchool(DBConnection.getMySQLConnection(), schoolInfo);
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
					result = DBUtil.deleteSchool(DBConnection.getMySQLConnection(), id);
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
					SchoolInfo resultObject = DBUtil.getSchool(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("schoolName", resultObject.getSchoolName());
							json.put("level", resultObject.getLevel());
							json.put("learningFee", resultObject.getLearningFee());
							json.put("content", resultObject.getContent());
							json.put("logo", resultObject.getLogo());
							json.put("countryId", resultObject.getCountryId());
							json.put("district", resultObject.getDistrict());
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
					ArrayList<SchoolInfo> list = (ArrayList<SchoolInfo>) DBUtil.querySchool(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (SchoolInfo schoolInfo: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("schoolName", schoolInfo.getSchoolName());
								json.put("level", schoolInfo.getLevel());
								json.put("learningFee", schoolInfo.getLearningFee());
								json.put("content", schoolInfo.getContent());
								json.put("logo", schoolInfo.getLogo());
								json.put("countryId", schoolInfo.getCountryId());
								json.put("district", schoolInfo.getDistrict());
								json.put("seo", schoolInfo.getSeo());
								jsonList.put(String.valueOf(schoolInfo.getSchoolId()), json);
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
		System.out.println("CRUDSchool doPost end");
	}
}
