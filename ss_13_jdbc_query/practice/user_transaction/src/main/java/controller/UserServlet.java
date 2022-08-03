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

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private IUserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "detail":
                showDetailUser(request, response);
                break;
            case "insert":
                showInsertUser(request, response);
                break;
                case "insert1":
                showInsertUserStore(request, response);
                break;
            default:
                showListUser(request, response);
                break;
        }
    }

    private void showInsertUserStore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/insert1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "insert":
//                insertUser(request, response);
                insertUser1(request, response);
                break;
                case "insert1":
                insertUserStore(request, response);
                break;
        }
    }

    private void insertUser1(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        if (userService.insertUser1(user)){
            request.setAttribute("message","thanh cong");
    } else {
            request.setAttribute("message","Khoong thanh cong");
        }
response.sendRedirect("/UserServlet");

    }
    private void insertUserStore(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(name, email, country);
        Map<String,String> users =  userService.insertUserStore(user);
        response.sendRedirect("/UserServlet");

    }

    private void showInsertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/insert.jsp").forward(request, response);
    }

    private void showDetailUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        User user = userService.selectUser(Integer.parseInt(id));
        request.setAttribute("user", user);
        request.getRequestDispatcher("view/detail.jsp").forward(request, response);
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> userList = userService.selectAllUser();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);
    }


}
