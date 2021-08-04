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
	ResultSet rs = null; //db���� ������ ó�� �����ϴ� ���̹ڽ� 
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException{
		con= new TelInfoDBConn().getConnection();
	}
	
	//�޼ҵ� ���ǹ� 3����. return�� �־.
	//���ʸ� Ÿ���� TelInfoVO�̴�.
	//��ȯ���� ArrayList <TelInfoVO>
	public ArrayList <TelInfoVO> getAllInfo() throws SQLException{
		
		ArrayList <TelInfoVO> tiarray = new ArrayList<TelInfoVO>();
		String sql = "SELECT * FROM TelTable5 ORDER BY id";

		pstmt = con.prepareStatement(sql); //select ���� ����.
		rs = pstmt.executeQuery(); //�� �۾��� ����� db�� �ִ� ��� 3���� ���� resultset�̶�� ���̹ڽ��� �ִ´�.
		while(rs.next()){ //�̰��� �ϳ��� ������ ��ü�� ���� ����
			int id = rs.getInt("id");
			String name = rs.getString("name");
			String tel = rs.getString("tel");
			Date d = rs.getDate("d");

			TelInfoVO tv = new TelInfoVO(id,name,tel,d); //VO�� ��ü ����.
			tiarray.add(tv);			
			
			//arraylist <telinfovo> ��� collection�� DB�� �ִ� ������ ������ �� ���� ���̴�. 
			//��, db�� �ִ� �������� �޸𸮷� ������ �����̴�.
		}
		return tiarray;		
		}
	public boolean insert_nametel(int id,String name, String tel, String sDate) {
		String sql = "insert into TelTable5 values(?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id); //ù��° ����ǥ�� id�� �ִ´�. �Լ� ȣ��� ���� 4���� �Ű������� �����Ͽ� insert�� �����ϴ� ���̴�.
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
			tv = new TelInfoVO(id,name,tel,d); //vo ��ü,����� ������ ���� �ϳ��� ��ü ��ü�� return �Ѵ�.
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
			pstmt.executeUpdate(); //delete ����
		}catch(SQLException e){
			System.out.println("delete Exception");
			return false;
		}
		return true; //delete ���� �� true ����.
	}
	
	public boolean update_nametel(String tel2,String name2) {
		String sql = "update TelTable5 set tel=? where name=?";
		try {
			pstmt= con.prepareStatement(sql);
			pstmt.setString(1, tel2); //?�� ��ġ.
			pstmt.setString(2, name2);
			pstmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println("update Exception");
			return false;
		}
		return true;
	}
	
	
	
}
