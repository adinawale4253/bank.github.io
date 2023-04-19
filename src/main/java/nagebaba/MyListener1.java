package nagebaba;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

/**
 * Application Lifecycle Listener implementation class MyListener1
 *
 */
public class MyListener1 implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public MyListener1() {
		// TODO Auto-generated constructor stub
	}
	public void contextInitialized(ServletContextEvent sce) {
		int status=0;
		try {
			Connection con=GetCon.getCon();
			PreparedStatement psmt=con.prepareStatement("Select * from NEWACCOUNT1");
			status= psmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(status);
			status=-1;
			System.out.println("Hello"+status);
		}
		if(status>=0)
		{
			System.out.println("Table already created with "+status+" accounts int it.");
		}
		else
		{
			Connection con=GetCon.getCon();
			try {
				PreparedStatement ps3=con.prepareStatement("CREATE TABLE  NEWACCOUNT1(ACCOUNTNO NUMBER,USERNAME VARCHAR2(4000),PASSWORD VARCHAR2(4000),AMOUNT NUMBER,ADDERESS VARCHAR2(4000),PHONE NUMBER,PRIMARY KEY (ACCOUNTNO))");
				ps3.execute();
				PreparedStatement ps2=con.prepareStatement("CREATE SEQUENCE NEWACCOUNT1 MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE");
				ps2.execute();
				System.out.println("Table and Sequence Created Successfully");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("Error Table and sequence not created");
			}
		}
		
	}
	
	public void contextDestroyed(ServletContextEvent sce)
	{
		Connection con=GetCon.getCon();
		try {
			PreparedStatement ps3=con.prepareStatement("DROP TABLE  NEWACCOUNT1");
			ps3.execute();
			PreparedStatement ps2=con.prepareStatement("DROP SEQUENCE NEWACCOUNT1");
			ps2.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Error Table and sequence not DESTROYED");
		}
		System.out.println("Project Undeployed");
	}

}
