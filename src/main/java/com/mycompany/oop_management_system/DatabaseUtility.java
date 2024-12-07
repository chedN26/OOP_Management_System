/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.oop_management_system;

/**
 *
 * @author chedn
 */
import java.sql.*;
import javax.swing.table.DefaultTableModel;
import java.util.List;
import java.util.ArrayList;

// Class that contains different methods to execute query to database
public class DatabaseUtility {

    // Function to execute a query with error handling
    public static void mysqlQuery(String query, Object[] values) {
        Connection conn = null;
        PreparedStatement stmt = null;
        // Error handling for executing a query to database
        try {
            // Establish connection to the database
            conn = DatabaseConnection.connect();
            if (conn != null) {
                System.out.println("Connected to the database.");
                
                // Disable autocommit
                conn.setAutoCommit(false);

                // Prepare the query
                stmt = conn.prepareStatement(query);

                // Set parameters (if any)
                if (values != null) {
                    for (int i = 0; i < values.length; i++) {
                        stmt.setObject(i + 1, values[i]);
                    }
                }

                // Execute the query (INSERT/UPDATE/DELETE)
                stmt.executeUpdate();
                conn.commit();  // Commit the transaction manually
                System.out.println("Query executed successfully.");
            }
        } catch (SQLException e) {
            System.out.println("Error executing query: " + e.getMessage());
            if (conn != null) {
                try {
                    conn.rollback();  // Rollback in case of error
                } catch (SQLException ex) {
                    System.out.println("Error during rollback: " + ex.getMessage());
                }
            }
        } finally {
            // Clean up and close resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) {
                    // Re-enable autocommit after the transaction
                    conn.setAutoCommit(true);
                    conn.close();
                }
                System.out.println("Connection closed.");
            } catch (SQLException e) {
                System.out.println("Error closing connection: " + e.getMessage());
            }
        }
    }
    
    // Method to execute SELECT query; for populating the JTable
    public static DefaultTableModel fetchData(String query, Object[] values, String[] columnNames) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        DefaultTableModel model = null;

        try {
            // Establish connection to the database
            conn = DatabaseConnection.connect();
            if (conn != null) {
                System.out.println("Connected to the database.");

                // Prepare the query
                stmt = conn.prepareStatement(query);

                // Set parameters (if any)
                if (values != null) {
                    for (int i = 0; i < values.length; i++) {
                        stmt.setObject(i + 1, values[i]);
                    }
                }

                // Execute the query (SELECT)
                rs = stmt.executeQuery();

                // Initialize the DefaultTableModel with provided column names
                model = new DefaultTableModel(columnNames, 0); // Using provided column names

                // Add rows to the model
                while (rs.next()) {
                    Object[] rowData = new Object[columnNames.length];
                    for (int i = 0; i < columnNames.length; i++) {
                        rowData[i] = rs.getObject(i + 1);  // Retrieve data from the ResultSet
                    }
                    model.addRow(rowData);
                }

                System.out.println("Query executed successfully.");
            }
        } catch (SQLException e) {
            System.out.println("Error executing query: " + e.getMessage());
        } finally {
            // Clean up and close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println("Error closing connection: " + e.getMessage());
            }
        }

        return model;
    }
    
    // Method to execute SELECT query with WHERE clause based on month and year (int)
    public static List<Object[]> fetchDataWithWhere(String query, int month, int year, int unit) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Object[]> result = new ArrayList<>();

        try {
            // Establish connection to the database
            conn = DatabaseConnection.connect();
            if (conn != null) {
                System.out.println("Connected to the database.");

                // Define the SELECT query with WHERE clause
                // String query = "SELECT * FROM another_table WHERE month = ? AND year = ?";  // Modify the table name and columns accordingly

                // Prepare the query with parameters (month and year)
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, month);  // Set the month as an integer
                stmt.setInt(2, year);   // Set the year as an integer
                stmt.setInt(3, unit);   // Set the year as an integer

                // Execute the query
                rs = stmt.executeQuery();

                // Retrieve data from ResultSet and store it in a List
                while (rs.next()) {
                    // Create an array to store the data of each row
                    Object[] rowData = new Object[9];  // Assuming 9 columns
                    for (int i = 0; i < 9; i++) {
                        rowData[i] = rs.getObject(i + 1);  // Store each column value in the array
                    }
                    result.add(rowData);  // Add the row data to the list
                }
                System.out.println("Query executed successfully.");
            }
        } catch (SQLException e) {
            System.out.println("Error executing query: " + e.getMessage());
        } finally {
            // Clean up and close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println("Error closing connection: " + e.getMessage());
            }
        }

        return result;  // Return the list of rows
    }
    // EXAMPLE
    // String query = "SELECT * FROM table_name"; // Your SELECT query
    // DefaultTableModel model = DatabaseUtility.fetchData(query, null); // Pass values if needed
    // yourJTable.setModel(model); // Replace 'yourJTable' with your actual JTable variable

}


