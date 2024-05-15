package com.example.book.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import com.example.book.model.DBCrud;
import com.example.book.model.MySQLConnector;
import com.example.book.model.Product;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class AdminServletController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        


        //ket noi CSDL MySQL
        Connection conn = MySQLConnector.getMySQLConnection();
        //lay tat ca Product 
        List<Product> listP = DBCrud.getAllProduct(conn);
        //dong ket noi
        MySQLConnector.closeConnection(conn);

        //dat danh sach product vao request
        req.setAttribute("list", listP);

        //chuyen sang servlet ProductListView.jsp
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/AdminPage.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        
        super.doPost(req, resp);
    }
    
}
