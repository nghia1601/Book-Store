package com.example.book.controllers;

import java.io.IOException;

import com.example.book.model.Account;
import com.example.book.model.DBCrud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServletController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Login.jsp");
            requestDispatcher.forward(req, resp);

        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username = req.getParameter("user");
        String password = req.getParameter("pass");

        String remember = req.getParameter("rem");




        DBCrud dao = new DBCrud();
        Account a = dao.login(username, password);

        if(a == null){

            req.setAttribute("mess","Username hoặc Password không đúng");//trả về khi ng dùng nhập sai tên tk hoặc mk
            req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);
        }else{

            //tao cookie dang nhap
            Cookie cu = new Cookie("user", username);
            Cookie cp = new Cookie("pass", password);
            Cookie cr = new Cookie("rem", remember);

            if (remember == null) {
                //neu nguoi dung khong can luu tk dang nhap thi set thoi gian ton tai cookie = 0s
                cu.setMaxAge(0);
                cp.setMaxAge(0);
                cr.setMaxAge(0);
            } else {
                //nguoc lai neu tich vao o nho tai khoan dang nhap se set cookie la 1h
                cu.setMaxAge(60*60);
                cp.setMaxAge(60*60);
                cr.setMaxAge(60*60);
            }

            resp.addCookie(cu);
            resp.addCookie(cp);
            resp.addCookie(cr);

            //session de xem trang web da dang nhap hay chua
            HttpSession session = req.getSession();
            session.setAttribute("acc", a);
            resp.sendRedirect("home");
            
        }
    }
    
}
