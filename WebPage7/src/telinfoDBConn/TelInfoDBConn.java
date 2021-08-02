package telinfoDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TelInfoDBConn {
	private Connection con1;
	public Connection getConnection(){
		return con1; //접속객체였던 con을 반환
	}
	public TelInfoDBConn() throws ClassNotFoundException, SQLException{ //디폴트생성자 찾아옴
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con1=DriverManager.getConnection
		("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
	}
}
