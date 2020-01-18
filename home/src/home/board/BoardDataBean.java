package home.board;

import java.sql.*;
import java.util.*;

import javax.sql.*;
import javax.naming.*;

public class BoardDataBean {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	static DataSource ds;
	static{
		try{
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/oracle");
		}catch(NamingException e){
			System.out.println("lookup실패 : " + e.getMessage());
		}
	}
	public List<BoardDBBean> listBoard(int start, int end) throws SQLException{
		//String sql = "select * from board order by re_step asc";
		String sql = "select * from (select rownum rn, A.* from "
				+ "(select * from board order by re_step asc)A) where rn between ? and ?";
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			List<BoardDBBean> boardList = makeList(rs);
			return boardList;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public List<BoardDBBean> makeList(ResultSet rs) throws SQLException {
		List<BoardDBBean> boardList = new ArrayList<>();
		while(rs.next()) {
			BoardDBBean dto = new BoardDBBean();
			dto.setNum(rs.getInt("num"));
			dto.setWriter(rs.getString("writer"));
			dto.setEmail(rs.getString("email"));
			dto.setSubject(rs.getString("subject"));
			dto.setPasswd(rs.getString("passwd"));
			dto.setReadcount(rs.getInt("readcount"));
			dto.setReg_date(rs.getString("reg_date"));
			dto.setContent(rs.getString("content"));
			dto.setIp(rs.getString("ip"));
			dto.setRe_step(rs.getInt("re_step"));
			dto.setRe_level(rs.getInt("re_level"));
			boardList.add(dto);
		}
		return boardList;
	}
	
	public int insertBoard(BoardDBBean dto) throws SQLException{
		if(dto.getNum()==0) { //원글이다
			String sql = "update board set re_step = re_step+1";
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			int res = ps.executeUpdate();
		}else {	//답글이다
			String sql = "update board set re_step=re_step+1 where re_step > ?";
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getRe_step());
			int res = ps.executeUpdate();
			dto.setRe_step(dto.getRe_step()+1);
			dto.setRe_level(dto.getRe_level()+1);
		}
		String sql = "insert into board values(board_seq.nextval,?,?,?,?,sysdate,0,?,?,?,?)";
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getWriter());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getSubject());
			ps.setString(4, dto.getPasswd());
			ps.setString(5, dto.getContent());
			ps.setString(6, dto.getIp());
			ps.setInt(7, dto.getRe_step());
			ps.setInt(8, dto.getRe_level());
			int res = ps.executeUpdate();
			return res;
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	protected void plusReadcount(int num) throws SQLException {
		try{
			con = ds.getConnection();
			String sql = "update board set readcount = readcount + 1 where num = ?"; 
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			int res = ps.executeUpdate();
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	public BoardDBBean getBoard(int num, String mode) throws SQLException {
		if (mode.equals("content")) plusReadcount(num);
		try {
			con = ds.getConnection();
			String sql = "select * from board where num = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			BoardDBBean dto = makeList(rs).get(0);
			return dto;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public boolean isPassword(int num, String passwd) throws SQLException {
		try {
			/*BoardDBBean dto = getBoard(num, isPass);
			if (dto.getPasswd().equals(passwd)) {
				return true;
			}
			return false;*/
			con = ds.getConnection();
			String sql = "select passwd from board where num = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if (rs.next()) {
				String dbPass = rs.getString(1);
				if (dbPass.equals(passwd)) {
					return true;
				}
			}
			return false;
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int deleteBoard(int num) throws SQLException{
		try {
			con = ds.getConnection();
			String sql = "delete from board where num = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			int res = ps.executeUpdate();
			return res;
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int updateBoard(BoardDBBean dto) throws SQLException {
		try {
			con = ds.getConnection();
			String sql = "update board set subject=?, email=?, content=? where num = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getSubject());
			ps.setString(2, dto.getEmail());
			ps.setString(3, dto.getContent());
			ps.setInt(4, dto.getNum());
			int res = ps.executeUpdate();
			return res;
		}finally {
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int getMaxCount() throws SQLException{
		try {
			con = ds.getConnection();
			String sql = "select count(*) from board";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt(1);
		}finally {
			if (rs != null) rs.close();
			if (ps != null) ps.close();
			if (con != null) con.close();
		}
	}
	
	public int getCount() throws SQLException{
		String sql="select count(*) from board";
		try {
			con = ds.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			rs.next();
			return rs.getInt(1);
		}finally {
			if(rs != null) rs.close();
			if(ps != null) ps.close();
			if(con != null) con.close();
		}
	}
}















