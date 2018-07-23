package addr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
   private String driver ="oracle.jdbc.OracleDriver";
   private String url    ="jdbc:oracle:thin:@localhost:1521:xe"; //orcl
   private String dbUid = "hr202"; 
   private String dbPwd = "1";
   
   private Connection conn = null;
   private Statement  stmt = null;
   private ResultSet  rs   = null;
   
   public PostDao() {
      try {
         Class.forName(driver);
         conn = DriverManager.getConnection(url, dbUid, dbPwd);
         System.out.println("conn:" + conn);
      } catch (ClassNotFoundException e) {
         e.printStackTrace();
         System.out.println("연결오류:" + e.getMessage());
      } catch (SQLException e) {
         e.printStackTrace();
         System.out.println("연결오류:" + e.getMessage());
      }
   }
   public void close() {
         try {
            if(rs   != null) rs.close();
            if(stmt != null) stmt.close();
            if(conn != null) conn.close();
         } catch (SQLException e) {
            e.printStackTrace();
         }
   }
   
   //-----------------------------------------
   
   public List<PostVo> getAddrList(String dong) {
      List<PostVo> list = new ArrayList<>();
      
      try {
         stmt = conn.createStatement();
         String sql = "select zipcode, sido, gugun, dong, nvl(bunji, ' ') as bunji, seq";
         sql += " from post_tbl";
         sql += " where dong like'%"+ dong +"%'";
         System.out.println(sql);
         rs   = stmt.executeQuery(sql);
         while(rs.next()) {
            PostVo vo = new PostVo(rs.getString("zipcode"), rs.getString("sido"),  rs.getString("gugun"),
                  rs.getString("dong"), rs.getString("bunji"), rs.getInt("seq"));
            list.add(vo);
         }
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return list;
      
   }

}