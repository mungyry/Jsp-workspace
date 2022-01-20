package todoApp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import todoApp.dao.UserDao;
import todoApp.model.User;

@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;   
	
	private UserDao userDao;
		
	@Override
	public void init() throws ServletException {
		// 서블릿이 만들어질때 한번 실행
		userDao = new UserDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 유저 입력시 post로 입력 데이터 전달
		request.setCharacterEncoding("UTF-8"); // 한글 설정
		// 파라메터 성, 이름, 유저, 비번을 입력받음
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		User user = new User(firstName, lastName, userName, password);
		// DB에 위의 유저를 입력한다.
		int result = userDao.registerUser(user);
		if(result == 1 ) {
			System.out.println("회원 등록 완료");
		}
		// 화면을 보여주기(register.jsp페이지를 보여주기)
//		request.getRequestDispatcher("register.jsp").forward(request, response); 이건 한줄 아래는 두줄로 코드 하는 방법
		RequestDispatcher dispatcher = request.getRequestDispatcher("register/register.jsp");
		dispatcher.forward(request, response);
	}

}
