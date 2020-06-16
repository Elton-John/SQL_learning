
# Zadanie 1
#
# W pliku Main1.java napisz zapytania SQL, które wypełnią dwoma wpisami każdą tabelę w bazie danych o nazwie products_ex.
USE repo_products_ex;
INSERT INTO clients (name, surname) VALUES ('Filip', 'Kirkorov');
ALTER TABLE clients ADD CONSTRAINT UNIQUE (name,surname);
INSERT INTO clients (name, surname) VALUES ('Maxim', 'Galkin');

INSERT INTO orders (description) VALUE ('Kupiono w sklepie kebaba');
INSERT INTO orders (description) VALUE ('Kupiono przez internet makaron');

INSERT INTO products (name, description, price) VALUES ('kebab', 'z wołowiną', 10.50);
INSERT INTO products (name, description, price) VALUES ('makaron', 'durum', 3.50);

# Zadanie 2
#
# W pliku Main2.java napisz zapytania SQL (dla bazy danych products_ex), które pobiorą:
#
# pierwsze 10 produktów gdzie cena jest większa lub równa 50,
SELECT * FROM products WHERE price >= 50 LIMIT 10;

# wszystkich klientów z nazwiskiem zaczynającym się na literę: J,
SELECT * FROM clients WHERE surname LIKE 'K%';

# wszystkie zamówienia gdzie opis nie jest pusty,
SELECT * FROM orders WHERE description IS NOT NULL;

# liczbę wszystkich produktów, których cena jest równa 10.
SELECT * FROM products WHERE price = 10.50;

# Zadanie 4
#
# Napisz zapytania SQL, żeby wypełnić pięcioma wpisami każdą tabelę w bazie danych o nazwie cinemas_ex.
USE repo_cinemas_ex;
INSERT INTO cinemas (name, address, open_time, close_time) VALUES ('Nowy Horyzonty', 'Ruska 50', '09:00:00', '23:00:00');
INSERT INTO cinemas (name, address, open_time, close_time) VALUES ('DCF', 'Wolności 50', '09:00:00', '23:00:00');

INSERT INTO movies (title, description, rating, director, watch_count, is_top) VALUES ('Struktura kryształu','Film o fizykach', 6.0, 'Krzysztof Zanussi', 5000, 0 );
INSERT INTO movies (title, description, rating, director, watch_count, is_top) VALUES ('Był sobie koń','Film o koniach', 9.02, 'Olga Kryukova', 88645, 1 );

INSERT INTO payments (type, payment_date) VALUES ('cash', '2020-06-13 16:05:36');
INSERT INTO payments (type, payment_date) VALUES ('transfer', '2020-06-14 19:25:01');

INSERT INTO  tickets (quantity, price, status) VALUES (2,10.00,1);
INSERT INTO  tickets (quantity, price, status) VALUES (5,12.00,0);



# Zadanie 5
#
# W pliku Main5.java napisz zapytania SQL (dla bazy danych cinemas_ex), które pobiorą:
#
# wszystkie filmy na literę W,
SELECT * FROM movies WHERE title LIKE 'S%';

# wszystkie bilety, których cena jest większa niż 15.30,
SELECT * FROM tickets WHERE price >10.30;

# wszystkie bilety, których liczba jest większa niż 3,
SELECT * FROM tickets WHERE quantity > 3;

# wszystkie filmy, które mają rating większy niż 6.5,
SELECT * FROM movies WHERE rating >6.5;

# film z największą wartością rating (wykorzystaj ORDER BY oraz LIMIT).
SELECT * FROM movies ORDER BY rating DESC LIMIT 1;



# Zadanie 6
#
# W pliku Main6.java napisz zapytania SQL (dla bazy danych cinemas_ex). Zapytania mają zwracać następujące wyniki:
#
# liczbę wszystkich biletów,
SELECT SUM(quantity) FROM tickets;

# liczbę wszystkich płatności, grupując je po kolumnie type,
SELECT type, COUNT(*) FROM payments GROUP BY type;

# średnią cenę biletu,
SELECT AVG(price) FROM tickets;

# pięć ostatnich płatności, zaczynając od drugiej,
SELECT * FROM payments LIMIT 100 OFFSET 1;

# listę wszystkich płatności (pogrupowanych po kolumnie type), których liczba będzie większa niż 2,
SELECT type, COUNT(*) AS number FROM payments GROUP BY type HAVING number>2;

# sumę ilości SUM(quantity) wszystkich biletów, których cena jest większa niż 23,15.
SELECT SUM(quantity) FROM tickets WHERE price > 10.15;



# Zadanie 7
#
# Praca na bazie cinemas_ex.
#
# W pliku Main7.java napisz zapytania SQL, które:
#
# usuną wiersz z tabeli filmów o id = 4,
DELETE FROM movies WHERE id = 2;

# usuną wiersze z tabeli o nazwie helios,
DELETE FROM cinemas WHERE name LIKE 'helios';

# ustawią dla wszystkich biletów ilość na 10,
UPDATE tickets
SET quantity = 10;

# usuną wszystkie płatności, których data jest wcześniejsza niż 2019-01-01.
DELETE FROM payments WHERE payment_date < '2019-01-01';


# Zadanie 8
#
# Praca na bazie cinemas_ex.
#
# W pliku Main8.java napisz następujące zapytania do bazy:
#
# zmieniające adres na Stadion Narodowy dla kin, których nazwa kończy się na z,
UPDATE cinemas
SET address = 'Stadion Narodowy'
WHERE name LIKE '%f';

# usuwające płatności, których data jest starsza niż 4 dni od aktualnego czasu (z dokładnością do sekundy),
DELETE FROM payments WHERE payment_date < CURRENT_TIMESTAMP - INTERVAL 4 DAY ;

# zmieniające rating filmu na 5.4 dla filmów, których opis jest dłuższy niż 40 znaków – poszukaj funkcji MySQL, która sprawdza liczbę znaków,
UPDATE movies
SET rating = 5.4
WHERE length(description)>40;

# zmniejszające cenę biletu o 50%, jeśli ich liczba jest większa niż 10, zapisz je jako pojedyncze zapytanie SQL.
UPDATE tickets
SET price = price*1.5
WHERE quantity >5;