package pl.coderslab;

public class Main05 {
    public static void main(String[] args) {
        DBUtil.remove(DBUtil.connect("cinemas_ex"), "movies", 5);
    }
}
