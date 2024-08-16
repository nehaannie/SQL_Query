
---Write a query to find the countries with the highest temperatures in the dataset?---

SELECT Country,MAX(Temperature) AS max_temp FROM country_pollution 
GROUP BY Country
ORDER BY max_temp DESC;

---Write a query to identify the countries with the lowest CO2 emissions in the dataset?---

SELECT Country,MIN(CO2_Emissions) as min_co2 FROM country_pollution
GROUP BY Country
ORDER BY min_co2 ASC;

---Write a query to find all temperature records above a specific value, for example, 20 degrees Celsius.---

SELECT * FROM country_pollution
WHERE TEMPERATURE>20;

---Write a query to list all countries with CO2 emissions data available for the year 2020.---

SELECT Country FROM country_pollution
WHERE Date=2020 AND CO2_Emissions IS NOT NULL;

---Write a query to count the total number of temperature records in the dataset.---

SELECT COUNT(Temperature) FROM country_pollution;

---Write a query to identify any countries with missing temperature data for a specific year, for example, 2015.---

SELECT DISTINCT Country FROM country_pollution
WHERE Date=2015 AND Temperature IS NULL;

---Write a query to find the average temperature for each year in the dataset.---

SELECT Date,AVG(Temperature) as avg_temp FROM country_pollution
GROUP BY Date 
ORDER BY Date ASC;

---Write a query to calculate the total CO2 emissions for all countries in the dataset.---

SELECT SUM(CO2_Emissions) AS total_co2
FROM country_pollution;

---Write a query to sort the temperature data in descending order based on the temperature values.---

SELECT * FROM country_pollution
ORDER BY Temperature DESC;
