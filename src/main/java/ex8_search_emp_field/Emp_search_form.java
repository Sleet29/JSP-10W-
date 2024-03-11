package ex8_search_emp_field;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

//http://localhost:8088/JSP/emp_search_form
@WebServlet("/emp_search_form")
public class Emp_search_form extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Emp_search_form() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		RequestDispatcher dispatcher = 	
				request.getRequestDispatcher("/ex8_db/_3.search/input_emp.jsp");
		
		dispatcher.forward(request, response);
	}


}
