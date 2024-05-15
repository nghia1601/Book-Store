package com.example.book.model;

public class Category {
    private String idLoai;
    private String tenLoai;

    public Category(){

    }

    public Category(String idLoai, String tenLoai) {
        this.idLoai = idLoai;
        this.tenLoai = tenLoai;
    }

    public String getIdLoai() {
        return idLoai;
    }

    public void setIdLoai(String idLoai) {
        this.idLoai = idLoai;
    }

    public String getTenLoai() {
        return tenLoai;
    }

    public void setTenLoai(String tenLoai) {
        this.tenLoai = tenLoai;
    }

    @Override
    public String toString() {
        return "Category [idLoai=" + idLoai + ", tenLoai=" + tenLoai + "]";
    }
    
    
}
