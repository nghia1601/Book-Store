package com.example.book.controllers;

import java.io.IOException;
import java.util.List;

import com.example.book.model.Category;
import com.example.book.model.DBCrud;
import com.example.book.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product")
public class ProductServletController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        



        //lay data tu form DBCrud
        DBCrud db = new DBCrud();
        List<Product> list = db.getAllProduct();
        List<Category> listC = db.getAllCategory();
        

        //tra  du lieu toi jsp
        req.setAttribute("listP", list);
        req.setAttribute("listC", listC);   
        
        req.getRequestDispatcher("/WEB-INF/views/ProductPage.jsp").forward(req, resp);

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
    

}
