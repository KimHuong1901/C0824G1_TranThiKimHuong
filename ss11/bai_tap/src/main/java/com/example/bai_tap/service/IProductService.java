package com.example.bai_tap.service;

import com.example.bai_tap.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    boolean add(Product product);
    boolean delete(int id);
    boolean update(int id, Product product);
    List<Product> sortByName();
    List<Product> findBySupplier(String supplier);
}
