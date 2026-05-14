package com.servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import com.dao.MarkDAO;

@WebServlet("/LoadAddPageServlet")
public class LoadAddPageServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        MarkDAO dao = new MarkDAO();
        int nextId = dao.getNextStudentId();

        req.setAttribute("nextId", nextId);
        req.getRequestDispatcher("markadd.jsp").forward(req, res);
    }
}