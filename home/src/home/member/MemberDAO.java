package home.member;
import java.sql.*;
public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	String url,user,pass;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {}
		url="jdbc:oracle:thin:@localhost:1521:xe";
		user="jsp";
		pass="jsp";
	}
	
	public boolean checkMember(String name,String ssn1,String ssn2)throws SQLException{
		String sql="select * from jsp_member where ssn1=? and ssn2=?";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, ssn1);
			ps.setString(2, ssn2);
			rs=ps.executeQuery();
			if(rs.next()) return true;
			else return false;
		}finally {
			if(rs!=null)rs.close();
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
	}
	public int insertMember(MemberDTO dto)throws SQLException{
		String sql="insert into jsp_member values(jsp_member_no.nextval, ?,?,?,?,?,?,?,?,?,sysdate)";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getId());
			ps.setString(3, dto.getPasswd());
			ps.setString(4, dto.getSsn1());
			ps.setString(5, dto.getSsn2());
			ps.setString(6, dto.getEmail());
			ps.setString(7, dto.getHp1());
			ps.setString(8, dto.getHp2());
			ps.setString(9, dto.getHp3());
			int res=ps.executeUpdate();
			return res;			
		}finally {
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
	}
}
	