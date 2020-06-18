
# # ---------------------------------------------------------
# Zadanie 1
#
# W bazie danych o nazwie products_ex stwórz następującą tabelę:
#
# * opinions:
#   * description: string
# Tabela opinions ma być połączona z tabelą products relacją jeden do wielu (produkt ma wiele opinii, opinia jest przypisana do jednego produktu).
#     Napisz po 5 zapytań, które dodadzą opinie do 3 istniejących produktów.
# Zapytania zapisz do przygotowanego pliku Main1.java.
#
USE repo_products_ex;
CREATE TABLE opinions (
    id INT AUTO_INCREMENT,
    id_product INT,
    description TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_product) REFERENCES products(id)
);
# Zadanie 2
#
# W pliku Main2.java zapisz do przygotowanych zmiennych odpowiednie zapytania.
#
# W bazie danych o nazwie products_ex stwórz następujące tabele:
#
# * categories:
#   * id: int
#   * name: string
# * categories_sub:
#   * id: int
#   * main_id: int -- relacja z id głównej kategorii
#   * name: string
# Połącz tabele categories i categories_sub za pomocą relacji wiele do jednego (jedna kategoria może mieć wiele podkategorii, jedna podkategoria ma jedną kategorię nadrzędną).


CREATE TABLE categories (
                            id INT AUTO_INCREMENT,
                            name VARCHAR(255) NOT NULL,
                            PRIMARY KEY (id)
);
CREATE TABLE subcategories (
                               id INT AUTO_INCREMENT,
                               id_main INT NOT NULL,
                               name VARCHAR(255) NOT NULL,
                               PRIMARY KEY (id),
                               FOREIGN KEY (id_main) REFERENCES categories (id)
);
