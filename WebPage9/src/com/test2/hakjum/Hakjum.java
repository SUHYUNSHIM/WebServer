package com.test2.hakjum;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hakjum
 */
@WebServlet("/Hakjum")
public class Hakjum extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hakjum() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response); //�޼ҵ� ȣ�⹮ 2����
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//business logic
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html;charset=EUC-KR");
		String irum = request.getParameter("irum");
		String jum1 = request.getParameter("jum");
		//<h1>${param.irum }���� ������ ${param.jum }�� �̱���!</h1>
		//<h1>�׷��ϱ� ${param.irum }���� A����������~</h1>
		//�̷��� �޴´�.
		int jum = Integer.parseInt(jum1);
		
		//�Ʒ� �κ��� mvc2 ���.
		String kaja = null;
		//�� ���� 5���� jsp�� ����°�? �װ� jsp���� ����� ���� �ʰ� view�� �Ǳ� �����̴�.
		if(jum>=90) {
			kaja = "A.jsp";
		}else if(jum>=80) {
			kaja = "B.jsp";
		}else if(jum>=70) {
			kaja = "C.jsp";
		}else if(jum>=60) {
			kaja = "D.jsp";
		}else {
			kaja = "F.jsp";
		}
		//controller. business logic. ��길 �ϰ� ����� ���⼭ ���� �ʴ´�. view���� ȣ��. business logic�� ũ�� service logic�� �䱸�ȴ�.
		RequestDispatcher rd1 = request.getRequestDispatcher("./jspview/"+kaja); //.forward(request,response); chaining������� 
		//�� �ٷ� �� �� �ִ�.
		rd1.forward(request,response);
	}
	
	

}
