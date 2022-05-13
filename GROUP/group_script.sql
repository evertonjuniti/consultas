--Utilizar o banco de dados de exemplo weather_stations

SELECT COUNT(*) AS Record_Count 
  FROM Station_Data;

SELECT COUNT(*) AS Record_Count 
  FROM Station_Data 
 WHERE Tornado = 1;

SELECT Year, COUNT(*) AS Record_Count 
  FROM Station_Data 
 WHERE Tornado = 1 
 GROUP BY Year;

SELECT Year, Month, COUNT(*) AS Record_Count 
  FROM Station_Data 
 WHERE Tornado = 1 
 GROUP BY Year, Month;

--Adicionando ordenação das informações agrupadas
SELECT Year, Month, COUNT(*) AS Record_Count 
  FROM Station_Data 
 WHERE Tornado = 1 
 GROUP BY Year, Month 
 ORDER BY Year, Month;

SELECT Year, Month, COUNT(*) AS Record_Count 
  FROM Station_Data 
 WHERE Tornado = 1 
 GROUP BY Year, Month 
 ORDER BY Year DESC, Month;

SELECT COUNT(Snow_Depth) AS Recorded_Snow_Depth_Count 
  FROM Station_Data;

--Funções de agregação MAX, AVG e SUM
SELECT Month, AVG(Temperature) AS Avg_Temp 
  FROM Station_Data 
 WHERE Year >= 2000 
 GROUP BY Month;

SELECT Month, ROUND(AVG(Temperature), 2) AS Avg_Temp 
  FROM Station_Data 
 WHERE Year >= 2000 
 GROUP BY Month;

SELECT Year, SUM(Snow_Depth) AS Total_Snow 
  FROM Station_Data 
 WHERE Year >= 2000 
 GROUP BY Year;

SELECT Year, 
       SUM(Snow_Depth) AS Total_Snow, 
       SUM(Precipitation) AS Total_Precipitation, 
       MAX(Precipitation) AS Max_Precipitation 
  FROM Station_Data 
 WHERE Year >= 2000 
 GROUP BY Year;

SELECT Year, 
       SUM(Precipitation) AS Tornado_Precipitation 
  FROM Station_Data 
 WHERE Tornado = 1 
 GROUP BY Year;

--Filtro de agrupamentos
SELECT Year, 
       SUM(Precipitation) AS Total_Precipitation 
  FROM Station_Data 
 WHERE Total_Precipitation > 30 
 GROUP BY Year;

SELECT Year, 
       SUM(Precipitation) AS Total_Precipitation 
  FROM Station_Data 
 GROUP BY Year 
HAVING Total_Precipitation > 30;

SELECT Year, 
       SUM(Precipitation) AS Total_Precipitation 
  FROM Station_Data 
 GROUP BY Year 
HAVING SUM(Precipitation) > 30;

--Obtendo dados únicos/distintos
SELECT Station_Number 
  FROM Station_Data;

SELECT DISTINCT Station_Number 
  FROM Station_Data;

SELECT DISTINCT Station_Number, Year 
  FROM Station_Data;