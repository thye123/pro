package DreamLeagueDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DreamLeagueDAO {
	private String driver 	= "oracle.jdbc.OracleDriver";
	private String url		= "jdbc:oracle:thin:@localhost:1521:xe";
	private String userId	= "myjava";
	private String userPass	= "1234";
	
	private Connection conn	= null;
	private PreparedStatement  pstmt = null;
	private ResultSet  rs 	= null;
	
	public DreamLeagueDAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, userId, userPass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) 	  { rs.close(); }
			if(pstmt != null) { pstmt.close(); }
			if(conn != null)  { conn.close(); }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
	public void insertMem(String id, String pass, String name, 
			String birth, String gender, String phone, 
			String email, String zipcode, String address) {
		
		DreamLeagueVO vo = 
				new DreamLeagueVO(
						id, pass, name, birth, gender, 
						phone, email, zipcode, address
						);
		
		String insertMem = "insert into membertbl(ID ,PASS ,NAME ,BIRTH ,GENDER ,PHONE ,EMAIL ,ZIPCODE ,ADDRESS)"
				+ " values(?,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(insertMem);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getBirth());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getPhone());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getZipcode());
			pstmt.setString(9, vo.getAddress());
			pstmt.executeUpdate();
						
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
