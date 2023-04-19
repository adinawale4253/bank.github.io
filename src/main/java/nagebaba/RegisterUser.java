package nagebaba;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterUser {
	static int status=0;
	static int nextvalue1;
	
	public static int register(String uname, String pword, int amount, String address, long phn )
	{
		try {
			Connection con=GetCon.getCon();
			PreparedStatement psmt=con.prepareStatement("INSERT INTO NEWACCOUNT1 VALUES( ?, ?, ?, ?, ?, ?)");
			nextvalue1=GetCon.getPrimaryKey();
			psmt.setInt(1,nextvalue1 );
			psmt.setString(2, uname);
			psmt.setString(3, pword);
			psmt.setInt(4, amount);
			psmt.setString(5, address);
			psmt.setLong(6, phn);
			
			status=psmt.executeUpdate();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	

}
