package servlet;

import models.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "")
public class CustomerServlet extends HttpServlet {

    private static List<Customer> customerList = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        customerList.add(new Customer("Nguyễn Thị Bé", "02/09/1999", "Quảng Trị", "https://randy-rhoads-online.com/nguoi-mau-tieng-anh-la-gi/imager_3726.jpg"));
        customerList.add(new Customer("Nguyễn Thị Hương", "01/03/1989", "Quảng Bình", "https://recmiennam.com/wp-content/uploads/2020/10/thich-mat-voi-bo-anh-nguoi-dep-tuyen-chon-1.jpg"));
        customerList.add(new Customer("Nguyễn Bá Lộc", "02/09/1999", "Hà Nội", "https://scr.vn/wp-content/uploads/2020/08/H%C3%ACnh-%E1%BA%A3nh-trai-H%C3%A0n-Qu%E1%BB%91c-%C4%91%E1%BA%B9p.jpg"));
        customerList.add(new Customer("Na Quang Ná", "09/09/1994", "Bắc Giang", "https://anhdep123.com/wp-content/uploads/2021/03/Tong-hop-nhung-hinh-anh-sieu-mau-nam-dep-2.jpg"));
        customerList.add(new Customer("Nguyễn Văn Hiển", "12/04/1991", "Quảng Trị", "https://luv.vn/wp-content/uploads/2021/07/hinh-anh-trai-dep-12.jpg"));
        customerList.add(new Customer("Hồ Thị Giang Mai", "24/01/1996", "Quảng Nam", "https://phunugioi.com/wp-content/uploads/2020/03/hinh-anh-hot-girl-toc-ngan-de-thuong.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("customerList",customerList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
