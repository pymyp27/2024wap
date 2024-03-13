package day6;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//책정보 여러개를 응답하는 서비스 만들기
//서블릿,view,책정보여러개(데이터->모델)(클래스=> 서비스클래스)
@WebServlet("/prac12")
public class Prac12 extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	
	
	Prac12Service s=new Prac12Service();
	ArrayList<Book> list =s.getBookList();
	
	
	req.setAttribute("list", list);
	
	req.getRequestDispatcher("WEB-INF/views/booklist.jsp").forward(req, resp);
}
}
