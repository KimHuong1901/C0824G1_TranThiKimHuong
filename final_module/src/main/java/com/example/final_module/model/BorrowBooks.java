package com.example.final_module.model;

import java.util.Date;

public class BorrowBooks {
    private String id;
    private String id_book;
    private int id_student;
    private Boolean status;
    private Date borrow_date;
    private Date return_date;
    public BorrowBooks() {}
    public BorrowBooks(String id, String id_book, int id_student, Boolean status, Date borrow_date, Date return_date) {
        this.id = id;
        this.id_book = id_book;
        this.id_student = id_student;
        this.status = status;
        this.borrow_date = borrow_date;
        this.return_date = return_date;
    }
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getId_book() {
        return id_book;
    }
    public void setId_book(String id_book) {
        this.id_book = id_book;
    }
    public int getId_student() {
        return id_student;
    }
    public void setId_student(int id_student) {
        this.id_student = id_student;
    }
    public Boolean getStatus() {
        return status;
    }
    public void setStatus(Boolean status) {
        this.status = status;
    }
    public Date getBorrow_date() {
        return borrow_date;
    }
    public void setBorrow_date(Date borrow_date) {
        this.borrow_date = borrow_date;
    }
    public Date getReturn_date() {
        return return_date;
    }
    public void setReturn_date(Date return_date) {
        this.return_date = return_date;
    }
}
