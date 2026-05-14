package com.dao;

import java.sql.*;

public class MarkDAO {

    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");

        return DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/MarkWebApp",
            "root",
            "bhavanachulove"
        );
    }

    public int getNextStudentId() {
        int nextId = 1;

        String sql = "SELECT MAX(StudentID) FROM StudentMarks";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            if (rs.next()) {
                nextId = rs.getInt(1) + 1;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return nextId;
    }
}