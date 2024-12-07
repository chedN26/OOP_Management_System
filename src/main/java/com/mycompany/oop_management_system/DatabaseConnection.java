/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.oop_management_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author chedn
 */

// Class to connect Java project to Database
public class DatabaseConnection {
    // Method to connect to MySQL database
    public static Connection connect() {
        Connection connection = null;
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Set up the connection string
            String url = "jdbc:mysql://localhost:3306/oop_management_db"; // Database URL
            String user = "root"; // Default XAMPP MySQL user
            String password = ""; // Default XAMPP password (blank)

            // Establish the connection
            connection = DriverManager.getConnection(url, user, password);
            System.out.println("Database connection successful!");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Connection failed: " + e.getMessage());
        }
        return connection;
    }
}
