import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "MoneyServlet", value = "/MoneyServlet")
public class MoneyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));

        float vnd = rate * usd;

        request.setAttribute("Rate",rate);
        request.setAttribute("USD",usd);
        request.setAttribute("VND",vnd);

        request.getRequestDispatcher("result.jsp").forward(request,response);
    }
}
