-- Question 1: For a given order, who owes how much?
-- Returns one row per participating student: name and amount owed.
-- This example uses order 1; change the number in WHERE for another order.
-- Group by student ID as well as name so equal names are not combined.
SELECT s.name, SUM(oi.quantity * oi.unit_price) AS amount
FROM order_items AS oi
JOIN students AS s ON s.id = oi.student_id
WHERE oi.order_id = 1
GROUP BY s.id, s.name
ORDER BY s.name, s.id;

-- Question 2: What is the total of every order, sorted by date?
-- Returns order_id, order_date and total, from oldest to newest.
-- LEFT JOIN also includes an empty order with a total of zero.
SELECT o.id AS order_id, o.order_date,
       COALESCE(SUM(oi.quantity * oi.unit_price), 0.00) AS total
FROM orders AS o
LEFT JOIN order_items AS oi ON oi.order_id = o.id
GROUP BY o.id, o.order_date
ORDER BY o.order_date, o.id;
