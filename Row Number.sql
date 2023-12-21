SELECT ROW_NUMBER() OVER(PARTITION BY name order by average desc) AS Nomor, YEAR(date) as year, name, sub_category as product, city, average as average_sales
FROM date as d, product as p, location as l, fact as f, name as n
WHERE d.id_date = f.id_date
AND l.id_location = f.id_location
AND p.id_product = f.id_product
AND n.id_name = f.id_name
AND YEAR(date) = 2016;
