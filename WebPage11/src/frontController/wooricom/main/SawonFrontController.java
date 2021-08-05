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
		//substring 자바 문법. 근데 위는 인자가 한 개 있는 형태이다. 보통 substring(인자1,인자2)로 쓴다. substring(0,1)은 0번째 인덱스부터 첫째글자까지.
		//왼쪽인자는 0부터 시작, 오른쪽 인자는 같은 글자를 1부터 센다. 그런데 인자가 한 개이면 그 하나인 인자는 시작점을 의미하고, 문자열의 시작점부터 끝까지 가져오는 것이다. 
		//결과는 /getAllInfo.do, /sawonInsertForm.do, /sawonSearchOne.do, /sawonUpdate.do, /sawonDelete.do
		
		//c를 기준으로 아래의 switch case 별로 작동하게 된다.
		String str = null;
		switch(c) {
			case "/getAllInfo.do":
				TelInfoDAO tidao1 = null;
				try {
					tidao1 = new TelInfoDAO();
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				ArrayList<TelInfoVO> alist1 = null; //DB에 있는 것을 객체로 만들어서 collection에 저장한다.
				try {
					alist1 = tidao1.getAllInfo(); //전체 내용 출력. 객체로 넘어온다.
				}catch(SQLException e) {
					e.printStackTrace();
				}
				request.setAttribute("alist1", alist1); //alist1이라는 기억창고에 alist1 collection의 것을 저장한다. request를 통해 넘긴다.
				str ="getAllInfo.jsp";
				//System.out.println(alist1.get(0).getName());
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
				tidao2.insert_nametel(sabun1,name1,tel1,date1); //여기서 dao의 insert 메서드를 호출한다. 즉 계산 작업을 수행하는 controller.
				str= "getAllInfo.jsp";
				
				break;
			
			case "/sawonSearchOne.do": //한 사람 출력
				TelInfoDAO tidao3 = null;
				TelInfoVO tv1 = null;
				try {
					tidao3 = new TelInfoDAO();
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				String name = request.getParameter("name");
				try {
					tv1 = tidao3.getInfo(name); //한사람 출력 메서드. 홍길동을 dao에서 찾아서 가져온다. getAllInfo는 전제출력
				}catch(SQLException e){
					e.printStackTrace();
				}
				request.setAttribute("sname", name); //이름을 넘기기 위해 속성명으로 저장.
				request.setAttribute("stv", tv1); //한 사람 객체 정보를 다른 페이지로 넘기기 위해 저장.
				str = "sawonUpdateForm.jsp";
				break;
				
			case "/sawonUpdate.do":
				TelInfoDAO tidao4 =null;
				TelInfoVO tv2 = null;
				int id2 = Integer.parseInt(request.getParameter("id"));
				String name2 = request.getParameter("name");
				String tel2 = request.getParameter("tel");
				String d2 = request.getParameter("d");
				
				String sname = request.getParameter("sname");
				try {
					tidao4 = new TelInfoDAO();
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				tidao4.update_all(id2, name2, tel2, d2, sname);
				//전부 update하는 메소드
				
				str="getAllInfo.jsp";
				break;
				
			case "/sawonDelete.do":
				TelInfoDAO tidao5 = null;
				TelInfoVO tv3 = null;
				String name3 = request.getParameter("name");
				
				try {
					tidao5 = new TelInfoDAO();					
				}catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				}
				tidao5.delete_name(name3);
				str = "getAllInfo.jsp";
				break;
				
		} ////switch 끝
		RequestDispatcher rd1 = request.getRequestDispatcher(str); //request setting 후 목적지에 전달.
		rd1.forward(request, response); //값이 날라가지 않도록, forward를 통해 request의 값을 넘길 수 있다.
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
