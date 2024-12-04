package com.example.bai_tap.service;

import com.example.bai_tap.model.Product;
import com.example.bai_tap.repositpry.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
private ProductRepository productRepository = new ProductRepository();
List<Product> products = new ArrayList<>();
    @Override
    public List<Product> findAll() {
        return productRepository.getProducts();
    }

    @Override
    public boolean add( Product product) {
        ProductService productService = new ProductService();
            productRepository.addProduct(product);
            return true;
    }

    @Override
    public boolean delete(int id) {
        ProductService productService = new ProductService();
           productRepository.deleteProduct(id);
           return true;
    }

    @Override
    public boolean update(int id, Product product) {
                productRepository.updateProduct(id, product);
                return true;

    }
    @Override
    public List<Product> sortByName() {
      return  productRepository.sortProductByName();
    }

    @Override
    public List<Product> findBySupplier(String supplier) {
        return productRepository.findBySupplier(supplier);
    }
}
