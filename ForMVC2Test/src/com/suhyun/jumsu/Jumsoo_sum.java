package com.suhyun.jumsu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Jumsu_sum
 */
@WebServlet("/Jumsoo_sum")
public class Jumsoo_sum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jumsoo_sum() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");	
				
		int sum =0;
		sum = sum+Integer.parseInt(kor)+Integer.parseInt(eng);
		request.setAttribute("sum", sum);
		System.out.println(kor);
		System.out.println(eng);
		System.out.println(sum);
						
		RequestDispatcher rd1 = request.getRequestDispatcher("/jumsooview.jsp"); //request setting 후 목적지에 전달.
		rd1.forward(request, response); //값이 날라가지 않도록, forward를 통해 request의 값을 넘길 수 있다.
	}

}
