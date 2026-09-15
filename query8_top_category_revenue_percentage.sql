-- What percent of total revenue comes from the top category?

SELECT
    p.product_category_name AS product_category,
    CONCAT('$', FORMAT(SUM(oi.price), 2)) AS category_revenue,
    CONCAT(
        ROUND(
            SUM(oi.price) / SUM(SUM(oi.price)) OVER () * 100,
            2
        ),
        '%'
    ) AS percent_of_total
FROM order_items AS oi
JOIN products AS p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY SUM(oi.price) DESC
LIMIT 1;