package home.book;
import java.sql.*;
import java.util.ArrayList;
public class BookDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	String url,user,pass;
	
	public BookDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(ClassNotFoundException e) {}
		url="jdbc:oracle:thin:@localhost:1521:xe";
		user="jsp";
		pass="jsp";
	}
	
	public ArrayList<BookDTO> listBook() throws SQLException{
		String sql="select * from book";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<BookDTO> listBook=makeArrayList(rs);
			return listBook;
		}finally {
			if(rs!=null)rs.close();
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
	}
	
	protected ArrayList<BookDTO> makeArrayList(ResultSet rs)throws SQLException{
		ArrayList<BookDTO> listBook=new ArrayList<BookDTO>();
		while(rs.next()) {
			BookDTO dto=new BookDTO();
			dto.setName(rs.getString(1));
			dto.setWriter(rs.getString(2));
			dto.setPublisher(rs.getString(3));
			dto.setPrice(rs.getInt(4));
			dto.setJoindate(rs.getString(5));
			listBook.add(dto);
		}
		return listBook;
	}
	public int insertBook(BookDTO dto)throws SQLException{
		int res=insertBook(dto.getName(),dto.getPublisher(),dto.getWriter(),dto.getPrice());
		return res;
	}
	public int insertBook(String name,String publisher,String writer,int price) throws SQLException{
		String sql="insert into book values(?,?,?,?,sysdate)";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, writer);
			ps.setString(3, publisher);
			ps.setInt(4,price);
			int res=ps.executeUpdate();
			return res;
		}finally {
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
		
	}
	
	public ArrayList<BookDTO> findBook(String search,String searchString)throws SQLException{
		String sql="select * from book where "+search+" =? ";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, searchString);
			rs=ps.executeQuery();
			ArrayList<BookDTO> listBook=makeArrayList(rs);
			return listBook;
		}finally {
			if(rs!=null)rs.close();
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
	}
	
	public int deleteBook(String name)throws SQLException{
		String sql="delete from book where name=?";
		try {
			con=DriverManager.getConnection(url, user, pass);
			ps=con.prepareStatement(sql);
			ps.setString(1, name);
			int res=ps.executeUpdate();
			return res;
		}finally {
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
	}
	
	public int updateBook(BookDTO dto)throws SQLException{
		int res=updateBook(dto.getName(),dto.getPublisher(),dto.getWriter(),dto.getPrice(),dto.getJoindate());
		return res;
	}
	public int updateBook(String name,String publisher,String writer,int price,String joindate) throws SQLException{
		String sql="update book set writer=? , publisher=? , price=? , joindate=? where name=?";
		try {
			con=DriverManager.getConnection(url,user,pass);
			ps=con.prepareStatement(sql);
		
			ps.setString(1, writer);
			ps.setString(2, publisher);
			ps.setInt(3,price);
			ps.setString(4, joindate);
			ps.setString(5, name);
			int res=ps.executeUpdate();
			return res;
		}finally {
			if(ps!=null)ps.close();
			if(con!=null)con.close();
		}
		
	}
	
	
}
