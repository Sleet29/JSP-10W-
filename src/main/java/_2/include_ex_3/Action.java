package _2.include_ex_3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/ex2_jsp/_2.include_ex_3/loginProcess")
public class Action extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Action() {
		super();
	}
    // doGet 메소드를 정의하는 부분입니다.
    // 클라이언트에서 요청이 GET 방식으로 전송되어오면 doGet 메소드가 자동 실행되게 됩니다.
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
    			throws ServletException, IOException {
    	String id = request.getParameter("id");

        HttpSession session = request.getSession();
        session.setAttribute("id", id);
        response.sendRedirect("template.jsp");
    }
}
