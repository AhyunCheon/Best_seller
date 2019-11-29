package donate;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class formDAO implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("utf-8");
    	

		String name = request.getParameter("name");
    	String title = request.getParameter("title");
    	String author = request.getParameter("author");
   
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	
    
    	Connection conn = null;
    	PreparedStatement pstmt = null;    	

    	try{ 		
        	System.out.println(1);
    		String jdbc_url = "jdbc:mysql://localhost:3306/apply?serverTimezone=UTC"; 
    		       //+
					//			"useUnicode=true&characterEncoding = euc-kr";
			String dbUser = "root";
			String dbPass = "0512";
		 
		
			conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
			System.out.println(2);
		
      		pstmt = conn.prepareStatement("INSERT INTO realname VALUES (NULL,?,?,?)");
      		System.out.println(3);
    				pstmt.setString(1, name);
    				pstmt.setString(2, title);
    				pstmt.setString(3, author);
    	
    				pstmt.executeUpdate();
    				System.out.println(5);
 
    		HttpSession session = request.getSession();
    			
    		session.setAttribute("sessionName", name);
    		System.out.println(5);
    	} catch(SQLException ex){
    		ex.printStackTrace();
			
		}finally{
			System.out.println(44);
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
        return "formSuccess.jsp";
    }
}