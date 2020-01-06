package home.login;

import java.sql.*;

public class LoginCheck {
	//멤버상수를 선언
	public static final int OK = 1;
	public static final int NOT_ID = 2;
	public static final int NOT_PWD = 3;
	public static final int ERROR = -1;
	
	//멤버필드를 선언 : 아이디와 패스워드를 입력받기 위해
	private String id;
	private String passwd;
	private String name;

	public String getName() {
		return name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	//서비스메소드, 비즈니스메소드 : 실제 실행을 할 메소드
	public int loginCheck() {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select passwd from jsp_member where id = ?";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "jsp";
		String pass = "jsp";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, pass);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				String dbPass = rs.getString(1);
				if (dbPass.equals(passwd)) {
					return OK;
				}else {
					return NOT_PWD;
				}
			}else {
				return NOT_ID;
			}
		}catch(ClassNotFoundException e) {
			System.err.println("오라클 드라이버 연결 실패!!");
			return 0;
		}catch(SQLException e) {
			e.printStackTrace();
			return ERROR;
		}finally {
			try {
				if (rs != null) rs.close();
				if (ps != null) ps.close();
				if (con != null) con.close();
			}catch(SQLException e) {}
		}
	}
}















