
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
String s2=request.getParameter("wamount");
int wamount=Integer.parseInt(s2);
boolean status = verifyLogin1.checkLogin(accno, username, password);

try {
	if (status == true) {
		Connection con = GetCon.getCon();
		System.out.println(accno);
		PreparedStatement ps = con.prepareStatement("Select * from NEWACCOUNT1 where ACCOUNTNO=?");
		ps.setInt(1, accno);
		ResultSet rs = ps.executeQuery();
		rs.next();
		int amount=rs.getInt(4);
		
		
		if(amount-500<wamount)
		{
		RequestDispatcher rd=request.getRequestDispatcher("/withdraw.jsp");
		request.setAttribute("withdraw", "Insufficient Balance minimun balance 500 required");
		rd.forward(request, response);
		}
		else
		{
			
		amount=amount-wamount;
		
		PreparedStatement ps1=con.prepareStatement("UPDATE NEWACCOUNT1 SET AMOUNT=? WHERE ACCOUNTNO=?");
		ps1.setInt(1, amount);
		ps1.setInt(2, accno);
		ps1.execute();
		
		request.setAttribute("accno", accno);
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		}
	}
	else{
	RequestDispatcher rd=request.getRequestDispatcher("/withdraw.jsp");
	request.setAttribute("withdraw", "Invalid Details");
	rd.forward(request, response);
		
	}
} catch (Exception e) {
	e.printStackTrace();
	System.out.println("withdraw1.jsp catch block");
}
%>