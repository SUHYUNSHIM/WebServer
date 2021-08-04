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
@WebServlet("*.do") //��������..do�� ������ ��� ���⸦ ã�ƿ´�.
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
		
		System.out.println(request.getRequestURI()); // ������Ʈ��/���� /do�� ���� �̸�  ---> /WebPage11/getAllInfo.do 
		System.out.println(request.getContextPath()); //������Ʈ��
		String c = request.getRequestURI().substring(request.getContextPath().length()); // /getAllInfo.do ��  �ȴ�.
		//substring �ڹ� ����. �ٵ� ���� ���ڰ� �� �� �ִ� �����̴�.
		
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
					alist1 = tidao1.getAllInfo(); //��ü ���� ���. ��ü�� �Ѿ�´�.
				}catch(SQLException e) {
					e.printStackTrace();
				}
				request.setAttribute("alist1", alist1);
				str ="getAllInfo.jsp";
				break;
				
			case "/sawonInsertForm.do":
				String sabun = request.getParameter("sabun");
				int sabun1 = Integer.parseInt(sabun);
				String name1 = request.getParameter("irum");
				String tel1 = request.getParameter("tel");
				String date1 = request.getParameter("date");
				
				TelInfoDAO tidao2 = null;
				try {
					tidao2 = new TelInfoDAO();
				} catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				tidao2.insert_nametel(sabun1,name1,tel1,date1);
				str= "getAllInfo.jsp";
				
				break;
			
			case "/sawonSearchOne.do":
				TelInfoDAO tidao3 = null;
				TelInfoVO tv1 = null;
				try {
					tidao3 = new TelInfoDAO();
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				String name = request.getParameter("name");
				try {
					tv1 = tidao3.getInfo(name); //�ѻ�� ���. ȫ�浿�� dao���� ã�Ƽ� �����´�.
				}catch(SQLException e){
					e.printStackTrace();
				}
				request.setAttribute("sname", name); //�̸��� �ѱ�� ���� �Ӽ������� ����.
				request.setAttribute("stv", tv1); //�� ��� ��ü ������ �ٸ� �������� �ѱ�� ���� ����.
				str = "sawonUpdateForm.jsp";
				break;
		
		} ////switch ��
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
