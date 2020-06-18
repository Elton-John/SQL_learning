# Zadanie 1 - rozwiązywane z wykładowcą
#
# W bazie danych o nazwie products_ex stwórz następującą tabelę:
#
# * client_address:
#   * client_id: int
#   * city: string
#   * street: string
#   * house_nr: string
# Tabela client_address ma być połączona relacją jeden do jednego z tabelą clients.
# Napisz 5 zapytań SQL, które wprowadzą adresy dla istniejących już użytkowników.
#
# Zapytania SQL zapisz w przygotowanym pliku Main1.java.
#
USE repo_products_ex;
CREATE TABLE client_address (
    client_id INT,
    city VARCHAR(255),
    street VARCHAR(255),
    house_nr VARCHAR(255),
    PRIMARY KEY (client_id),
    FOREIGN KEY (client_id) REFERENCES clients(id)
);


INSERT INTO client_address (client_id, city, street, house_nr) VALUES
                                                                      (1,'London', 'Backer', '36'),
                                                                      (3, 'Moscow','Arbat', '12');

# Zadanie 2
#
# Jeżeli nie masz bazy danych cinemas_ex albo jest ona niekompletna, to usuń ją i stwórz nową bazę danych o nazwie cinemas_ex.
# Następnie zaimportuj do niej dane z pliku cinema.sql. Są to gotowe tabele wypełnione danymi.
#

DROP DATABASE repo_cinemas_ex;
DROP DATABASE cinemas_ex;

# Zadanie 3
#
# Zapytania wykonuj w bazie cinemas_ex.
#
USE cinemas_ex;
# Tabela payments z tabelą tickets ma być powiązana relacją jeden do jednego.
#     Relacja między biletem a płatnością jest następująca:
#
# płatność musi być przypisana do biletu (dodaj klucz obcy do tabeli payments)
#     Uzupełnij tabelę payments kilkoma wpisami. Przyjmujemy trzy typy płatności: cash, transfer i card.
#

ALTER TABLE payments ADD COLUMN ticket_id INT;
ALTER TABLE payments ADD FOREIGN KEY (ticket_id) REFERENCES tickets(id);
