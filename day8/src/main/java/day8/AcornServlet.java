package day8;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/acornlist")
public class AcornServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AcornService service=new AcornService();
		ArrayList<Acorn> list=service.getMembers();
		
		req.setAttribute("list", resp);
		
		req.getRequestDispatcher("WEB-INF/views/acornlist.jsp").forward(req, resp);
	}
}
