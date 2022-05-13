--Utilizar o banco de dados de exemplo rexon_metals

SELECT * 
  FROM Customer;

SELECT Customer_Id, Name 
  FROM Customer;

--Manipulação do resultado de colunas com números
SELECT Product_Id, Description, Price, Price * 1.07 AS Taxed_Price 
  FROM Product;

SELECT Product_Id, Description, Price AS Untaxed_Price, Price * 1.07 AS Taxed_Price 
  FROM Product;

SELECT Product_Id, Description, Price AS Untaxed_Price, ROUND(Price * 1.07, 2) AS Taxed_Price 
  FROM Product;

--Manipulação do resultado de colunas com textos
SELECT Name, City||','||State AS Location 
  FROM Customer;

SELECT Name, Street_Address||','||City||','||State||','||Zip AS Ship_Address 
  FROM Customer;