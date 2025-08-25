SELECT *
FROM Bikes

SELECT * 
FROM cost

SELECT *
FROM Bikes
JOIN Cost ON Bikes.yr = Cost.yr;

CREATE TABLE bike_financial AS
SELECT *, (Revenue - Total_Cost) AS Profit from(
SELECT
	Bikes.yr,
	Bikes.date,
	Bikes.season,
    Bikes.riders,
	Bikes.rider_type,
	Bikes.hr,
    Cost.price,
    (Bikes.riders * Cost.price) AS Revenue,
	(Bikes.riders * Cost.cogs) AS Total_Cost
FROM Bikes
JOIN Cost ON Bikes.yr = Cost.yr) AS SUB;

SELECT *
FROM Bike_financial;

SELECT 
    Bikes.yr,
	Bikes.date,
    Bikes.riders,
	Bikes.rider_type,
	Bikes.season,
	Bikes.hr,
    Cost.price,
    (Bikes.riders * Cost.price) AS revenue,
    Cost.cogs,
    ((Bikes.riders * Cost.price) - Cost.cogs) AS profit
FROM Bikes
JOIN Cost ON Bikes.yr = Cost.yr;


