
SELECT 
year(orders.OrderDate) as years,
sum(northwind.`order details`.UnitPrice*Quantity) as sales
FROM northwind.orders
INNER JOIN northwind.`order details`
ON orders.OrderID = `order details`.OrderID
-- left JOIN northwind.products
-- ON northwind.`order details`.ProductID = northwind.products.ProductID
 group by year(orders.OrderDate)
 
