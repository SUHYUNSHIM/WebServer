package telinfoDAO;

import java.sql.Connection;
import java.sql.Date; //util�� �ƴ϶� sql ���� ����.
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
	
	//�޼ҵ� ���ǹ� 3����. return�� �־.
	//���ʸ� Ÿ���� TelInfoVO�̴�.
	//��ȯ���� ArrayList <TelInfoVO>
	public ArrayList <TelInfoVO> getAllInfo() throws SQLException{
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
			//�� �۾��� ����� db�� �ִ� ��� 3���� ���� resultset�̶�� ���̹ڽ��� �ְ�
			//�̰��� �ϳ��� ������ ��ü�� ���� ����
			//arraylist <telinfovo> ��� collection�� 3���� �� ���� ���̴�. 
			//��, db�� �ִ� �������� �޸𸮷� ������ �����̴�.
		}
		return tiarray;		
		}
	public boolean insert_nametel(int id,String name, String tel, String sDate) {
		String sql = "insert into TelTable5 values(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
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
			tv = new TelInfoVO(id,name,tel,d);
		}else {
			tv = null;
		}
		return tv;
	}
	
	
	
	
	

	
	
}
