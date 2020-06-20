package pl.coderslab;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {

    public static void main(String[] args) {

        try( Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/?useSSL=false&serverTimezone=UTC&characterEncoding=UTF8",
                "root", "coderslab")){

        } catch (SQLException e){
            e.printStackTrace();
        }
    }






}
