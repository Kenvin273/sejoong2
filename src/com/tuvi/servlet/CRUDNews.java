package com.tuvi.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.json.JSONException;
import org.json.JSONObject;

import com.tuvi.constant.ErrorCode;
import com.tuvi.dao.LocationInfo;
import com.tuvi.dao.News;
import com.tuvi.utils.DBConnection;
import com.tuvi.utils.DBUtil;

/**
 * Servlet implementation class CRUDNews
 */
@WebServlet("/CRUDNews")
public class CRUDNews extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private final String UPLOAD_DIRECTORY = "${pageContext.request.contextPath}/admin/uploads";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CRUDNews() {
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
		System.out.println("CRUDNews doPost");
		String stype = request.getParameter("type");
		System.out.println("stype = " + stype);
		if (stype == null){
			out.print(ErrorCode.INVALID_INPUT.code());
			return;
		}
		int type = Integer.parseInt(stype);
		
		System.out.println("CRUDNews doPost type="+ type);
		
		int result = 0;
		
		switch (type){
			case 1: {
				 Part filePart = request.getPart("file"); // Retrieves <input type="file" name="file">
				    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
				    InputStream fileContent = filePart.getInputStream();
				//create
				String image = request.getParameter("content");
				String content = request.getParameter("content");
				String title = request.getParameter("title");
				String seo = request.getParameter("seo");
				if (image == null || content == null || title == null||seo ==null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				News news = new News();
				news.setImage(image);
				news.setContent(content);
				news.setTitle(title);
				news.setSeo(seo);
				try {
					result = DBUtil.insertNews(DBConnection.getMySQLConnection(), news);
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
				String title = request.getParameter("title");
				String seo = request.getParameter("seo");
				String sid = request.getParameter("id");
								
				if (image == null || content == null || title == null || sid == null || seo == null){
					out.print(ErrorCode.INVALID_INPUT.code());
					return;
				}
				int id = Integer.parseInt(sid);
				
				News news = new News();
				news.setImage(image);
				news.setContent(content);
				news.setTitle(title);
				news.setNewsId(id);
				news.setSeo(seo);
				
				try {
					result = DBUtil.updateNews(DBConnection.getMySQLConnection(), news);
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
					result = DBUtil.deleteNews(DBConnection.getMySQLConnection(), id);
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
					News resultObject = DBUtil.getNews(DBConnection.getMySQLConnection(), id);
					if (resultObject != null){
						JSONObject  json = new JSONObject();
						try {
							//json.put("id", resultObject.getEvetnId());
							json.put("image", resultObject.getImage());
							json.put("content", resultObject.getContent());
							json.put("title", resultObject.getTitle());
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
					ArrayList<News> list = (ArrayList<News>) DBUtil.queryNews(DBConnection.getMySQLConnection());
					if (list.size() > 0){
						JSONObject  jsonList = new JSONObject();
						for (News news: list){
							JSONObject  json = new JSONObject();
							try {
								json.put("image", news.getImage());
								json.put("content", news.getContent());
								json.put("title", news.getTitle());
								json.put("seo", news.getSeo());
								jsonList.put(String.valueOf(news.getNewsId()), json);
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
		System.out.println("CRUDNews doPost end");

	}

}
