package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String action = request.getParameter("action");
        if (action == null) {
            action ="";
        }switch (action){
            case "create":
                showCreateCustomer(request,response);
                break;
            case "update":
                showUpdateCustomer(request,response);
                break;
            default:
                listCustomer(request,response);
                break;
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "create":
                createCustoer(request,response);
                break;
            case "update":
                updateCustomer(request,response);
                break;
        }

    }

    private void listCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("customer/listCustomer.jsp").forward(request,response);
    }

    private void showUpdateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("customer/updateCustomer.jsp").forward(request,response);
    }

    private void showCreateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("customer/createCustomer.jsp").forward(request,response);
    }



    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
    }

    private void createCustoer(HttpServletRequest request, HttpServletResponse response) {
    }
}
