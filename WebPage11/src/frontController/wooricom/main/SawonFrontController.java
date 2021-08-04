																																										package frontController.wooricom.main;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import telinfoDAO.TelInfoDAO;
import telinfoVO.TelInfoVO;

/**
 * Servlet implementation class SawonFrontController
 */
//@WebServlet("/SawonFrontController")
@WebServlet("*.do") //총지배인..do로 끝나는 모두 여기를 찾아온다.
public class SawonFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SawonFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		System.out.println(request.getRequestURI()); // 프로젝트명/현재 /do의 파일 이름  ---> /WebPage11/getAllInfo.do 
		System.out.println(request.getContextPath()); //프로젝트명
		String c = request.getRequestURI().substring(request.getContextPath().length()); // /getAllInfo.do 가  된다.
		//substring 자바 문법. 근데 위는 인자가 한 개 있는 형태이다.
		
		String str = null;
		switch(c) {
			case "/getAllInfo.do":
				TelInfoDAO tidao1 = null;
				try {
					tidao1 = new TelInfoDAO();
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				ArrayList<TelInfoVO> alist1 = null;
				try {
					alist1 = tidao1.getAllInfo(); //전체 내용 출력. 객체로 넘어온다.
				}catch(SQLException e) {
					e.printStackTrace();
				}
				request.setAttribute("alist1", alist1);
				str ="getAllInfo.jsp";
				break;
		} ////switch 끝
		RequestDispatcher rd1 = request.getRequestDispatcher(str);
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
