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
import com.tuvi.dao.CopyRight;
import com.tuvi.dao.Country;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDCountry
 */
@WebServlet("/CRUDCountry")
public class CRUDCountry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDCountry() {
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
		System.out.println("CRUDCountry doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDCountry doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				//create
				String countryName = request.getParameter("countryName");
				
				
				if (countryName == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				Country country = new Country();
				country.setCountryName(countryName);

				try {
					result = DBUtil.insertCountry(DBConnection.getMySQLConnection(), country);
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
				String countryName = request.getParameter("countryName");
				String sid = request.getParameter("id");
								
				if (countryName == null || sid == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				Country country = new Country();
				country.setCountryName(countryName);
				country.setCountryId(id);
				
				try {
					result = DBUtil.updateCountry(DBConnection.getMySQLConnection(), country);
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
					result = DBUtil.deleteCountry(DBConnection.getMySQLConnection(), id);
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
					Country resultObject = DBUtil.getCountry(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							json.put("countryName", resultObject.getCountryName());	
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
					ArrayList<Country> list = (ArrayList<Country>) DBUtil.queryCountry(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (Country country: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("countryName", country.getCountryName());
								jsonList.put(String.valueOf(country.getCountryId()), json);
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
		System.out.println("CRUDCountry doPost end");

	}

}
