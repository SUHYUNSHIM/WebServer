package telinfoDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TelInfoDBConn {
	private Connection con1;
	public Connection getConnection(){
		return con1; //���Ӱ�ü���� con�� ��ȯ
	}
	public TelInfoDBConn() throws ClassNotFoundException, SQLException{ //����Ʈ������ ã�ƿ�
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con1=DriverManager.getConnection
		("jdbc:oracle:thin:@localhost:1521:xe", "hr","hr");
	}
}
