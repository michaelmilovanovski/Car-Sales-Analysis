SELECT odometer_bucket,
        COUNT(*)AS num_sales,
        AVG(sellingprice)AS avg_selling_price
FROM (
    SELECT
         CASE
             WHEN ODOMETER < 100000 THEN '0-99,999'
             WHEN ODOMETER < 200000 THEN '100,000-199,999'
             WHEN ODOMETER < 300000 THEN '200,000-299,999'
             WHEN ODOMETER < 400000 THEN '300,000-399,999'
             WHEN ODOMETER < 500000 THEN '400,000-499,999'
             WHEN ODOMETER < 600000 THEN '500,000-599,999'
             WHEN ODOMETER < 700000 THEN '600,000-699,999'
             WHEN ODOMETER < 800000 THEN '700,000-799,999'
             WHEN ODOMETER < 900000 THEN '800,000-899,999'
             WHEN ODOMETER < 1000000 THEN '900,000-999,999'
        END AS odometer_bucket,
        sellingprice
    FROM car_prices_valid
) t 
GROUP BY odometer_bucket
ORDER BY odometer_bucket ASC;