package pl.coderslab;


//utwórz statyczne zmienne typu String o nazwach DB_URL,DB_USER, DB_PASS,
//        które będą zawierać dane wymagane do połączenia z bazą danych,
//
//        utwórz statyczną metodę zwracającą połączenie do bazy danych o sygnaturze:
//
//public static Connection connect() throws SQLException
//
//        W pliku Main1.java, w metodzie main napisz kod, który stworzy połączenie
//        do bazy danych z wykorzystaniem klasy DBUtil.

import java.sql.*;

public class DBUtil {

    public static Connection connect(String dbName)  {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/" + dbName + "?useSSL=false&serverTimezone=UTC&characterEncoding=UTF8",
                    "root",
                    "coderslab");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static void insert (Connection conn, String query, String ... params){
        try(PreparedStatement preStmt = conn.prepareStatement(query)) {
            for (int i = 0; i < params.length; i++) {
                preStmt.setString(i+1,params[i]);

            } preStmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void printData(Connection conn, String query, String... columnNames) throws SQLException {

        try (PreparedStatement statement = conn.prepareStatement(query);
             ResultSet resultSet = statement.executeQuery();) {
            while (resultSet.next()) {
                for (String param : columnNames) {
                    System.out.println(resultSet.getString(param));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static final String DELETE_QUERY = "DELETE FROM tableName where id = ?";

    public static void remove(Connection conn, String tableName, int id) {
        try (PreparedStatement statement =
                     conn.prepareStatement(DELETE_QUERY.replace("tableName", tableName));) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
