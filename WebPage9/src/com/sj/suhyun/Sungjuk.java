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
    //�޼ҵ� ���ǹ� 2����.
    //������ ���尴ü�� �ƴϹǷ� Ŭ������ ��ü�� 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		

		response.setContentType("text/html; charset=EUC-KR"); //�ѱ�ó��. ������ ������ �� �� �ѱ��̸� euc-kr�� �Ѵ�.
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter(); //jsp ó�� out���� ����Ѵ�.
		out.println("<h1>�氡�氡 ����</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//2���� �޼ҵ�
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//��û ����, ���� ������ �״�� �����Ѵ�. ���� ���� ������ ���Ƿ� �Ƚ��� �ȴ�.
	}

}
