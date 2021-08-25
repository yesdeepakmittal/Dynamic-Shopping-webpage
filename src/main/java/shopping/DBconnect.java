package shopping;

import static shopping.DBconfig.*;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	private static Connection con=null;  
	static{  
	try{  
	Class.forName(DRIVER);  
	con = DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
	System.out.println("Hello, World!");
	}catch(Exception e){}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	}  

}