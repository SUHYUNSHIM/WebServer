package telinfoDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//매번 접속 객체를 만들어서 사용하기 힘들어서, 따로 클래스를 만들었다.
public class TelInfoDBConn {
	private Connection con;
	
	public Connection getConnection(){
		return con;
	}
	
	public TelInfoDBConn() throws ClassNotFoundException, SQLException{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
		//con은 접속객체. 
	}
}
