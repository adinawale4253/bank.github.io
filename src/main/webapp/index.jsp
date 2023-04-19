<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="nagebaba.GetCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page trimDirectiveWhitespaces="true" %>


<jsp:include page="header.html"></jsp:include>
<% 

Connection con=GetCon.getCon();

int accno=(int)request.getAttribute("accno");
PreparedStatement psmt1=con.prepareStatement("SELECT * FROM NEWACCOUNT1 WHERE ACCOUNTNO=?");
psmt1.setInt(1, accno);
ResultSet rs1;
try{
rs1=psmt1.executeQuery();
rs1.next();
out.println("<!DOCTYPE html><html lang='en'><head><meta charset='UTF-8'><meta http-equiv='X-UA-Compatible' content='IE=edge'><meta name='viewport' content='width=device-width, initial-scale=1.0'><title>Document</title><link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ' crossorigin='anonymous'></head>");
out.println("<script>function change(){document.getElementById('c1').innerHTML='"+rs1.getString(3)+"'}function over(){document.getElementById('c1').innerHTML='********'}</script><body><table class='table table-dark '><thead align='center' class='table-light '><tr><th>Account Number</th><th>UserName</th><th>Password(Hover)</th><th>Balance</th><th>Address</th><th>Mobile Number</th></tr></thead>");
out.println("<tbody align='center'><tr><td>"+rs1.getInt(1)+"</td><td>"+rs1.getString(2)+"</td><td onmouseover='change()' onmouseleave='over()' id='c1'>********</td><td>"+rs1.getInt(4)+"</td><td>"+rs1.getString(5)+"</td><td>"+rs1.getLong(6)+"</td></tr></tbody></table></body></html>");
}
catch(Exception e)
{
	e.printStackTrace();
	out.println("<html><script>alert('Your Account has been Successfully Closed');</script></html>");
	}

%>
<jsp:include page="footer.html"></jsp:include>

