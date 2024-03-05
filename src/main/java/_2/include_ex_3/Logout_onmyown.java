package _2.include_ex_3;
/*
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/ex2_jsp/_2.include_ex_3/logout")
public class Logout_onmyown extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Logout_onmyown() {
		super();
	}

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    			throws ServletException, IOException {
        // Invalidate the session
        HttpSession session = request.getSession(false); // Don't create session if it doesn't exist
        if (session != null) {
            session.invalidate();
        }
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('로그아웃되었습니다.');");
        out.println("window.location.href='template.jsp';"); // Redirect to login page
        out.println("</script>");
    }
}
*/