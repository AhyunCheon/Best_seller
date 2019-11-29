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

import user.User;
import com.board.controller.CommandAction;
 
public class ListAction implements CommandAction {
	
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
 
    	Class.forName("com.mysql.jdbc.Driver");    	    
    	Connection conn = null;
    	Statement stmt = null;
    	ResultSet rs = null;    	
    	
    	
    	
  
    	try {
    		HttpSession session = request.getSession();
	    		
    		String name = (String) session.getAttribute("sessionName");    		
    		
    	
    		String jdbcDriver = "jdbc:mysql://localhost:3306/apply?serverTimezone=UTC";
    		       
    		String dbUser = "root";
    		String dbPass = "0512";
    		String query = null; 
    		int count=0;
    		
    		while(true) {
    		query = "select * from gift order by rand() limit 1";
    	
    		conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
    		
    		stmt = conn.createStatement();    		
    		rs = stmt.executeQuery(query);    		
    		
    		ArrayList<User> articleList = new ArrayList<User>();    		
    		
    		while(rs.next()){
    			if((!name.equals(rs.getString("name")))) {
    			User article = new User();
    			article.setName(rs.getString("name"));
    			article.setPhone(rs.getString("phone"));
    			article.setRoad_name(rs.getString("road_name"));
    			article.setDetail_add(rs.getString("detail_add"));
    	
    			articleList.add(article);
    			count++;
    			}
    		}
    		request.setAttribute("articleList",articleList);
    		if(count!=0)
    				break;
    		}
    	} catch(SQLException ex){
    		ex.printStackTrace();
    	} finally{
    		if(rs != null) try{rs.close();} catch(SQLException ex){}
    		if(stmt != null) try{stmt.close();} catch(SQLException ex) {}
    		
    		if(conn != null) try{conn.close();} catch(SQLException ex) {}
    	}
 
        return "list.jsp";
 
    }
    
    
 
}