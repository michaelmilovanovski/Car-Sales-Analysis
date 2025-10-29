SELECT
make,
model,
COUNT(*)
FROM car_prices_valid
GROUP BY make, model
ORDER BY COUNT(*)DESC;

SELECT *
FROM car_prices_valid
WHERE make =";