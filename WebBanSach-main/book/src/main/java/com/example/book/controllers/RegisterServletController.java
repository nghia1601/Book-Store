package com.example.book.controllers;

import java.io.IOException;

import com.example.book.model.Account;
import com.example.book.model.DBCrud;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServletController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Register.jsp");
        requestDispatcher.forward(req, resp);
        

        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String pass = req.getParameter("pass");
        String re_pass = req.getParameter("repass");

        


        if (!pass.equals(re_pass)) {
            //neu mk lap lai khong dung se tra ve trang register, bao loi va dang ky lai
            req.setAttribute("mess1","Password lập lại không đúng!");//trả về khi ng dùng nhập sai  mk
            req.getRequestDispatcher("/WEB-INF/views/Register.jsp").forward(req, resp);
            
        }else {
            
            DBCrud dao = new DBCrud();
            Account a = dao.checkAccountExit(user);
            if (a == null) {
                
                //neu username chua co trong db thi se dc them vao db va dan de trang login de login
                dao.register(user, pass);
                resp.sendRedirect("login");

            }else {
                //neu nhu username da co roi thi se thong bao loi va dang ky lai
                req.setAttribute("mess2","User name đả tồn tại!");//trả về khi ng dùng nhập sai tên tk 
                req.getRequestDispatcher("/WEB-INF/views/Register.jsp").forward(req, resp);
            }
        }
    }
    
}
