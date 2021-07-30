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
	ResultSet rs = null;
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException{
		con= new TelInfoDBConn().getConnection();
	}
	
	//메소드 정의문 3형식. return이 있어서.
	//제너릭 타입은 TelInfoVO이다.
	//반환형은 ArrayList <TelInfoVO>
	public ArrayList <TelInfoVO> getAllInfo() 
            throws SQLException{
		ArrayList <TelInfoVO> tiarray = new ArrayList<TelInfoVO>();
		String sql = "SELECT * FROM TelTable5 ORDER BY id";

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()){
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			Date d = rs.getDate("d");

			TelInfoVO tv = new TelInfoVO(id,name,tel,d);
			tiarray.add(tv);
			//이 작업의 결과는 db에 있는 사원 3명을 꺼내 resultset이라는 종이박스에 넣고
			//이것을 하나씩 꺼내어 객체로 만든 다음
			//arraylist <telinfovo> 라는 collection에 3명을 다 넣은 것이다. 
			//즉, db에 있는 사원명단을 메모리로 복사한 개념이다.
		}
		return tiarray;
		}

	
	
}
