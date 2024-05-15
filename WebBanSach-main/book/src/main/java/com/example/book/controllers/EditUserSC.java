package com.example.book.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import com.example.book.model.Account;
import com.example.book.model.DBCrud;
import com.example.book.model.MySQLConnector;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edituser")
public class EditUserSC extends HttpServlet{

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    // Tim kiem san pham theo loai sach (id)
    String id = req.getParameter("did");

    // Lay data tu form DBCrud
    DBCrud db = new DBCrud();

    Account p = db.getfindUserByID(id);

    // Set thuộc tính "user" trong request để truyền thông tin người dùng tới EditUser.jsp
    req.setAttribute("user", p);

    // Ket noi CSDL MySQL
    Connection conn = MySQLConnector.getMySQLConnection();
    // Lay tat ca Account
    List<Account> listP = DBCrud.getAllAccount(conn);

    // Dat danh sach account vào request
    req.setAttribute("list", listP);

    req.getRequestDispatcher("/WEB-INF/views/EditUser.jsp").forward(req, resp);
}


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        String id = req.getParameter("id");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String isAdmin = req.getParameter("isAdmin");
        

        DBCrud db = new DBCrud();

        //2. chuyen du lieu do thanh doi tuong userlist
        db.editUser(id, username, password, isAdmin);
        
        resp.sendRedirect("userlist");



    }
    
}
