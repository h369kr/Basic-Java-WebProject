package harsh.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private TodoService todoService = new TodoService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/add-todo.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String newTodo = request.getParameter("todo");
		String category = request.getParameter("category");
		todoService.addTodo(new Todo(newTodo, category)); // Todo t = new Todo(newTodo);
		// Here newTodo is passed in constructor

		response.sendRedirect("/list-todos.do"); // why because it was repeating the same post request when i refresh the page
											// No duplicate submit
	}

}
