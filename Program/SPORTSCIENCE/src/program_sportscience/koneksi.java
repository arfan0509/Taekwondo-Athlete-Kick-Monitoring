/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package program_sportscience;

/**
 *
 * @author arfan
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksi {
    public static void main(String[] args) {
        
    }
    private static Connection mysqlconfig;
    public static Connection koneksiDB()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/sportsc"; //url database
            String user="root"; //user database
            String pass=""; //passwrd database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig=DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.err.println("koneksi gagal "+e.getMessage());
            //perintah menampilkan error pd koneksi
            }
            return mysqlconfig;
        }    
    }
