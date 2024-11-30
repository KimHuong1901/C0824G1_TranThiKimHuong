package com.example.demo1.repository;

import com.example.demo1.model.Customer;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {
    private static List<Customer> customers = new ArrayList<Customer>();
    static{
        customers.add(new Customer("Mai Văn Hoàn", LocalDate.of(1983, 8, 20),"Hà Nội","https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/desktops/inspiron-desktops/inspiron-3030-small-desktop-3.png?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=1202&qlt=100,1&resMode=sharp2&size=1202,804&chrss=full" ));
        customers.add(new Customer("Nguyễn Văn Nam", LocalDate.of(1983, 8, 17),"Bắc Giang","https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/desktops/inspiron-desktops/inspiron-3030-small-desktop-3.png?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=1202&qlt=100,1&resMode=sharp2&size=1202,804&chrss=full" ));
        customers.add(new Customer("Nguyễn Thái Hòa", LocalDate.of(1983, 8, 19),"Hà Nội","https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/desktops/inspiron-desktops/inspiron-3030-small-desktop-3.png?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=1202&qlt=100,1&resMode=sharp2&size=1202,804&chrss=full" ));
        customers.add(new Customer("Trần Đăng Khoa", LocalDate.of(1983, 8, 22),"Hà Nội","https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/desktops/inspiron-desktops/inspiron-3030-small-desktop-3.png?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=1202&qlt=100,1&resMode=sharp2&size=1202,804&chrss=full" ));
        customers.add(new Customer("Trần Đăng Khoa", LocalDate.of(1983, 8, 22),"Hà Nội","https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/desktops/inspiron-desktops/inspiron-3030-small-desktop-3.png?fmt=png-alpha&pscan=auto&scl=1&hei=804&wid=1202&qlt=100,1&resMode=sharp2&size=1202,804&chrss=full" ));
    }
    public List<Customer> getCustomers() {
        return customers;
    }
}
