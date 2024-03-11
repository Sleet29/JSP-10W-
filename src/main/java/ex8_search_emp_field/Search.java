package ex8_search_emp_field;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import ex8.Emp;

//http://localhost:8088/JSP/field_select
@WebServlet("/field_select")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Search() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DAO dao = new DAO();
		int field = Integer.parseInt(request.getParameter("field"));
		String search_word = request.getParameter("search");
		ArrayList<Emp> list = dao.select(field, search_word);
		
		RequestDispatcher dispatcher = 
				//request.getRequestDispatcher("/ex8_db/_2.list.emp/list.jsp");
				request.getRequestDispatcher("/ex8_db/_2.list.emp/list_el.jsp");
		request.setAttribute("list", list);
		dispatcher.forward(request, response);
	}

	

}
