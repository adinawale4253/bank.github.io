
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
		
		request.setAttribute("accno", accno);

		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	}
	else{
	RequestDispatcher rd=request.getRequestDispatcher("/balance.jsp");
	request.setAttribute("balance", "Invalid Details");
	rd.forward(request, response);
		
	}
} catch (Exception e) {
	e.printStackTrace();
	System.out.println("balance1.jsp catch block");
}
%>