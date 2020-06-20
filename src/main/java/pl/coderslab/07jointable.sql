# ---------------------------------------------------
# Zadanie 1 -
#
# W pliku Main1.java napisz zapytania SQL (praca na bazie danych cinemas_ex).
#
# Zapytania mają zwracać następujące wyniki:
#
# Wszystkie bilety które zostały opłacone gotówką (czyli type = cash).
# Wszystkie bilety które nie zostały jeszcze opłacone.

USE cinemas_ex;
SELECT * FROM tickets JOIN payments
    ON tickets.id = payments.ticket_id
WHERE payments.type LIKE 'cash';

SELECT * FROM tickets LEFT JOIN  payments
ON tickets.id = payments.ticket_id
WHERE payments.id IS NULL;

# Zadanie 2 -
#
# Praca na bazie products_ex.
# W pliku Main2.java do przygotowanych zmiennych wpisz zapytania, które pobiorą:
#
# zamówienia dla produktu o id równym 1,
# produkty dla zamówienia o id równym 1.

USE repo_products_ex;
SELECT * FROM orders JOIN products_orders ON orders.id = products_orders.id_order
WHERE products_orders.id_product = 1;

SELECT * FROM products JOIN products_orders ON products.id = products_orders.id_product
WHERE products_orders.id_order = 1;

# Zadanie 3
#
# W pliku Main3.java zapisz treść zapytań, a następnie wypisz w konsoli:
#
# wszystkie produkty, które mają opinie oraz wszystkie dostępne dla nich opinie (nie powinny występować wartości null),
# pobierz wszystkie produkty razem z opiniami, niezależnie od tego czy mają opinie (mogą występować wartości null),
# pobierz wszystkie opinie dla produktu o id = 1, wynik ma zawierać również wszystkie dane dotyczące produktu.
# Zadanie 4
#
# W pliku Main4.java zapisz treść zapytań, a następnie wypisz w konsoli:
#
# wszystkie podkategorie kategorii o id = 1, pobrane za pomocą odpowiedniego złączenia,
# id oraz nazwę kategorii, ale tylko tych kategorii, które mają podkategorie (skorzystaj z DISTINCT).
# Zadanie 5
#
# Praca na bazie cinemas_ex. W pliku Main5.java do przygotowanych zmiennych wpisz zapytania, które pobiorą:
#
# kina w którym wyświetlany jest film o id równym 1,
# filmy wyświetlane w kinie o id równym 1.
