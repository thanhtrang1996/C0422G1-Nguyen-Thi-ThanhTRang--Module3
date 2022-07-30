package controller;

import model.Product;
import service.IProductService;
import service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    private IProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateProduct(request, response);
                break;
            case "update":
                showUpdateProduct(request, response);
                break;
            case "delete":
                showDeleteProduct(request, response);
                break;
            case "detail":
                showDetailProduct(request, response);
            default:
                listProduct(request, response);
                break;
        }

    }

    private void showDetailProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("view/detail.jsp").forward(request, response);
        }
    }

    private void showDeleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("view/delete.jsp").forward(request, response);
        }
    }

    private void showUpdateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(id);
        if (product == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", product);
            request.getRequestDispatcher("view/update.jsp").forward(request, response);
        }
    }

    private void showCreateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/create.jsp").forward(request, response);
    }

    private void listProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = productService.findAll();
        request.setAttribute("product", productList);
        request.getRequestDispatcher("view/list.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "detail":
                detailProduct(request, response);
                break;
            case "search":
                searchProduct(request, response);
                break;
        }

    }

    private void searchProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Product> productList = productService.findByName(name);

        if (productList == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("product", productList);
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        }
    }

    private void detailProduct(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (productService == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            productService.findById(id);
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        if (productService == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            productService.remove(id);
            response.sendRedirect("/products");
        }
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");
        Product product = new Product(id, name, price, description, producer);
        productService.update(product);
        response.sendRedirect("/products");
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String producer = request.getParameter("producer");
        Product product = new Product(id, name, price, description, producer);
        productService.save(product);
        request.setAttribute("message", "Successfully added");
        response.sendRedirect("/products");
    }
}
