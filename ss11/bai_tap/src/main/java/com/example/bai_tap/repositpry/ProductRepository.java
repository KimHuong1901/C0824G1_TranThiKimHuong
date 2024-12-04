package com.example.bai_tap.repositpry;

import com.example.bai_tap.model.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductRepository {
//    private static List<Product> products = new ArrayList<Product>();
//    static {
//        products.add(new Product(1, "BHA", 500000, "Vip", "Unilever"));
//        products.add(new Product(3, "DHA", 49000, "Normal", "Loreal"));
//        products.add(new Product(2, "Mask", 10000, "Normal", "ET"));
//        products.add(new Product(8, "RET", 50000, "Normal", "Unilever"));
//        products.add(new Product(4, "AHA", 52000, "Vip", "ET"));
//    }
List<Product> products = new ArrayList<Product>();
    public List<Product> getProducts() {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select*from products");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Integer id = resultSet.getInt("id");
                String name = resultSet.getString("name_product");
                Integer price = resultSet.getInt("price");
                String description = resultSet.getString("description_product");
                String supplier = resultSet.getString("supplier");
                products.add(new Product(id, name, price, description, supplier));
            }
        } catch (SQLException e) {
            System.out.println("Error database");
        }
        return products;
    }
    public void addProduct(Product product) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("insert into products(name_product, price, description_product, supplier) values (?, ?, ?, ?) ");
            statement.setString(1, product.getName());
            statement.setInt(2,(product.getPrice()));
            statement.setString(3, product.getDescription());
            statement.setString(4, product.getSupplier());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void deleteProduct(int id) {
        try {
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("delete from products where id=?");
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error");
        }
    }
    public void updateProduct(int id, Product product) {
        try{
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("update products set name_product=?, price=?, description_product=?, supplier=? where id=?");
            statement.setString(1, product.getName());
            statement.setInt(2, product.getPrice());
            statement.setString(3, product.getDescription());
            statement.setString(4, product.getSupplier());
            statement.setInt(5, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error");
        }
    }
    public List<Product> sortProductByName(){
        try{
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from products order by name_product");
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Integer id = result.getInt("id");
                String name = result.getString("name_product");
                Integer price = result.getInt("price");
                String description = result.getString("description_product");
                String supplier = result.getString("supplier");
                products.add(new Product(id, name, price, description, supplier));
            }
        } catch (SQLException e) {
            System.out.println("Error sort");
        }
        return products;
    }
    public List<Product> findBySupplier(String supplier) {
        try{
            PreparedStatement statement = BaseRepository.getConnection().prepareStatement("select * from products where supplier=?");
            statement.setString(1, supplier);
            ResultSet result = statement.executeQuery();
            while (result.next()) {
                Integer id = result.getInt("id");
                String name = result.getString("name_product");
                Integer price = result.getInt("price");
                String description = result.getString("description_product");
                supplier = result.getString("supplier");
                products.add(new Product(id, name, price, description, supplier));
            }

        }
        catch (SQLException e) {
            System.out.println("Error");
        }
        return products;
    }
}
