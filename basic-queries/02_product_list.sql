-- What is the name of the table that holds the items Northwind sells?
SELECT
	ProductName
FROM
	northwind.products;
    
-- Write a query to list the product id, product name, and unit price of every product.
SELECT
	ProductName
    ,ProductID
    ,UnitPrice
FROM
		northwind.products;
        
-- Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.
SELECT
	ProductName
    ,ProductID
    ,UnitPrice
FROM
		northwind.products
ORDER BY
	UnitPrice ASC;

-- What are the products that we carry where the unit price is $7.50 or less?
SELECT
	ProductName
    ,ProductID
    ,UnitPrice
FROM
		northwind.products
WHERE
	UnitPrice <= 7.50;
    
-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.
SELECT
	ProductID
	,ProductName
    ,UnitPrice
    ,UnitsInStock
FROM
		northwind.products
WHERE
	UnitsInStock >= 100
ORDER BY
	UnitPrice DESC;
    
-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name.
SELECT
	ProductName
    ,ProductID
    ,UnitPrice
    ,UnitsInStock
FROM
		northwind.products
WHERE
	UnitsInStock >= 100
ORDER BY
	UnitPrice DESC,
    ProductName ASC;

-- 7. What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name.
SELECT
	 ProductID
    ,ProductName
    ,UnitPrice
    ,UnitsInStock
    ,UnitsOnOrder
FROM
		northwind.products
WHERE
	UnitsInStock = 0 AND
    UnitsOnOrder >=1
ORDER BY
    ProductName ASC;

-- What is the name of the table that holds the types (categories) of the items Northwind sells?
SELECT
	*
FROM 
	northwind.categories;

-- Write a query that lists all of the columns and all of the rows of the categories table? What is the category id of seafood?
SELECT
	*
FROM 
	northwind.categories
WHERE
	CategoryName="SeaFood";
	-- Products.categoryID =(SELECT CategoryID FROM categories WHERE categoryName =Seafood")

-- 10 Examine the Products table. How does it identify the type (category) of each item sold? Write a query to list all of the seafood items we carry.
SELECT
	*
FROM 
	northwind.Products
WHERE
	ProductID=8;
-- What are the first and last names of all of the Northwind employees?
SELECT
	FirstName, LastName
    -- CONCAT(eMPLOYEE.firstname, " "  , employee.lastname) as fullname
FROM 
	northwind.employees;

-- What employees have "manager" in their titles?
SELECT
	*
FROM 
	northwind.employees
WHERE
	Title like "%manager%";

-- List the distinct job titles in employees.
SELECT
	DISTINCT Title
FROM 
	northwind.employees;

-- What employees have a salary that is between $200 0 and $2500?
SELECT
	*
FROM 
	northwind.employees
WHERE
	Salary > 2000 AND 
    Salary < 2500;
	-- salary BETWEEN 2000 AND 2500;
-- List all of the information about all of Northwind's suppliers.
SELECT
	*
FROM 
	northwind.suppliers;
    
-- Examine the Products table. How do you know what supplier supplies each product? Write a query to list all of the items that "Tokyo Traders" supplies to Northwind
SELECT
	*
FROM 
	northwind.Products
WHERE
	SupplierID =4;
    
