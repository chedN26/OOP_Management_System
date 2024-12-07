/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.oop_management_system;

import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author chedn
 */

// Class to test database connection
public class TestConnection {
    public static void main(String[] args) {
        // Call the connect method from DatabaseConnection
        Connection conn = DatabaseConnection.connect();
        if (conn != null) {
            try {
                // Closing connection
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
