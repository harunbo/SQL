--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
UNION
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
INTERSECT
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
EXCEPT
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);

--İlk 3 sorguyu tekrar eden veriler için de yapalım.
(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
UNION ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);

(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
INTERSECT ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);

(
SELECT first_name FROM actor
ORDER BY first_name ASC
)
EXCEPT ALL
(
SELECT first_name FROM customer
ORDER BY first_name ASC
);