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

@WebServlet("/editbook")
public class EditBookSC extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //tim kiem san pham theo loai sach (idSach)
        String idSach = req.getParameter("pid");

        //lay data tu form DBCrud
        DBCrud db = new DBCrud();

        Product p = db.getAllProductByID(idSach);      
        List<Product> list = db.getAllProduct();
        List<Category> listC = db.getAllCategory();


        //set data toi jsp
        req.setAttribute("listP", list);
        req.setAttribute("listC", listC);
        
        

        //set data toi jsp
        req.setAttribute("detail", p);

          

        req.getRequestDispatcher("/WEB-INF/views/EditBook.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        String idSach = req.getParameter("idSach");
        String idLoai = req.getParameter("idLoai");
        String tenSach = req.getParameter("tenSach");
        String giaSach = req.getParameter("giaSach");
        String moTa = req.getParameter("moTa");
        String image = req.getParameter("image");

        DBCrud db = new DBCrud();

        //2. chuyen du lieu do thanh doi tuong Product
        db.editBook(idSach, idLoai, tenSach, giaSach, moTa, image);
        
        resp.sendRedirect("admin");



    }
    
}
