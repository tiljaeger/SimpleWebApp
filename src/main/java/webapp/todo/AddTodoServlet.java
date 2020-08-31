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

  // add a todo item form the page todo.jsp
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    String todo = request.getParameter("todo");
    todoService.addTodo(new Todo(todo));

    response.sendRedirect("/todo.do");
  }

}
