package com.losttooth.cust.dao;

import com.losttooth.cust.model.Cust;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class custDAO {
    
    private String jdbcURL = "jdbc:mysql://localhost:3306/dental_losttooth?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";
    private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
    
    private static final String INSERT_CUST_SQL = "INSERT INTO customers (cust_fname, cust_lname, cust_email, cust_pass) VALUES (?, ?, ?, ?);";
    private static final String SELECT_USER_BY_ID = "SELECT cust_id, cust_lname, cust_lname, cust_email, cust_idnumber FROM customers WHERE cust_id=?;";
    private static final String SELECT_ALL_USERS = "SELECT * FROM customers;";
    private static final String DELETE_USERS_SQL = "DELETE FROM customers WHERE id=?;";
    private static final String UPDATE_USERS_SQL = "UPDATE customers SET cust_fname = ?, cust_lname = ?, cust_email = ?, cust_idnumber = ? WHERE cust_id = ?;";
    
    protected Connection getConnection(){
        Connection conn = null;
        try {
            Class.forName(jdbcDriver);
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return conn;
    }
    
        public void regCust(Cust cust) {
//        System.out.println(INSERT_USERS_SQL);
        try (Connection conn = getConnection();
             PreparedStatement stmt = conn.prepareStatement(INSERT_CUST_SQL)) {
                stmt.setString(1, cust.getFirstname());
                stmt.setString(2, cust.getLastname());
                stmt.setString(3, cust.getEmail());
                stmt.setString(4, cust.getPassword());
                stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    
}
