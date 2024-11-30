package com.example.demo1.model;

import java.time.LocalDate;

public class Customer {
    private String name;
    private LocalDate bod;
    private String address;
    private String avatar;
    public Customer() {}
    public Customer(String name, LocalDate bod, String address, String avatar) {
        this.name = name;
        this.bod = bod;
        this.address = address;
        this.avatar = avatar;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public LocalDate getBod() {
        return bod;
    }
    public void setBod(LocalDate bod) {
        this.bod = bod;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getAvatar() {
        return avatar;
    }
    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
