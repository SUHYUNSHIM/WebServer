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
 * Servlet implementation class Telupdate
 */
@WebServlet("/Telupdate")
public class Telupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Telupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		TelinfoDAO td1 = null;
		
		//전체 칼럼 수정이 가능, 그러므로 다 넘겨받음
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String d = request.getParameter("d");
		
		String name2 = request.getParameter("name2");
		try {
			td1 = new TelinfoDAO();
		} catch (ClassNotFoundException | SQLException e) {			
			e.printStackTrace();
		}
		
		Boolean b = td1.update_nametel(id, name, tel, d, name2); //name2 조건에 한해서, 앞의 3개를 전달한다. update
		if(b) {
			request.setAttribute("result1", "수정good");
		}else {
			request.setAttribute("result1", "수정오류");
		}
		RequestDispatcher rd1 = request.getRequestDispatcher("result.jsp");
		rd1.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
