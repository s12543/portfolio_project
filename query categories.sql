-- create a report for sales by category.
DELIMITER $$
CREATE PROCEDURE sales_category()
BEGIN
SELECT 
northwind.categories.CategoryID,
northwind.categories.CategoryName,
sum(northwind.`order details extended`.Extendedprice) as productsales
FROM northwind.categories
INNER JOIN northwind.products
ON categories.CategoryID = products.CategoryID
INNER JOIN northwind.`order details extended`
ON products.ProductID = `order details extended`.ProductID
GROUP BY  northwind.categories.CategoryID,
northwind.categories.CategoryName
order by productsales desc;
END$$
DELIMITER 
CALL sales_category();
