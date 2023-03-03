package hello;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Scanner;

/**
 * Servlet implementation class Homepage
 */
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String IP = "";
			int nick_standard=0;
			int IP_size=0;
			
			String command = "python.exe c://workspace//ipbring.py";
			Process proc = Runtime.getRuntime().exec(command);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
			IP = br.readLine();
			System.out.println(IP);
			request.setAttribute("ipaddress", IP);
			
			//IP로 사용자 식별 메모리 주소는 0부터 시작이기 때문에 IP_size에 -1을 하여 자릿수 맞추기
			IP_size = IP.length()-1;
			System.out.println("this ipsize== "+IP_size);
			
			nick_standard = Integer.parseInt(IP.substring(IP_size));
			System.out.println(nick_standard);
			

			String sixby = request.getParameter("sixby");
			System.out.println("sixby 값 == ["+sixby+"]");
			String nineby = request.getParameter("nineby");
			System.out.println("nineby 값 == ["+nineby+"]");
			String twelveby = request.getParameter("twelveby");
			System.out.println("nineby 값 == ["+twelveby+"]");
			
			if(sixby!=null) {
			System.out.println(sixby.getClass().getName());
			request.setAttribute("sixby", sixby);
			}else if(nineby!=null) {
				request.setAttribute("nineby", nineby);
			}else if(twelveby!=null) {
				request.setAttribute("twelveby", twelveby);
			}
			
			String chat = request.getParameter("chat");
			request.setAttribute("chatting", chat);
			System.out.println(chat);

			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/test.jsp");
			dispatcher.forward(request, response);
	}
}
