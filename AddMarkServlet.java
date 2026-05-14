package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.MarkDAO;

@WebServlet("/AddMarkServlet")
public class AddMarkServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String name = request.getParameter("name");
            String subject = request.getParameter("subject");
            String marksStr = request.getParameter("marks");
            String date = request.getParameter("date");

            // Validation
            if (name.equals("") || subject.equals("") ||
                marksStr.equals("") || date.equals("")) {

                out.println("<h2>All fields are required</h2>");
                return;
            }

            int marks = Integer.parseInt(marksStr);

            Connection con = MarkDAO.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO StudentMarks " +
                "(StudentName, Subject, Marks, ExamDate) " +
                "VALUES (?, ?, ?, ?)"
            );

            ps.setString(1, name);
            ps.setString(2, subject);
            ps.setInt(3, marks);
            ps.setString(4, date);

            int x = ps.executeUpdate();

            out.println("<html>");
            out.println("<head><title>Add Result</title></head>");
            out.println("<body style='font-family:Arial;text-align:center;padding-top:100px;'>");

            if (x > 0) {
                out.println("<h2 style='color:green;'>Record Added Successfully</h2>");
            } else {
                out.println("<h2 style='color:red;'>Record Not Added</h2>");
            }

            out.println("<a href='LoadAddPageServlet'>Add Another Record</a><br><br>");
            out.println("<a href='index.jsp'>Back to Home</a>");

            out.println("</body></html>");

            ps.close();
            con.close();

        } catch (Exception e) {
            out.println("<h3 style='color:red;text-align:center;'>");
            out.println(e);
            out.println("</h3>");
        }
    }
}