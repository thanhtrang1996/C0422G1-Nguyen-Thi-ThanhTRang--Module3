import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "exerciseServlet", value = "/exerciseServlet")
public class exerciseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        String description = request.getParameter("description");
        Double listPrice = Double.parseDouble(request.getParameter("list price"));
        Double discountPercent = Double.parseDouble(request.getParameter("Discount Percent"));
        Double discountAmount = listPrice*discountPercent*0.01;
        Double discountPrice = listPrice - discountAmount;
        request.setAttribute("Description",description);
        request.setAttribute("DiscountAmount",discountAmount);
        request.setAttribute("DiscountPrice",discountPrice);
        requestDispatcher.forward(request,response);


    }
}
