/**
 * ����Ʈ�� �����ֱ� ���� Action
 */
package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.review;
import com.board.controller.CommandAction;
 
public class recommendAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	
    	
  
    	
    	try {
    		HttpSession session = request.getSession();
        		
    		String id = (String) session.getAttribute("sessionId");    		
    	
    		String jdbcDriver = "jdbc:mysql://localhost:3306/apply?serverTimezone=UTC";
    		       
    		String dbUser = "root";
    		String dbPass = "0512";
    		String query = null; 
    		
      			 
    		query = "select * from review order by num";
    		
    
  
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		ArrayList<review> articleList = new ArrayList<review>();    		
    		
    		while(rs.next()){
    			review article = new review();
    			article.setNum(rs.getInt("num"));
    			article.setBookname(rs.getString("bookname"));
    			article.setAuthor(rs.getString("author"));
    			article.setReview(rs.getString("review"));
    			
    			articleList.add(article);
    		}
    		request.setAttribute("articleList",articleList);
    	
    	} catch(SQLException ex){
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
 
        return "recommend.jsp";
 
    }
    
    
 
}