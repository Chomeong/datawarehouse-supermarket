SELECT YEAR(date) as year, country, state, city, AVG(average) as average_sales
FROM date as d, location as l, fact as f, product as p
WHERE d.id_date = f.id_date
AND l.id_location = f.id_location
AND p.id_product = f.id_product
AND sub_category = 'Phones'
GROUP BY YEAR(date), country, state, city WITH ROLLUP;
