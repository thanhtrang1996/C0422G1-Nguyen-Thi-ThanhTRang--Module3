package reponsitory;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"banh",23,"ko","hai ha"));
        productList.add(new Product(2,"keo",12,"ko co","ba ha"));
        productList.add(new Product(3,"banh man",34,"ko co ko","hai ba ha"));
        productList.add(new Product(4,"banh hanh",45,"ko co co","hai tu ha"));
        productList.add(new Product(5,"keo keo",213,"ko co hanh","hai  ho ha"));

    }
    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }
}
