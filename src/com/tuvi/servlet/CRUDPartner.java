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
import com.tuvi.dao.Country;
import com.tuvi.dao.News;
import com.tuvi.dao.PartnerInfo;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDPartner
 */
@WebServlet("/CRUDPartner")
public class CRUDPartner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDPartner() {
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
		System.out.println("CRUDPartner doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDPartner doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String image = request.getParameter("image");
				String content = request.getParameter("content");
				String partnerName = request.getParameter("partnerName");
				String scountryId = request.getParameter("countryId");
				
				if (image == null || content == null || partnerName == null||scountryId == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				
				PartnerInfo partnerInfo = new PartnerInfo();
				try {
					partnerInfo.setCountryId(Integer.parseInt(scountryId));
				} catch (NumberFormatException e){
					out.print(ErrorCode.ERROR_OCCUR.code());
					break;
				}				
				partnerInfo.setImage(image);
				partnerInfo.setContent(content);
				partnerInfo.setPartnerName(partnerName);

				try {
					result = DBUtil.insertPartnerInfo(DBConnection.getMySQLConnection(), partnerInfo);
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
				String image = request.getParameter("image");
				String content = request.getParameter("content");
				String partnerName = request.getParameter("partnerName");
				String scountryId = request.getParameter("countryId");
				String sid = request.getParameter("id");
				
				if (image == null || content == null || partnerName == null || scountryId == null || sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				PartnerInfo partnerInfo = new PartnerInfo();
				partnerInfo.setImage(image);
				partnerInfo.setContent(content);
				partnerInfo.setPartnerName(partnerName);
				try {
					partnerInfo.setCountryId(Integer.parseInt(scountryId));
					partnerInfo.setPartnerId(Integer.parseInt(sid));
				} catch (NumberFormatException e){
					out.print(ErrorCode.ERROR_OCCUR.code());
					break;
				}	
				
				
				try {
					result = DBUtil.updatePartnerInfo(DBConnection.getMySQLConnection(), partnerInfo);
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
					result = DBUtil.deletePartnerInfo(DBConnection.getMySQLConnection(), id);
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
					PartnerInfo resultObject = DBUtil.getPartnerInfo(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("image", resultObject.getImage());
							json.put("content", resultObject.getContent());
							json.put("partnerName", resultObject.getPartnerName());	
							json.put("countryId", resultObject.getCountryId());
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
					ArrayList<PartnerInfo> list = (ArrayList<PartnerInfo>) DBUtil.queryPartnerInfo(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (PartnerInfo partnerInfo: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("image", partnerInfo.getImage());
								json.put("content", partnerInfo.getContent());
								json.put("partnerName", partnerInfo.getPartnerName());
								json.put("countryId", partnerInfo.getCountryId());
								jsonList.put(String.valueOf(partnerInfo.getPartnerId()), json);
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
			case 6:{
				//get all from country
				try {
					String scountryId = request.getParameter("countryId");
					int countryId = 0;
					try {
						countryId = Integer.parseInt(scountryId);						
					} catch (NumberFormatException e){
						out.print(ErrorCode.ERROR_OCCUR.code());
						break;
					}
					ArrayList<PartnerInfo> list = (ArrayList<PartnerInfo>) DBUtil.queryPartnerInfoFromCountry(DBConnection.getMySQLConnection(), countryId);
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (PartnerInfo partnerInfo: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("image", partnerInfo.getImage());
								json.put("content", partnerInfo.getContent());
								json.put("partnerName", partnerInfo.getPartnerName());
								json.put("countryId", partnerInfo.getCountryId());
								jsonList.put(String.valueOf(partnerInfo.getPartnerId()), json);
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
