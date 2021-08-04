package telinfoDAO;

import java.sql.Connection;
import java.sql.Date; //util이 아니라 sql 임을 유의.
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import telinfoDBConn.TelInfoDBConn;

import telinfoVO.TelInfoVO;

public class TelInfoDAO {
	private Connection con;
	PreparedStatement pstmt = null;
	ResultSet rs = null; //db에서 꺼내서 처음 저장하는 종이박스 
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException{
		con= new TelInfoDBConn().getConnection();
	}
	
	//메소드 정의문 3형식. return이 있어서.
	//제너릭 타입은 TelInfoVO이다.
	//반환형은 ArrayList <TelInfoVO>
	public ArrayList <TelInfoVO> getAllInfo() throws SQLException{
		
		ArrayList <TelInfoVO> tiarray = new ArrayList<TelInfoVO>();
		String sql = "SELECT * FROM TelTable5 ORDER BY id";

		pstmt = con.prepareStatement(sql); //select 문장 수행.
		rs = pstmt.executeQuery(); //이 작업의 결과는 db에 있는 사원 3명을 꺼내 resultset이라는 종이박스에 넣는다.
		while(rs.next()){ //이것을 하나씩 꺼내어 객체로 만든 다음
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			Date d = rs.getDate("d");

			TelInfoVO tv = new TelInfoVO(id,name,tel,d); //VO의 객체 생성.
			tiarray.add(tv);			
			
			//arraylist <telinfovo> 라는 collection에 DB에 있는 지구언 정보를 다 넣은 것이다. 
			//즉, db에 있는 사원명단을 메모리로 복사한 개념이다.
		}
		return tiarray;		
		}
	public boolean insert_nametel(int id,String name, String tel, String sDate) {
		String sql = "insert into TelTable5 values(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id); //첫번째 물음표에 id를 넣는다. 함수 호출시 받은 4개의 매개변수를 조합하여 insert를 수행하는 것이다.
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			int year = Integer.parseInt(sDate.substring(0,4)) -1900;
			int month = Integer.parseInt(sDate.substring(4,6))-1;
			int day = Integer.parseInt(sDate.substring(6,8));
			
			Date d= new Date(year,month,day);
			pstmt.setDate(4, d);
			pstmt.executeUpdate();			
		}catch(SQLException e) {
			System.out.println("insert Exception");
			return false;
		}
		return true;
	}
	
	public TelInfoVO search_nametel(String oriName) throws SQLException {
		TelInfoVO tv= null;
		String sql = "SELECT * FROM TelTable5 where name=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, oriName);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			Date d = rs.getDate("d");
			tv = new TelInfoVO(id,name,tel,d); //vo 객체,멤버의 정보를 가진 하나의 객체 자체를 return 한다.
		}else {
			tv = null;
		}
		return tv;
	}
	
	public boolean delete_nametel(String name2){
		String sql = "delete from TelTable5 where name=?";/////
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name2);
			pstmt.executeUpdate(); //delete 수행
		}catch(SQLException e){
			System.out.println("delete Exception");
			return false;
		}
		return true; //delete 수행 후 true 리턴.
	}
	
	public boolean update_nametel(String tel2,String name2) {
		String sql = "update TelTable5 set tel=? where name=?";
		try {
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, tel2); //?에 배치.
			pstmt.setString(2, name2);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println("update Exception");
			return false;
		}
		return true;
	}
	
	
	
}
