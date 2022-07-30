package service;

import model.Product;
import reponsitory.IProductRepository;
import reponsitory.ProductRepository;

import java.util.List;

public class ProductService implements IProductService{
private IProductRepository productRepository = new ProductRepository();
    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
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
