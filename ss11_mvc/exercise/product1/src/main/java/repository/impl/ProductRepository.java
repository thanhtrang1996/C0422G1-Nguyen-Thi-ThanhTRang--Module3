package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Kẹo dẻo", 23.8, "dai", "Bắc Ninh"));
        products.add(new Product(2, "Kẹo mềm", 13.5, "mềm", "Bắc Giang"));
        products.add(new Product(3, "Bánh dẻo", 33.2, " dẻo dai", "Quảng Ninh"));
        products.add(new Product(4, "Kẹo cay", 13.8, "cay", "Quảng Trị"));
        products.add(new Product(5, "Bánh cay", 43.0, "mềm cay", "Hải Phòng"));
        products.add(new Product(6, "Kẹo chanh", 3.8, "cứng", "Hà Nội"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);

    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(Product product) {
        for (Product p : products) {
            if (p.getId() == product.getId()) {
                p.setName(product.getName());
                p.setPrice(product.getPrice());
                p.setDescription(product.getDescription());
                p.setProducer(product.getProducer());
            }
        }
    }

    @Override
    public void remove(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                products.remove(product);
                break;
            }
        }
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        for (Product product1 : products) {
           if (product1.getName().contains(name)){
               productList.add(product1);
            }
        }

        return productList;
    }
}
