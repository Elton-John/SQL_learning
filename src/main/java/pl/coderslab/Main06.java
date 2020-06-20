package pl.coderslab;

//W pliku Main6.java napisz program, który wyświetli na konsoli listę filmów.
//        Lista ma zawierać filmy, których rating jest większy, niż średni rating wszystkich filmów.
//
//        HINT Oblicz najpierw średni rating filmów, a następnie pobierz filmy z ratingiem większym niż średni.
//        Oblicz średni rating przy pomocy zapytania SQL i funkcji AVG().

import java.sql.SQLException;

public class Main06 {
    public static void main(String[] args) throws SQLException {
        String query = "SELECT * FROM movies WHERE rating > (SELECT AVG(rating)  FROM movies);";
        DBUtil.printData(DBUtil.connect("cinemas_ex"), query, "title", "rating");
    }
}
