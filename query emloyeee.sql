-- employee with 2nd highest salary.
 
SELECT 
distinct(northwind.employees.FirstName) as empolyee_name,
(employees.EmployeeID),
Salary
FROM northwind.`order details`
INNER JOIN orders
ON `order details`.OrderID = orders.OrderID
INNER JOIN employees
ON orders.EmployeeID = employees.EmployeeID
order by Salary desc
limit 1,1





 