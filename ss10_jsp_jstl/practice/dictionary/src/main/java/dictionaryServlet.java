import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

@WebServlet(name = "dictionaryServlet", value = "/dictionaryServlet")
public class dictionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        Map<String, String> dictionary = new LinkedHashMap<>();

        dictionary.put("hi", "xin chào");
        dictionary.put("why", "taị sao");
        dictionary.put("no", "không");
        dictionary.put("cute", "dễ thương");
        dictionary.put("yes", "đồng ý");

        String search = request.getParameter("textSearch");
        request.setAttribute("search", search);

        String result = dictionary.get(search);
        if (result != null) {
            request.setAttribute("result", result);
        } else {
            request.setAttribute("result", " not found is the world");
        }

        request.getRequestDispatcher("index.jsp").forward(request, response);


    }
}
