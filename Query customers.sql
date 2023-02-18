
SELECT customers.CustomerID ,
year(OrderDate) as years,
DENSE_RANK() OVER (PARTITION BY  year(OrderDate) order by sum(Quantity*UnitPrice) desc ) as _rank,
sum(Quantity*UnitPrice) as total_sale
FROM northwind.customers
inner join northwind.orders
ON customers.CustomerID = orders.CustomerID
inner join northwind.`order details`
ON orders.OrderID = `order details`.OrderID
group by customers.CustomerID,years
order by _rank



