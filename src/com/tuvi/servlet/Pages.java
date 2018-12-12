package com.tuvi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Pages
 */
@WebServlet("/Pages")
public class Pages extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final int type = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pages() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("news");
		response.setContentType("text/html");
		String value1 =  request.getParameter("type").toString();
		//response.sendRedirect("admin/pages/");
	
		request.setAttribute("news", value1);
		request.getRequestDispatcher("admin/index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
