package Database;

import java.sql.Connection;
import java.sql.DriverManager;


	public class Database{
		public static Connection getCon(){
			String url = "jdbc:mysql://localhost:3307/feemanagementsystem";
			String username = "root";
			String password = "";
			Connection con=null;
			try{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection(url,username,password);
			}catch(Exception e){System.out.println(e);}
			return con;
		}
	}
