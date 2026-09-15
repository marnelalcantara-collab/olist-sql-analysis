-- What is the monthly revenue trend across the dataset?

use olist;

SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%b %Y') AS month,
    CONCAT('$', FORMAT(SUM(op.payment_value), 2)) AS monthly_revenue
FROM orders AS o
JOIN order_payments AS op
    ON o.order_id = op.order_id
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%b %Y')
ORDER BY MIN(o.order_purchase_timestamp);