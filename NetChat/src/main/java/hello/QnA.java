package hello;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

 
public class QnA extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Question1="";
		String Answer1="";
		String firstQ="";
		String secondQ="";
		String thirdQ="";
		String fourthQ="";
		String fiveQ="";
		
		// modal subject1 에서 받아온 데이터 --> firstQ
		firstQ = request.getParameter("firstQ");
		secondQ = request.getParameter("secondQ");
		thirdQ = request.getParameter("thirdQ");
		fourthQ = request.getParameter("fourthQ");
		fiveQ = request.getParameter("fiveQ");
		
		request.setAttribute("firstQ", firstQ);
		request.setAttribute("secondQ", secondQ);
		request.setAttribute("thirdQ", thirdQ);
		request.setAttribute("fourthQ", fourthQ);
		request.setAttribute("fiveQ", fiveQ);
	
		Question1 =request.getParameter("Question1");
		System.out.println(Question1);
		Answer1 = request.getParameter("Answer1");
		System.out.println("Answer1==> "+Answer1);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/config_jp.jsp");
		dispatcher.forward(request, response);
	}

}
