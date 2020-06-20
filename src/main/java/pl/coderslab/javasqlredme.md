![Coders-Lab-1920px-no-background](https://user-images.githubusercontent.com/152855/73064373-5ed69780-3ea1-11ea-8a71-3d370a5e7dd8.png)

# Kilka ważnych informacji

Przed przystąpieniem do rozwiązywania zadań przeczytaj poniższe wskazówki

## Jak zacząć?

1. Stwórz [*fork*](https://guides.github.com/activities/forking/) repozytorium z zadaniami.
2. Sklonuj repozytorium na swój komputer. Użyj do tego komendy `git clone adres_repozytorium`
Adres repozytorium możesz znaleźć na stronie repozytorium po naciśnięciu w guzik "Clone or download".
3. Rozwiąż zadania i skomituj zmiany do swojego repozytorium. Użyj do tego komend `git add nazwa_pliku`.
Jeżeli chcesz dodać wszystkie zmienione pliki użyj `git add .` 
Pamiętaj że kropka na końcu jest ważna!
Następnie skommituj zmiany komendą `git commit -m "nazwa_commita"`
4. Wypchnij zmiany do swojego repozytorium na GitHubie.  Użyj do tego komendy `git push origin master`
5. Stwórz [*pull request*](https://help.github.com/articles/creating-a-pull-request) do oryginalnego repozytorium, gdy skończysz wszystkie zadania.

Poszczególne zadania rozwiązuj w odpowiednich plikach.

# Poniżej znajdziesz wytyczne do zadań

Wszystkie zapytania do bazy wykonuj w **konsoli** lub z wykorzystaniem **IntelliJ**.
Dodatkowo zapisz treść zapytań do plików ``java``, przygotowanych do każdego zadania.  

## Zadanie 1 - rozwiązywane z wykładowcą

W pliku `DBUtil.java`:
1. utwórz statyczne zmienne typu `String` o nazwach `DB_URL`,`DB_USER`, `DB_PASS`, 
 które będą zawierać dane wymagane do połączenia z bazą danych,
 
2. utwórz statyczną metodę zwracającą połączenie do bazy danych o sygnaturze:

`public static Connection connect() throws SQLException`


W pliku `Main1.java`, w metodzie `main` napisz kod, który stworzy połączenie do bazy danych z wykorzystaniem klasy `DBUtil`.

## Zadanie 2 - rozwiązywane z wykładowcą

Uzupełnij klasę `DBUtil.java` o poniższy kod:
```  
public static void insert(Connection conn, String query, String... params) {
     try ( PreparedStatement statement = conn.prepareStatement(query)) {
         for (int i = 0; i < params.length; i++) {
             statement.setString(i + 1, params[i]);
         }
         statement.executeUpdate();
     } catch (SQLException e) {
         e.printStackTrace();
     }
}
```
Przeanalizuj kod dołączonej metody.

W pliku `Main2.java`:  

1. napisz zapytania SQL, żeby wypełnić dwoma wpisami **każdą** tabelę w bazie danych ```products_ex```,
2. w metodzie `main` programu wywołaj zapytania, korzystając z metody `insert` klasy `DBUtil`.

## Zadanie 3
W pliku `Main3.java` stwórz metodę o sygnaturze `static void addCinema(String name, String address)`.

1. Uzupełnij ciało metody tak, aby podane parametry zapisała do tabeli `cinemas`.
2. Wykorzystaj metodę `insert` klasy `DbUtil`. Pamiętaj o zmianie bazy danych na odpowiednią.
3. W metodzie `main` pobierz z konsoli wymagane parametry, a następnie wywołaj utworzoną metodę.

## Zadanie 4
Uzupełnij klasę `DBUtil.java` o poniższy kod:
```  
public static void printData(Connection conn, String query, String... columnNames) throws SQLException {

    try (PreparedStatement statement = conn.prepareStatement(query);
         ResultSet resultSet = statement.executeQuery();) {
        while (resultSet.next()) {
            for (String param : columnNames) {
                System.out.println(resultSet.getString(param));
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
}
```
Przeanalizuj kod dołączonej metody.

W pliku `Main4.java`:

1. napisz program, który wyświetli na konsoli wszystkie filmy znajdujące się w bazie danych o nazwie ```cinemas_ex```,
2. w metodzie `main` programu wywołaj zapytania, wykorzystując metodę `printData` klasy `DBUtil`.

## Zadanie 5
Praca na bazie `cinemas_ex`.


W pliku `DBUtil.java`:
 - uzupełnij klasę o poniższy kod:
```  
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
```
Przeanalizuj kod dołączonej metody.

W pliku `Main5.java`:  

1. pobierzz konsoli od użytkownika identyfikator filmu,
2. usuń wiersz na podstawie pobranego identyfikatora.


## Zadanie 6

W pliku `Main6.java` napisz program, który wyświetli na konsoli listę filmów.  
Lista ma zawierać filmy, których `rating` jest większy, niż średni rating wszystkich filmów.  
  
>**HINT**
>Oblicz najpierw średni rating filmów, a następnie pobierz filmy z ratingiem większym niż średni.  
>Oblicz średni rating przy pomocy zapytania SQL i funkcji `AVG()`.

## Zadanie 7 – dodatkowe
           
Praca na bazie `cinemas_ex`.  

W pliku `Main7.java`:  
1. pobierz z bazy wszystkie kina,
2. dla każdego pobranego wiersza, wyświetl `id`, `nazwę` i `adres` kina na konsoli,
3. pobierz z konsoli od użytkownika informację czy chce dokonać edycji lub usunięcia (ma wpisać **e** jeżeli edycja,  
**u** jeżeli usunięcie, **x** jeżeli wyjście z programu).  
Odpytanie powinno odbywać się w pętli,
4. jeżeli wybrał **e** lub **u**, odpytujemy o `id` wiersza do edycji/usunięcia,
5. w przypadku edycji, pobieramy nową nazwę oraz adres i modyfikujemy dane, następnie wyświetlamy wszystkie wiersze ponownie,
6. w przypadku usunięcia, prosimy o potwierdzenie przez wpisanie `T` lub `N`, po wybraniu `T`,
usuwamy wiersz i wyświetlamy wszystkie wiersze ponownie.

---

Repozytorium z ćwiczeniami zostanie usunięte 2 tygodnie po zakończeniu kursu. Spowoduje to też usunięcie wszystkich forków, które są zrobione z tego repozytorium.
