package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.controller.CommandAction;
 
public class UserDAO implements CommandAction {
 
    public String requestPro(HttpServletRequest request,
 
    HttpServletResponse response) throws Throwable {
    	
    	request.setCharacterEncoding("utf-8");
    	

		String name = request.getParameter("name");
    	String phone = request.getParameter("phone");
    	String road_name = request.getParameter("road_name");
    	String detail_add= request.getParameter("detail_add");
    
     

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
		 
			//�뜲�씠�꽣踰좎씠�뒪�뿉 �뿰寃�
			conn=DriverManager.getConnection(jdbc_url,dbUser,dbPass);
			System.out.println(2);
			//媛� ?�뿉 �빐�떦�븯�뒗 蹂��닔�뱾�쓣 �꽔�뼱以��떎.
      		pstmt = conn.prepareStatement("INSERT INTO gift VALUES (?,?,?,?)");
      		System.out.println(3);
    				pstmt.setString(1, name);
    				pstmt.setString(2, phone);
    				pstmt.setString(3, road_name);
    				pstmt.setString(4, detail_add);
    		
    				pstmt.executeUpdate();
    				System.out.println(5);
  
    		HttpSession session = request.getSession();
    			
    		session.setAttribute("sessionName", name);
    		System.out.println(5);
    	} catch(SQLException ex){
    		ex.printStackTrace();
    		System.out.println(0);
		}finally{
		
    		if(pstmt != null) try{pstmt.close();} catch(SQLException ex){}
    		if(conn != null) try{conn.close();} catch(SQLException ex){}
    		}
    	
 
        return "giftSuccess.jsp";
 
    }
 
}