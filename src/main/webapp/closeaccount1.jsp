
<%@page import="java.io.PrintWriter"%>
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
boolean status = verifyLogin1.checkLogin(accno, username, password);

try {
	if (status == true) {
		Connection con=GetCon.getCon();
		PreparedStatement ps1=con.prepareStatement("DELETE FROM NEWACCOUNT1 WHERE ACCOUNTNO=?");
		ps1.setInt(1, accno);
		ps1.execute();
		
		request.setAttribute("accno",accno );
		
		RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
		
		
	}
	else{
	RequestDispatcher rd=request.getRequestDispatcher("/closeaccount.jsp");
	request.setAttribute("closeaccount", "Invalid Details");
	rd.forward(request, response);
		
	}
} catch (Exception e) {
	e.printStackTrace();
	System.out.println("closeaccount1.jsp catch block");
}
%>