package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class reviewAction implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("utf-8");
    	

		String bookname = request.getParameter("bookname");
    	String author = request.getParameter("author");
    	String review = request.getParameter("review");
    	
     

    	Class.forName("com.mysql.cj.jdbc.Driver");
    	
    
    	Connection conn = null;
    	PreparedStatement pstmt = null;    	




    	try{ 		
        	
    		String jdbc_url = "jdbc:mysql://localhost:3306/apply?serverTimezone=UTC"; 
    		   
			String dbUser = "root";
			String dbPass = "0512";                   
		 
			
			conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
			
			
      		pstmt = conn.prepareStatement("INSERT INTO review VALUES (NULL,?,?,?)");
      		
    				pstmt.setString(1, bookname);
    				pstmt.setString(2, author);
    				pstmt.setString(3, review);
    				
    
    				pstmt.executeUpdate();
    			
    	
    		HttpSession session = request.getSession();
    			
    	
    	} catch(SQLException ex){
    		ex.printStackTrace();
			
		}finally{
		
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
 
        return "reviewSuccess.jsp";
 
    }
 
}