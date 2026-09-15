-- What is the month-over-month change in revenue?
WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(o.order_purchase_timestamp, '%b %Y') AS month,
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month_sort,
        SUM(op.payment_value) AS revenue
    FROM orders AS o
    JOIN order_payments AS op
        ON o.order_id = op.order_id
    GROUP BY
        DATE_FORMAT(o.order_purchase_timestamp, '%b %Y'),
        DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
)

SELECT
    month,
    CONCAT('$', FORMAT(revenue, 2)) AS revenue,
    CONCAT(
        ROUND(
            (revenue - LAG(revenue) OVER (ORDER BY month_sort))
            / LAG(revenue) OVER (ORDER BY month_sort) * 100,
            2
        ),
        '%'
    ) AS mom_change
FROM monthly_revenue
ORDER BY month_sort;