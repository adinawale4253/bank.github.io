package nagebaba;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import nagebaba.GetCon;
public class verifyLogin1 {

public static boolean checkLogin(int accountno,String username,String password){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT1 where accountno=? and username = ? and password =?");
		ps.setInt(1,accountno);
		ps.setString(2,username);
		ps.setString(3,password);
		
		ResultSet rs=ps.executeQuery();
		status=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
public static boolean checktarget(int accno)
{
	boolean status1=false;
	Connection con=GetCon.getCon();
	try {
		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT1 where accountno=?");
		ps.setInt(1,accno);
		
		ResultSet rs=ps.executeQuery();
		status1=rs.next();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status1;
	}
}
