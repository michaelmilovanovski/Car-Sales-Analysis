SELECT
state,
COUNT(*)
FROM car_prices_valid
GROUP BY state;