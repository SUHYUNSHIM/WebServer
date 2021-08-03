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
 * Servlet implementation class TelDelete
 */
@WebServlet("/TelDelete") //클래스 이름이면서 .java를 의미한다.
public class TelDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TelDelete() {
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
		
		String name = request.getParameter("name");
		Boolean b = false;
				
		try {
			TelinfoDAO td1 = new TelinfoDAO();
			b = td1.deleteInfo(name); //한 사람을 찾아서 삭제.
		} catch (ClassNotFoundException | SQLException e) {			
			e.printStackTrace();
		} 
		if(b) {
			request.setAttribute("result1", "삭제good"); //true가 나오면 잘 지워진 것.
		}else {
			request.setAttribute("result1", "삭제오류");
		}
		RequestDispatcher rd1 = request.getRequestDispatcher("result.jsp"); //result.jsp로 갈 때 true, false를 가지고 간다.
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
