package com.sj.suhyun;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sungjuk
 */
@WebServlet("/Sungjuk")
public class Sungjuk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sungjuk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //메소드 정의문 2형식.
    //서블릿은 내장객체가 아니므로 클래스명 객체명 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		response.setContentType("text/html; charset=EUC-KR"); //한글처리. 서버가 응답을 줄 때 한글이면 euc-kr로 한다.
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter(); //jsp 처럼 out으로 사용한다.
		out.println("<h1>방가방가 서블릿</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//2형식 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//요청 정보, 응답 정보를 그대로 전달한다. 둘을 같이 가지고 가므로 안심이 된다.
	}

}
