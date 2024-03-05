package test_attr;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex3_bootstap/_8.pagination/send")
public class send extends HttpServlet {
	public static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email = request.getParameter("email");
		String domain = request.getParameter("domain");
		String gender = request.getParameter("gender");
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		String gender_result = "남자";
		if (gender.equals("f"))
			gender_result = "여자";
		
		String[] hobby = request.getParameterValues("hobby");
		String hobby_result = "";
		for (int num=0; num<hobby.length; num++) {
			hobby_result +=hobby[num] + "	";
		}
		
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("jumin", jumin1 + "-" + jumin2);
		request.setAttribute("email", email + "@" + domain);
		request.setAttribute("gender", gender_result);
		request.setAttribute("hobby", hobby_result);
		request.setAttribute("post1", post1);
		request.setAttribute("address", address);
		request.setAttribute("intro", intro);

		// http://localhost:8088/Jsp/send
		// http://localhost:8088/Jsp/ex1/test_attr/view.jsp
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/ex3_bootstap/_8.pagination/view.jsp");
		
		dispatcher.forward(request, response);
	}
}
