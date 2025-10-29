SELECT
sale_month,
COUNT(*)
FROM car_prices_valid
GROUP BY sale_month
ORDER BY sale_month ASC;