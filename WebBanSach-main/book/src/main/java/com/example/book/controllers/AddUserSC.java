package com.example.book.controllers;

import java.io.IOException;

import com.example.book.model.DBCrud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adduser")
public class AddUserSC extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        

        


        



        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/AddUser.jsp");
        requestDispatcher.forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1. lay du lieu tu form cua Browser request


        
        
        String user = req.getParameter("username");
        
        String pass = req.getParameter("password");
        
          
        String admin = req.getParameter("isAdmin");
        

        DBCrud db = new DBCrud();

        //2. chuyen du lieu do thanh doi tuong Product
        db.addUser(user, pass, admin);
        
        resp.sendRedirect("userlist");



        
    }
    
}
