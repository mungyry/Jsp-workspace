package demo;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Session")
public class Session extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		Cart cart = (Cart)session.getAttribute("cart");
		
		if(cart == null) {	
		cart = new Cart(); // 카드 객체가 없을 경우 새로 생성
     	}
		cart.setTotalItems(7);
		
		//세션(서버에 cart를 저장)
		session.setAttribute("cart", cart);
		
		getServletContext().getRequestDispatcher("/showcart.jsp").forward(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
