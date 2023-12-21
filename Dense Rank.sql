SELECT DENSE_RANK() over(order by average desc) AS urutan, YEAR(date) as year, category, sub_category, country, state, city, average as average_sales
FROM date as d, product as p, location as l, fact as f
WHERE d.id_date = f.id_date
AND l.id_location = f.id_location
AND p.id_product = f.id_product
AND YEAR(date) = '2014';
