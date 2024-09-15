SELECT order_date, SUM(list_price * quantity) AS total_sales
FROM sales.orders
JOIN sales.order_items ON orders.order_id = order_items.order_id
GROUP BY order_date
ORDER BY order_date;