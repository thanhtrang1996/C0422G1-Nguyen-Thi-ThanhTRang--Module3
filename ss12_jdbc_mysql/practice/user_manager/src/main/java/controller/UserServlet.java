package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    private IUserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "edit":
                showEditForm(request, response);
                break;
            case "create":
                showCreateForm(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "search":
                searchUsersByName(request, response);
                break;
            default:
                showListUsers(request, response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                insertUser(request, response);
                break;
            case "edit":
                updateUser(request, response);
                break;
        }
    }

    private void searchUsersByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<User> userList = this.userService.searchByName(name);
        request.setAttribute("userList", userList);
        request.setAttribute("name", name);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = this.userService.selectUser(Integer.parseInt(id));
        request.setAttribute("user", user);
        request.getRequestDispatcher("view/edit.jsp").forward(request, response);
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/create.jsp").forward(request,response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        this.userService.deleteUser(Integer.parseInt(id));
        response.sendRedirect("/users");
    }

    private void showListUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = this.userService.selectAllUsers();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }



    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(Integer.parseInt(id), name, email,country);
        this.userService.updateUser(user);
        response.sendRedirect("/users");
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        Map<String, String> errMap = this.userService.insertUser(user);
        response.sendRedirect("/users");
    }
}
