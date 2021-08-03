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
    public Telallview() { //전체보기 작업.
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
		ArrayList<TelinfoVO> alist1=  null; //collection. 다음 페이지로 넘겨주기만 하면 된다. session을 쓸 필요 없이 ,request 쓰면 된다.
		
		//계산 및 판단 즉 business logic은 서블릿에서 한다.
		//db에서 끄집어 내어 처리하는 것-> 계산 작업
		try {
			tidao1 = new TelinfoDAO();
			alist1 = tidao1.getAllInfo(); //MVC1 모델에서 이미 보았음. dao에서 끄집어 내어 컬렉션에 모두 넣는다.
										//출력은 여기서 하지 않음.
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
		//그 다음 작업은 컬렉션에 있는 것을 출력하는 것.
		request.setAttribute("alist1", alist1); //alist1 속성 기억창고에 집어 넣는다.
		kaja = "getAllinfo.jsp"; //여기로. 컬렉션에 전부 들어있는 처리 결과와 함꼐 jsp로. 다시 시작화면으로 돌아가는 형태.
		RequestDispatcher rd1 = request.getRequestDispatcher(kaja);
		rd1.forward(request, response); //갈 때 인자를 가지고 간다. forward를 사용하여, 다음페이지로 넘어가면서 죽지 않고 남아있다. request는 원래 넘기고 죽지만. 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
