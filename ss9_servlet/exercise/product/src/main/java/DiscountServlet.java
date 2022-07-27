import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", value = "/DiscountServlet")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        Double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        Double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));

        Double discountAmount = listPrice * discountPercent * 0.01;
        Double discountPrice = listPrice - discountAmount;

        request.setAttribute("Description", description);
        request.setAttribute("DiscountAmount", discountAmount);
        request.setAttribute("DiscountPrice", discountPrice);

        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}