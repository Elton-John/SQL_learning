# Zadanie 1 - rozwiązywane z wykładowcą
#
# Zapytania wykonuj w bazie products_ex.
#
USE repo_products_ex;
# W pliku Main1.java:
#
# połącz tabele products i orders relacją wiele do wielu,
#     nową tabelę nazwij products_orders,
# uzupełnij tabelę kilkoma wpisami.
CREATE TABLE products_orders (
    id INT AUTO_INCREMENT,
    id_product INT NOT NULL,
    id_order INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_product) REFERENCES products (id),
    FOREIGN KEY (id_order) REFERENCES orders (id)
);

INSERT INTO products_orders (id_product, id_order) VALUES (1,1),
                                                          (2,1),
                                                          (2,2);
# Zadanie 2
#
# Zapytania wykonuj w bazie cinemas_ex.
#
# W pliku Main2.java:
#
# połącz tabele cinemas i movies relacją wiele do wielu (film może być wyświetlany w wielu kinach, kino może mieć wiele filmów).
#     Utworzoną tabelę nazwij cinemas_movies (tabela będzie reprezentowała repertuar w danym kinie),
#
# uzupełnij tabelę kilkoma wpisami.

USE cinemas_ex;
CREATE TABLE cinemas_movies (
    id INT AUTO_INCREMENT,
    id_cinema INT NOT NULL,
    id_movie INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cinema) REFERENCES cinemas (id),
    FOREIGN KEY (id_movie) REFERENCES movies (id)
);

INSERT INTO cinemas_movies (id_cinema, id_movie) VALUES (1,1),
                                                          (2,1),
                                                          (2,2);

