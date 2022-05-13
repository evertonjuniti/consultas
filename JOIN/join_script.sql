--Utilizar o banco de dados de exemplo rexon_metals

--INNER JOIN
SELECT Order_Id, 
       Customer.Customer_Id, 
       Order_Date, 
       Ship_Date, 
       Name, 
       Street_Address, 
       City, 
       State, 
       Zip, 
       Product_Id, 
       Order_Qty 
  FROM Customer 
 INNER JOIN Customer_Order ON (Customer.Customer_Id = Customer_Order.Customer_Id);

SELECT Customer.Customer_Id, 
       Name, 
       Street_Address, 
       City, 
       State, 
       Zip, 
       Order_Date, 
       Ship_Date, 
       Order_Id, 
       Product_Id, 
       Order_Qty 
  FROM Customer 
 INNER JOIN Customer_Order ON (Customer.Customer_Id = Customer_Order.Customer_Id);

--LEFT JOIN
SELECT Customer.Customer_Id, 
       Name, 
       Street_Address, 
       City, 
       State, 
       Zip, 
       Order_Date, 
       Ship_Date, 
       Order_Id, 
       Product_Id, 
       Order_Qty 
  FROM Customer 
  LEFT JOIN Customer_Order ON (Customer.Customer_Id = Customer_Order.Customer_Id);

SELECT Customer.Customer_Id, 
       Name AS Customer_Name 
  FROM Customer 
  LEFT JOIN Customer_Order ON (Customer.Customer_Id = Customer_Order.Customer_Id) 
 WHERE Order_Id IS NULL;

--JOIN com mais de 2 tabelas envolvidas
SELECT Order_Id, 
       Customer.Customer_Id, 
       Name AS Customer_Name, 
       Street_Address, 
       City, 
       State, 
       Zip, 
       Order_Date, 
       Product_Id, 
       Description, 
       Order_Qty 
  FROM Customer 
 INNER JOIN Customer_Order ON (Customer_Order.Customer_Id = Customer.Customer_Id) 
 INNER JOIN Product ON (Customer_Order.Product_Id = Product.Product_Id);

SELECT Order_Id, 
       Customer.Customer_Id, 
       Name AS Customer_Name, 
       Street_Address, 
       City, 
       State, 
       Zip, 
       Order_Date, 
       Product_Id, 
       Description, 
       Order_Qty, 
       Order_Qty * Price AS Revenue 
  FROM Customer 
 INNER JOIN Customer_Order ON (Customer_Order.Customer_Id = Customer.Customer_Id) 
 INNER JOIN Product ON (Customer_Order.Product_Id = Product.Product_Id);

--Juntando com agregação
SELECT Customer.Customer_Id, 
       Name AS Customer_Name, 
       SUM(Order_Qty * Price) AS Total_Revenue 
  FROM Customer_Order 
 INNER JOIN Customer ON (Customer.Customer_Id = Customer_Order.Customer_Id) 
 INNER JOIN Product ON (Customer_Order.Product_Id = Product.Product_Id) 
 GROUP BY Customer.Customer_Id, Name;

SELECT Customer.Customer_Id, 
       Name AS Customer_Name, 
       SUM(Order_Qty * Price) AS Total_Revenue 
  FROM Customer_Order 
  LEFT JOIN Customer ON (Customer.Customer_Id = Customer_Order.Customer_Id) 
  LEFT JOIN Product ON (Customer_Order.Product_Id = Product.Product_Id) 
 GROUP BY Customer.Customer_Id, Name;

SELECT Customer.Customer_Id, 
       Name AS Customer_Name, 
       COALESCE(SUM(Order_Qty * Price), 0) AS Total_Revenue 
  FROM Customer_Order 
  LEFT JOIN Customer ON (Customer.Customer_Id = Customer_Order.Customer_Id) 
  LEFT JOIN Product ON (Customer_Order.Product_Id = Product.Product_Id) 
 GROUP BY Customer.Customer_Id, Name;