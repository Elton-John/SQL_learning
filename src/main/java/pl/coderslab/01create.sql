# ## Zadanie 1 -
#
# 1. Utwórz bazę o nazwie ```products_ex```, pamiętaj o prawidłowym kodowaniu.
# 2. Zapisz zapytanie w zmiennej `query` w pliku `Main1.java`.

CREATE DATABASE repo_products_ex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

#
# ## Zadanie 2 -
#
# W bazie danych o nazwie ```products_ex``` stwórz następujące tabele:
# ```SQL
# * products:
#   * id: int
#   * name: String
#   * description: String
#   * price: decimal (2 decimal places)
#
USE repo_products_ex;
CREATE TABLE products (
                          id INT AUTO_INCREMENT,
                          name VARCHAR(255) NOT NULL,
                          description TEXT,
                          price NUMERIC(9,2) DEFAULT 0.00,
                          PRIMARY KEY (id)
);
# * orders:
#   * id:int
#   * description: String
#
CREATE TABLE orders (
                        id INT AUTO_INCREMENT,
                        description TEXT,
                        PRIMARY KEY (id)
);
# * clients:
#   * id: int
#   * name: String
#   * surname: String

CREATE TABLE clients (
                         id INT AUTO_INCREMENT,
                         name VARCHAR(255),
                         surname VARCHAR(255),
                         PRIMARY KEY (id)
);

# **Pamiętaj aby użyć odpowiednich typów danych dla każdej kolumny w bazie.**
#
# ## Zadanie 3
#
# 1. Stwórz nową bazę danych o nazwie ```cinemas_ex```. Pamiętaj, że zapytanie się nie uda, jeżeli baza już istnieje.

CREATE DATABASE repo_cinemas_ex CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

#
# ## Zadanie 4
#
# w bazie danych o nazwie ```cinemas_ex``` stwórz następujące tabele (jeżeli tabela już istnieje, to nie da się jej stworzyć – SQL zwróci błąd):
# ```SQL
# * cinemas:
#   * id: int
#   * name: String
#   * address: String
#
USE repo_cinemas_ex;
CREATE TABLE cinemas (
                         id INT AUTO_INCREMENT,
                         name VARCHAR(255),
                         address VARCHAR(255),
                         PRIMARY KEY (id)
);

# * movies:
#   * id: int
#   * title: String
#   * description: String
#   * rating: decimal (2 decimal places)
#
CREATE TABLE movies (
                        id INT AUTO_INCREMENT,
                        title VARCHAR(255),
                        description TEXT,
                        rating NUMERIC(9,2),
                        PRIMARY KEY (id)
);

# * tickets:
#   * id: int
#   * quantity: int
#   * price: decimal (2 decimal places)
#   * status: int (1 - opłacony, 0 - nie opłacony)
#

CREATE TABLE tickets (
                         id INT AUTO_INCREMENT,
                         quantity INT,
                         price NUMERIC(9,2),
                         status TINYINT DEFAULT 0,
                         PRIMARY KEY (id)
);

# * payments:
#   * id: int
#   * type: String (Zakładamy, że są trzy typy płatności: `cash`, `transfer` lub `card`).
#   * payment_date: date
# ```

CREATE TABLE payments (
                          id INT AUTO_INCREMENT,
                          type VARCHAR(10),
                          payment_date DATETIME,
                          PRIMARY KEY (id)
);

# Pamiętaj o:
# * zakładaniu odpowiednich atrybutów na pola (np. każde **id** powinno być kluczem głównym, automatycznie numerowanym),
# * używaniu **odpowiednich typów danych** dla każdej kolumny w bazie,
# * dokładnym czytaniu **kodów błędów** zwracanych przez MySQL.







