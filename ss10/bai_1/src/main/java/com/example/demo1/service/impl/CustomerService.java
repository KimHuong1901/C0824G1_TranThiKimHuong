package com.example.demo1.service.impl;

import com.example.demo1.repository.CustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    private static final CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List getAll() {
        return customerRepository.getCustomers();
    }
}
