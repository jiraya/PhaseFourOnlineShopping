package project;
import java.sql.*;
public class Connectionprovider {
public static Connection getCon()
{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp", "root", "master");
		return con;
	}
	catch(Exception e)
	{
		System.out.println(e);
		return null;
	}
	
}
}
