package nagebaba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetCon {
	static Connection con;
	static {
		try {
			Class.forName(DBinitailiser.driver);
			con=DriverManager.getConnection(DBinitailiser.url,DBinitailiser.username,DBinitailiser.password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static Connection getCon()
	{
		return con;
	}
	public static int  getPrimaryKey()
	{
		int nextvalue=0;
		Statement st;
		try {
			st = con.createStatement();
			ResultSet rs=st.executeQuery("select NEWACCOUNT1.nextval from dual");
			rs.next();
			nextvalue=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return nextvalue;
	}

}
