--Utilizar o banco de dados de exemplo rexon_metals

SELECT * 
  FROM Product 
 WHERE Price BETWEEN 5 AND 10;
 
SELECT * 
  FROM Customer_Order;

SELECT * 
  FROM Customer_Order 
 WHERE Product_Id IN (SELECT Product_Id 
                        FROM Product 
                       WHERE Price BETWEEN 5 AND 10); 

SELECT * 
  FROM Customer_Order 
 WHERE EXISTS (SELECT Product_Id 
                 FROM Product 
                WHERE Price BETWEEN 5 AND 10 
                  AND Product.Product_Id = Customer_Order.Product_Id); 

SELECT Customer_Order.* 
  FROM Customer_Order 
 INNER JOIN (SELECT Product_Id 
               FROM Product 
              WHERE Price BETWEEN 5 AND 10) AS Product 
    ON Customer_Order.Product_Id = Product.Product_Id; 

WITH CTE_Product AS 
(
    SELECT Product_Id 
      FROM Product 
     WHERE Price BETWEEN 5 AND 10 
)
SELECT * 
  FROM Customer_Order 
 INNER JOIN CTE_Product 
    ON (Customer_Order.Product_Id = CTE_Product.Product_Id); 

WITH CTE_Product AS 
(
    SELECT Product_Id 
      FROM Product 
     WHERE Price BETWEEN 5 AND 10 
), CTE_Customer_Order AS 
(
    SELECT Customer_Id 
      FROM Customer_Order 
     INNER JOIN CTE_Product 
        ON (Customer_Order.Product_Id = CTE_Product.Product_Id) 
)
SELECT * 
  FROM Customer 
 INNER JOIN CTE_Customer_Order 
    ON (Customer.Customer_Id = CTE_Customer_Order.Customer_Id); 