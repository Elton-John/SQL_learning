package pl.coderslab;

import java.sql.Connection;
import java.sql.SQLException;

public class Main02 {
    public static void main(String[] args) {
//        try {
//            Connection connToProduct = DBUtil.connect("repo_products_ex");
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }

        String query = "INSERT INTO products (name, description, price) VALUES (?,?,?);";
        String nameOfProduct = "kalosze";
        String descriptionOfProduct = "piękne";
        String priceOfProduct = "30.50";

        DBUtil.insert(DBUtil.connect("repo_products_ex"),query,nameOfProduct,descriptionOfProduct,priceOfProduct);



    }
}
