package com.tav.members;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelinfoDAO;

/**
 * Servlet implementation class Telinsert
 */
@WebServlet("/Telinsert")
public class Telinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Telinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");

		TelinfoDAO td1=null;
		
		try {
			 td1=  new TelinfoDAO();
		} catch (ClassNotFoundException | SQLException e) {			
			e.printStackTrace();
		}
		

		int id = Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String tel=request.getParameter("tel");
		String d =request.getParameter("d");
		
		boolean b = td1.insertInfo(id, name, tel, d);
		
		if(b)
			//response.sendRedirect("getAllinfo.jsp");
			request.setAttribute("result1","입력 good");
		else {
			request.setAttribute("result1", "입력오류");
		}
		RequestDispatcher rd1 = request.getRequestDispatcher("result.jsp"); //result.jsp로 갈 때 true, false를 가지고 간다.
		rd1.forward(request, response);
	}

}
