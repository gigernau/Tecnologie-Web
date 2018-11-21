package ConnectionDb;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author one195
 */
public class ConnectDataBase {

      static Connection con; // attributo
                 
      public static Connection getConnection() throws SQLException, ClassNotFoundException {
          //getter
         try{
            Class.forName("com.mysql.jdbc.Driver"); // MySQL database connection  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TECWEB?zeroDateTimeBehavior=convertToNull","tecweb","tecweb");
         }catch(ClassNotFoundException e){
            System.out.println(e);
         }    
      return con;
    }
      
}