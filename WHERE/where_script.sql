--Utilizar o banco de dados de exemplo weather_stations

SELECT * 
  FROM Station_Data;

--Filtros com operadores de igualdade e negação
SELECT Year, * 
  FROM Station_Data 
 WHERE Year = 2010;

SELECT Year, * 
  FROM Station_Data 
 WHERE Year != 2010;

SELECT Year, * 
  FROM Station_Data 
 WHERE Year <> 2010;

--Filtros com range
SELECT Year, * 
  FROM Station_Data 
 WHERE Year BETWEEN 2005 AND 2010;

SELECT Year, * 
  FROM Station_Data 
 WHERE Year >= 2005 AND Year <= 2010;

SELECT Year, * 
  FROM Station_Data 
 WHERE Year > 2005 AND Year < 2010;

--Utilização de vários valores a serem considerados no filtro
SELECT Month, * 
  FROM Station_Data 
 WHERE Month = 3 
    OR Month = 6 
    OR Month = 9 
    OR Month = 12;

SELECT Month, * 
  FROM Station_Data 
 WHERE Month IN (3, 6, 9, 12);

SELECT Month, * 
  FROM Station_Data 
 WHERE Month NOT IN (3, 6, 9, 12);

SELECT Month, * 
  FROM Station_Data 
 WHERE (Month % 3) = 0;

--Filtro utilizando textos
SELECT Report_Code, * 
  FROM Station_Data 
 WHERE Report_Code = '513A63';

SELECT Report_Code, * 
  FROM Station_Data 
 WHERE Report_Code IN ('513A63', '1F8A7B', 'EF616A');

SELECT Report_Code, * 
  FROM Station_Data 
 WHERE LENGTH(Report_Code) != 6;

SELECT Report_Code, * 
  FROM Station_Data 
 WHERE Report_Code LIKE 'A%';

SELECT Report_Code, * 
  FROM Station_Data 
 WHERE Report_Code LIKE 'B_C%';

--Filtro utilizando valores booleanos
SELECT Tornado, Hail, * 
  FROM Station_Data 
 WHERE Tornado = true 
   AND Hail = true;

SELECT Tornado, Hail,* 
  FROM Station_Data 
 WHERE Tornado = 1 
   AND Hail = 1;

SELECT Tornado, Hail,* 
  FROM Station_Data 
 WHERE Tornado  
   AND Hail;

SELECT Tornado, Hail,* 
  FROM Station_Data 
 WHERE Tornado = 0 
   AND Hail = 1;

SELECT Tornado, Hail,* 
  FROM Station_Data 
 WHERE NOT Tornado  
   AND Hail;

--Filtro com nulos
SELECT Snow_Depth, * 
  FROM Station_Data 
 WHERE Snow_Depth IS NULL;

SELECT Precipitation, * 
  FROM Station_Data 
 WHERE Precipitation <= 0.5;

SELECT Precipitation, * 
  FROM Station_Data 
 WHERE Precipitation IS NULL 
    OR Precipitation <= 0.5;

SELECT Precipitation, COALESCE(Precipitation, 0), * 
  FROM Station_Data 
 WHERE COALESCE(Precipitation, 0) <= 0.5;

--Agrupamento de condições para o filtro
SELECT Rain, Temperature, Snow_Depth, * 
  FROM Station_Data 
 WHERE Rain = 1 AND Temperature = 32 
    OR Snow_Depth > 0;

SELECT Rain, Temperature, Snow_Depth, * 
  FROM Station_Data 
 WHERE (Rain = 1 AND Temperature = 32) 
    OR Snow_Depth > 0;