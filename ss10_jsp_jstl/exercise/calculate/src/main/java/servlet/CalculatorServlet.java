package servlet;

import models.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double number1 = Double.parseDouble(request.getParameter("number1"));
        Double number2 = Double.parseDouble(request.getParameter("number2"));
        String operator = request.getParameter("operator");

        double result = Calculator.calculator(number1, number2, operator);
        request.setAttribute("number1", number1);
        request.setAttribute("number2", number2);
        request.setAttribute("operator", operator);
        request.setAttribute("result", result);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
