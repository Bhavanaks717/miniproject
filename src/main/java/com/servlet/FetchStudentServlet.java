package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MarkDAO;

@WebServlet("/FetchStudentServlet")
public class FetchStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String id = req.getParameter("id");

        try {
            Connection con = MarkDAO.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "SELECT * FROM StudentMarks WHERE StudentID=?");

            ps.setInt(1, Integer.parseInt(id));

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                req.setAttribute("id", rs.getInt("StudentID"));
                req.setAttribute("name", rs.getString("StudentName"));
                req.setAttribute("subject", rs.getString("Subject"));
                req.setAttribute("marks", rs.getInt("Marks"));
                req.setAttribute("date", rs.getString("ExamDate"));

                req.getRequestDispatcher("updaterecord.jsp").forward(req, res);
            } else {
                res.getWriter().println("Record Not Found");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}