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
			//�� �۾��� ����� db�� �ִ� ��� 3���� ���� resultset�̶�� ���̹ڽ��� �ְ�
			//�̰��� �ϳ��� ������ ��ü�� ���� ����
			//arraylist <telinfovo> ��� collection�� 3���� �� ���� ���̴�. 
			//��, db�� �ִ� �������� �޸𸮷� ������ �����̴�.
		}
		return tiarray;
		}

	
	
}
