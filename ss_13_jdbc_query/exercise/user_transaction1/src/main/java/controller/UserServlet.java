package controller;

import model.User;
import service.IUserService;
import service.impl.UserService;

import javax.jws.soap.SOAPBinding;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    private IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateUser(request, response);
                break;
            case "update":
                showUpdateUser(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "search":
                searchUser(request, response);
                break;
            case "sort":
                sortByNameUser(request, response);
                break;
            case "test":
                addTransaction(request,response);
                break;
            default:
                listAllUser(request, response);
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
                createUser(request, response);
                break;
            case "update":
                updateUser(request, response);
                break;
        }

    }
    private void addTransaction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String mess = userService.addUserTransaction();
        request.setAttribute("mess",mess);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);

    }

    private void sortByNameUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = userService.sortByName();
        request.setAttribute("user", userList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    private void searchUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String country = request.getParameter("country");
        List<User> userList = userService.searchByCountry(country);
        request.setAttribute("country", country);
        request.setAttribute("user", userList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        this.userService.deleteUser(Integer.parseInt(id));
        response.sendRedirect("/user");
    }

    private void showUpdateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = userService.selectUser(Integer.parseInt(id));
        request.setAttribute("user", user);
        request.getRequestDispatcher("view/update.jsp").forward(request, response);
    }

    private void showCreateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }

    private void listAllUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = userService.selectAllUser();
        request.setAttribute("user", userList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }



    private void createUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        Map<String, String> userMap = userService.insertUser(user);
        response.sendRedirect("/user");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id, name, email, country);
        userService.updateUser(user);
        response.sendRedirect("/user");
    }
}
