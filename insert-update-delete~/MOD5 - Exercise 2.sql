-- 1. Add a new supplier.
INSERT INTO northwind.Suppliers (CompanyName, ContactName, ContactTitle, Address, City, Country, Phone)
VALUES ('Fresh Fields Co.', 'Maya Green', 'Purchasing Manager', '123 Garden Rd.', 'Austin', 'USA', '214-555-1234');

-- 2. Add a new product provided by that supplier.
INSERT INTO Products (
    ProductName,
    SupplierID,
    CategoryID,
    QuantityPerUnit,
    UnitPrice,
    UnitsInStock,
    UnitsOnOrder,
    ReorderLevel,
    Discontinued
)
VALUES (
    'Apple',
    33,
    1,
    '12 - 16 oz bottles',
    60.99,
    100,
    0,
    10,
    0
);

-- 3. List all products and their suppliers.
SELECT 
    p.ProductID
    , p.ProductName
    , s.CompanyName AS SupplierName
FROM 
    northwind.Products p
JOIN 
    northwind.Suppliers s ON (p.SupplierID = s.SupplierID);

-- 4. Raise the price of your new product by 15%.
UPDATE 
    northwind.Products
SET 
    UnitPrice = UnitPrice * 1.15
WHERE 
    ProductID = 78;

-- 5. List the products and prices of all products from that supplier.
SELECT 
    p.ProductName
    , p.UnitPrice
FROM 
    northwind.Products p
JOIN 
    northwind.Suppliers s ON (p.SupplierID = s.SupplierID)
WHERE 
    s.CompanyName = 'Fresh Fields Co.';


-- 6. Delete the new product.
DELETE FROM 
    northwind.Products
WHERE 
    ProductID = 78;

-- 7. Delete the new supplier.
DELETE FROM 
    northwind.Suppliers
WHERE 
    SupplierID = 30;

-- 8. List all products.
SELECT 
    * 
FROM 
    northwind.Products;

-- 9. List all suppliers.
SELECT 
    * 
FROM 
    northwind.Suppliers;
