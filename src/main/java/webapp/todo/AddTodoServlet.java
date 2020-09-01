package webapp.todo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/add-todo.do")
public class AddTodoServlet extends HttpServlet {

  private TodoService todoService = new TodoService();

  
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException, ServletException {
    
    request.getRequestDispatcher("/WEB-INF/views/add-todo.jsp").forward(request, response);
  }

  
  // add a todo item form the page todo.jsp
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    String todo = request.getParameter("todo");
    String category = request.getParameter("category");
    todoService.addTodo(new Todo(todo, category));

    response.sendRedirect("/list-todos.do");
  }

}
