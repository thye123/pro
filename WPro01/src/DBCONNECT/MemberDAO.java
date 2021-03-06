package DBCONNECT;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {

	private String driver 	= "oracle.jdbc.OracleDriver";
	private String url		= "jdbc:oracle:thin:@localhost:1521:xe";
	private String userId	= "myjava";
	private String userPass	= "1234";
	
	private Connection conn	= null;
	private Statement  stmt = null;
	private ResultSet  rs 	= null;
	
	public MemberDAO() {
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
			if(rs != null) 	 { rs.close(); }
			if(stmt != null) { stmt.close(); }
			if(conn != null) { conn.close(); }
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<MemberVO> getMemList() {
		List<MemberVO> list = new ArrayList<>();
		
		try {
			stmt = conn.createStatement();
			String sql = "select id, name, birth, email, regdate from membertbl order by regdate desc";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				MemberVO vo = 
						new MemberVO(
								rs.getString("id"), rs.getString("name"), 
								rs.getString("birth"), rs.getString("email"), 
								rs.getString("regdate")
						);
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public MemberVO getMember(String uid) {
		MemberVO m = null;
		try {
			stmt = conn.createStatement();
			String sql = "select * from membertbl where id ="+ uid;
			rs = stmt.executeQuery(sql);
			if( rs.next() ) {
				m = new MemberVO(
							rs.getString("id"), rs.getString("pass"), rs.getString("name"), 
							rs.getString("birth"), rs.getString("gender"), rs.getString("phone"), 
							rs.getString("email"), rs.getString("zipcode"), rs.getString("address"), 
							rs.getString("regdate")
						);
				/*m = new MemberVO();
				m.setId(rs.getString("id"));
				m.setName(rs.getString("name"));*/
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return m;
	}
	
	public String getMemListJSON(String name) {
		List<MemberVO> list = new ArrayList<>();
		try {
			String sql = "select id, name, birth, email, regdate from membertbl where name like '%" + name + "%'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				MemberVO vo = new MemberVO(rs.getString("id"), rs.getString("name"), rs.getString("birth"), rs.getString("email"), rs.getString("regdate"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String jsonlist = "[";
		
		for (int i = 0; i < list.size(); i++) {
			MemberVO vo = list.get(i);
			jsonlist += vo.toJSON() + ",";
		}
		
		if(jsonlist.charAt(jsonlist.length()-1) == ',') {
			jsonlist = jsonlist.substring(0, jsonlist.length()-1);
		}
			
		jsonlist += "]";
		
		return jsonlist;
	}
	
	public int delMember(String id) {
		int cnt = 0;
		try {
			stmt = conn.createStatement();
			String sql = "delete from membertbl where id = '"+ id +"'";
			cnt = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int upMember(String id, String pass, String email, String birth, String zipcode, String address) {
		
		try {
			stmt = conn.createStatement();
			String sql = "";
			stmt.executeQuery(sql);
						
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}
}
