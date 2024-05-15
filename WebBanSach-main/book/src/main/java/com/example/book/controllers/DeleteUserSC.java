package com.example.book.controllers;

import java.io.IOException;



import com.example.book.model.DBCrud;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/deleteuser")
public class DeleteUserSC extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //tim kiem san pham theo id (username)
        String did = req.getParameter("did");

        //lay data tu form DBCrud
        DBCrud db = new DBCrud();

        db.deleteUser(did);

        //day ve trang userlist va load lai du lieu
        resp.sendRedirect("userlist");
        

        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
    
}
