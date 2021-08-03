package com.tav.members;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelinfoDAO;
import telinfoVO.TelinfoVO;

/**
 * Servlet implementation class Telallview
 */
@WebServlet("/Telallview")
public class Telallview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Telallview() { //��ü���� �۾�.
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String kaja = null;
		TelinfoDAO tidao1 = null;
		ArrayList<TelinfoVO> alist1=  null; //collection. ���� �������� �Ѱ��ֱ⸸ �ϸ� �ȴ�. session�� �� �ʿ� ���� ,request ���� �ȴ�.
		
		//��� �� �Ǵ� �� business logic�� �������� �Ѵ�.
		//db���� ������ ���� ó���ϴ� ��-> ��� �۾�
		try {
			tidao1 = new TelinfoDAO();
			alist1 = tidao1.getAllInfo(); //MVC1 �𵨿��� �̹� ������. dao���� ������ ���� �÷��ǿ� ��� �ִ´�.
										//����� ���⼭ ���� ����.
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
		//�� ���� �۾��� �÷��ǿ� �ִ� ���� ����ϴ� ��.
		request.setAttribute("alist1", alist1); //alist1 �Ӽ� ���â�� ���� �ִ´�.
		kaja = "getAllinfo.jsp"; //�����. �÷��ǿ� ���� ����ִ� ó�� ����� �Բ� jsp��. �ٽ� ����ȭ������ ���ư��� ����.
		RequestDispatcher rd1 = request.getRequestDispatcher(kaja);
		rd1.forward(request, response); //�� �� ���ڸ� ������ ����. forward�� ����Ͽ�, ������������ �Ѿ�鼭 ���� �ʰ� �����ִ�. request�� ���� �ѱ�� ������. 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
