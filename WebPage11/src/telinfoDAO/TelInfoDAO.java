package telinfoDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import telinfoDBConn.TelinfoDBConn;
import telinfoVO.TelInfoVO;


//DAO 

public class TelInfoDAO {

	private Connection con;			
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;				
	
	
	public TelInfoDAO() throws ClassNotFoundException, SQLException {
		con=new TelinfoDBConn().getConnection(); 
											  	 
												
	} 
	
	public void pstmtClose() throws SQLException {
		if(pstmt != null) 
			pstmt.close();
	}
	
	public void getAllInfoClose()
			throws SQLException {
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(con != null)
			con.close();
	}
	
	
	// insert=====================================
	public boolean insert_nametel
	         (int id, String name, String tel, String sDate) {
		String sql="insert into teltable5 values(?,?,?,?)";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			
			pstmt.setString(4,sDate);////////문자그대로 넣기 
			
			
			
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Insert Exception");
			return false;
		}
		return true;
	}
	
	public boolean update_all
	   (int id, String name, String tel, String d, String sname) {
	
		String sql="update teltable5 set id=?, name=?, tel=?,"
				       + " d=TO_DATE(?,'YYYY-MM-DD') where name=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(5, sname);
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, tel);
			pstmt.setString(4, d);//문자넣기는 같은데 to_date() 사용
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Update Exception");
			return false;
		}
		return true;
	}
	
	public boolean delete_name(String name) {
		String sql="delete from TelTable5 where name=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Delete Exception");
			return false;
		}
		return true;
	} 
		
	
	
	public ArrayList<TelInfoVO> getAllInfo() throws SQLException{
		ArrayList<TelInfoVO> tiarray=new ArrayList<TelInfoVO>();
		String sql="select * from teltable5 order by id";
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			int id=rs.getInt("id");
			String name=rs.getString("name");
			String tel=rs.getString("tel");
			Date d=rs.getDate("d");
			
			
			TelInfoVO tv=new TelInfoVO(id,name,tel,d);
			
		
			tiarray.add(tv);
			
		}//while-end
		return tiarray;
	}
	
	
	
	
	public TelInfoVO getInfo(String oriName)			
			throws SQLException{
	TelInfoVO tv=null;
	String sql = "SELECT * FROM TelTable5 where name=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, oriName);
	rs = pstmt.executeQuery();
	if(rs.next()){	
			int id=rs.getInt("id");
			String name=rs.getString("name");
			String tel=rs.getString("tel");
			Date d=rs.getDate("d");				
			tv=new TelInfoVO(id,name,tel,d);	
			
	}else { 
		tv=null;	// null (return null) 
		}
	return tv;		
	}

	
} //TelInfoDAO  -end









