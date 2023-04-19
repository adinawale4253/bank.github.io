package nagebaba;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter pw=response.getWriter();
			String uname=request.getParameter("uname");
			String pword=request.getParameter("pword");
			String s1=request.getParameter("amount");
			int amount= Integer.parseInt(s1);
			String address=request.getParameter("address");
			String s2=request.getParameter("phn");
			long phn=Long.parseLong(s2);
			
			int status=RegisterUser.register(uname, pword, amount, address, phn);
			
			if(status>0)
			{
				pw.println("<html><script>(function(){alert('Welcome "+uname+" your Account as been opened Succesfully')})();</script></html>");
				request.setAttribute("accno", RegisterUser.nextvalue1);
				RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
				rd.include(request, response);
			}
			else
			{
				pw.println("Sorry, Registration failed please try again");
				RequestDispatcher rd1=request.getRequestDispatcher("/error.jsp");
				rd1.include(request, response);
			}
			pw.close();
			
		}

}
