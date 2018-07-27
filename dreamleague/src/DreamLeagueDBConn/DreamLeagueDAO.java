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

	public String idCheck(String id) {
		/*String json 	= "{ \"id\" : \"%s\", \"result\" : \"%s\" }";*/
		String result 	= "false";
		String sql		= "select count(id) as acnt from MEMBERTBL where ID like '"+ id +"'";		
		try {
			pstmt 	= conn.prepareStatement(sql);
			rs		= pstmt.executeQuery();
			
			if(rs.next()) {
				int cnt = rs.getInt("acnt");
				if(cnt == 0) {
					result = "false";
				}else {
					result = "true";
				}
			}
 		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean LoginCheck(String id, String pass) {
		boolean logCheck = false;
		
		String logincheck = "select name from membertbl where id = '"+ id +"' and pass = '"+ pass +"'";
		try {
			pstmt 	= conn.prepareStatement(logincheck);
			rs		= pstmt.executeQuery();
			if(rs.next()) {
				logCheck = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return logCheck;
	}
}
