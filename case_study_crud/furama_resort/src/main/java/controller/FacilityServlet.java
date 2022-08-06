package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateService(request, response);
                break;
            case "update":
                showUpdateService(request, response);
                break;
            case "listContract":
                showListContract(request,response);
                break;
            default:
                listService(request, response);
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
                createService(request, response);
                break;
            case "update":
                updateService(request, response);
                break;
        }


    }

    private void showListContract(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("facility/contract.jsp").forward(request,response);
    }
    private void listService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("facility/list.jsp").forward(request,response);
    }

    private void showUpdateService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("facility/update.jsp").forward(request,response);
    }

    private void showCreateService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("facility/create.jsp").forward(request,response);
    }


    private void updateService(HttpServletRequest request, HttpServletResponse response) {

    }

    private void createService(HttpServletRequest request, HttpServletResponse response) {
    }
}
