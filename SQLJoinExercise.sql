/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name*/
/*SELECT P.Name AS ProductName, C.Name AS CategoryName FROM bestbuy.products AS P
INNER JOIN bestbuy.categories AS C 
ON P.CategoryID = C.CategoryID WHERE C.Name = 'Computers';*/

-- joins: find all product names, product prices, and products ratings that have a rating of 5
 /*SELECT P.Name AS ProductName, P.Price AS ProductPrice, R.Rating AS ProductRating
 FROM bestbuy.products AS P INNER JOIN bestbuy.reviews AS R
 ON P.ProductID = R.ProductID WHERE R.Rating = 5;*/

-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
/*SELECT E.EmployeeID AS EMPID, E.FirstName AS EmployeeName, E.LastName AS EmployeeLast, SUM(S.Quantity) AS QuantitySold
FROM bestbuy.sales AS S INNER JOIN bestbuy.employees AS E
ON E.EmployeeID = S.EmployeeID 
GROUP BY E.EmployeeID
ORDER BY QuantitySold DESC
LIMIT 1;*/

-- joins: find the name of the department, and the name of the category for Appliances and Games
/*SELECT D.Name AS DeptName, C.Name AS CatName
FROM bestbuy.categories AS C INNER JOIN bestbuy.departments AS D
ON C.DepartmentID = D.DepartmentID
WHERE C.Name = 'Appliances' OR C.Name = 'Games';*/
-- joins: find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM()
/*SELECT P.Name AS Product, SUM(S.Quantity) AS QuantitySold, SUM(S.Quantity * S.PricePerUnit) AS TotalPrice
FROM bestbuy.products AS P INNER JOIN bestbuy.sales AS S
ON P.ProductID = S.ProductID
WHERE P.Name = 'Eagles: Hotel California'
GROUP BY P.Name;*/

-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
/*SELECT P.Name AS Product, R.Reviewer AS Reveiwer, R.Rating AS Rating, R.Comment AS Comment
FROM bestbuy.products AS P INNER JOIN bestbuy.reviews AS R
ON P.ProductID = R.ProductID
WHERE P.Name = 'Visio TV'
ORDER BY R.Rating
LIMIT 1;*/

/* Extra - May be difficult
Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, 
the name of each product, how many of that product they sold */
/*SELECT E.EmployeeID AS EmpID, E.FirstName AS FirstName, E.LastName AS LastName, P.Name AS ProductSold, SUM(S.Quantity) AS TotalSold
FROM bestbuy.employees AS E INNER JOIN bestbuy.sales AS S
ON E.EmployeeID = S.EmployeeID INNER JOIN bestbuy.products AS P
ON S.ProductID = P.ProductID
GROUP BY E.EmployeeID, P.ProductID;*/

