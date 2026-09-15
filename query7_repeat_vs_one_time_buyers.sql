-- How many customers are repeat buyers vs one-time buyers?

SELECT
    'Repeat Buyer' AS buyer_type,
    FORMAT(COUNT(*), 0) AS customer_count
FROM (
    SELECT
        c.customer_unique_id
    FROM customers AS c
    JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
    HAVING COUNT(o.order_id) > 1
) AS repeat_customers

UNION ALL

SELECT
    'One-Time Buyer' AS buyer_type,
    FORMAT(COUNT(*), 0) AS customer_count
FROM (
    SELECT
        c.customer_unique_id
    FROM customers AS c
    JOIN orders AS o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
    HAVING COUNT(o.order_id) = 1
) AS one_time_customers;