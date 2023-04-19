
<%@page import="nagebaba.verifyLogin1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="nagebaba.GetCon"%>
<%@page import="java.sql.Connection"%>
<%
String s1 = request.getParameter("accno");
int accno = Integer.parseInt(s1);
String username = request.getParameter("uname");
String password = request.getParameter("pword");
String s2=request.getParameter("tamount");
int tamount=Integer.parseInt(s2);
String s3 = request.getParameter("taccno");
int taccno = Integer.parseInt(s3);
boolean status = verifyLogin1.checkLogin(accno, username, password);
boolean status1= verifyLogin1.checktarget(taccno);
try {
	if (status==true & status1==true) {

		Connection con = GetCon.getCon();
		PreparedStatement ps = con.prepareStatement("Select * from NEWACCOUNT1 where ACCOUNTNO=?");
		ps.setInt(1, accno);
		ResultSet rs = ps.executeQuery();
		rs.next();
		int amount=rs.getInt(4);
		
			
		PreparedStatement pst = con.prepareStatement("Select * from NEWACCOUNT1 where ACCOUNTNO=?");
		pst.setInt(1, taccno);
		ResultSet rs1 = pst.executeQuery();
		rs1.next();
		int tamountb=rs1.getInt(4);
		
		if(amount-500<tamount)
		{
		RequestDispatcher rd=request.getRequestDispatcher("/transfer.jsp");
		request.setAttribute("transfer", "Insufficient Balance minimun balance 500 required");
		rd.forward(request, response);
		}
		else
		{
		amount=amount-tamount;
		
		PreparedStatement ps1=con.prepareStatement("UPDATE NEWACCOUNT1 SET AMOUNT=? WHERE ACCOUNTNO=?");
		ps1.setInt(1, amount);
		ps1.setInt(2, accno);
		ps1.execute();
		
		try{

		tamountb=tamountb+tamount;
		PreparedStatement ps2=con.prepareStatement("UPDATE NEWACCOUNT1 SET AMOUNT=? WHERE ACCOUNTNO=?");
		ps2.setInt(1, tamountb);
		ps2.setInt(2, taccno);
		ps2.execute();
			
		}
		catch(Exception e)
		{
			amount=amount+tamount;
			PreparedStatement ps3=con.prepareStatement("UPDATE NEWACCOUNT1 SET AMOUNT=? WHERE ACCOUNTNO=?");
			ps3.setInt(1, amount);
			ps3.setInt(2, accno);
			ps3.execute();
		}
		
		request.setAttribute("accno", accno);
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		}
	}
	else{
	RequestDispatcher rd=request.getRequestDispatcher("/transfer.jsp");
	if(status==false & status1==true)
	{
	request.setAttribute("transfer", "Invalid User Credentials");
	}
	else if(status==true & status1==false)
	{
		request.setAttribute("transfer", "Invalid Transfer Account Number");
	}
	else
	{
		request.setAttribute("transfer", "Invalid User and Transfer  Details");
	}
	rd.forward(request, response);
		
	}
} catch (Exception e) {
	e.printStackTrace();
	System.out.println("transfer1.jsp catch block");
}
%>