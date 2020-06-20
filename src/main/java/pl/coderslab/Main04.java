package pl.coderslab;
//
//napisz program, który wyświetli na konsoli wszystkie filmy znajdujące się w bazie danych o nazwie cinemas_ex,
//        w metodzie main programu wywołaj zapytania, wykorzystując metodę printData klasy DBUtil.


import java.sql.SQLException;

public class Main04 {
    public static void main(String[] args) {
        String query = "SELECT * FROM movies";
        try {
            DBUtil.printData(DBUtil.connect("cinemas_ex"), query, "title", "description");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
