# Zadanie 1
#
# Zapytania wykonuj na bazie cinemas_ex.
USE repo_cinemas_ex;
#
# Dodaj do tabeli tickets kolumnę priceUSD, przechowującą cenę biletu w USD.
ALTER TABLE tickets ADD COLUMN priceUSD NUMERIC(9,2);

# Dodaj do tabeli movies kolumnę director typ char(80), przechowującą imię i nazwisko reżysera.
ALTER TABLE movies ADD COLUMN director CHAR(80);

#  Zmień w tabeli movies kolumnę director na typ varchar(50).
ALTER TABLE movies MODIFY COLUMN director VARCHAR(50);

# Usuń kolumnę priceUSD z tabeli tickets.
ALTER TABLE tickets DROP priceUSD;



# Zadanie 2
#
# Praca na bazie cinemas_ex
# W pliku Main2.java: Napisz następujące zapytania do bazy:
#
# Dodające do tabeli movies kolumnę watchCount, przechowującą ilość wyświetleń filmu.
ALTER TABLE movies ADD COLUMN watch_count INT;

# Dodające do tabeli movies kolumnę isTop, przechowującą wartość tinyint (domyślnie wartość 0) o tym czy film jest hitem.
ALTER TABLE movies ADD COLUMN is_top TINYINT DEFAULT 0;

# Dodające do tabeli cinemas kolumnę openTime, przechowującą godzinę otwarcia.
ALTER TABLE cinemas ADD COLUMN open_time TIME;

# Dodające do tabeli cinemas kolumnę closeTime, przechowującą godzinę zamknięcia.
ALTER TABLE cinemas ADD COLUMN close_time TIME;
