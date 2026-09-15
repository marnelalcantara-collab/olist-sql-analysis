-- Segment customers into spend tiers (Low/Medium/High).

WITH customer_spending AS (
    SELECT
        c.customer_id,
        SUM(op.payment_value) AS total_spent
    FROM customers AS c
    JOIN orders AS o
        ON c.customer_id = o.customer_id
    JOIN order_payments AS op
        ON o.order_id = op.order_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    CONCAT('$', FORMAT(total_spent, 2)) AS total_spent,
    CASE
        WHEN total_spent < 100 THEN 'Low'
        WHEN total_spent < 500 THEN 'Medium'
        ELSE 'High'
    END AS spend_tier
FROM customer_spending
ORDER BY total_spent DESC;