SELECT
    make,
    model,
    body,
    num_sales,
    body_rank
FROM (
    SELECT
        make,
        model,
        body,
        COUNT(*) AS num_sales,
        RANK() OVER (PARTITION BY body ORDER BY COUNT(*) DESC) AS body_rank
    FROM car_prices_valid
    GROUP BY make, model, body
) s
WHERE body_rank <= 5
ORDER BY body ASC, num_sales DESC;