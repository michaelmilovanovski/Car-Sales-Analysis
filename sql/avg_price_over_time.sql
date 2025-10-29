SELECT 
    saledate,
    SUBSTR(saledate, 12, 4) AS sale_year,
    SUBSTR(saledate, 5, 3) AS sale_monthname,
    SUBSTR(saledate, 9, 2) AS sale_day,
    CASE SUBSTR(saledate, 5, 3)
        WHEN 'Jan' THEN 1
        WHEN 'Feb' THEN 2
        WHEN 'Mar' THEN 3
        WHEN 'Apr' THEN 4
        WHEN 'May' THEN 5
        WHEN 'Jun' THEN 6
        WHEN 'Jul' THEN 7
        WHEN 'Aug' THEN 8
        WHEN 'Sep' THEN 9
        WHEN 'Oct' THEN 10
        WHEN 'Nov' THEN 11
        WHEN 'Dec' THEN 12
        ELSE NULL
    END AS sale_month
FROM car_prices_valid
FETCH FIRST 1000 ROWS ONLY;