/*Q1*/
CREATE TABLE ProductDetail1NF AS
SELECT OrderID, CustomerName, value AS Product
FROM ProductDetail, UNNEST(SPLIT(Products, ',')) AS value;

/*Q2*/
CREATE TABLE Orders AS
SELECT OrderID, CustomerName
FROM OrderDetails
GROUP BY OrderID, CustomerName;

CREATE TABLE OrderDetails2NF AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;
