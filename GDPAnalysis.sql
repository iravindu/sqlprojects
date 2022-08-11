select * from GDP.dbo.Data; 

select [Country/Economy], diff,  [GDP Per Capita 2020] from GDP.dbo.Data where Continent ='Europe' order by [GDP Per Capita 2020] desc;

-- top 3 countries by GDP Per Capita
select top 5 [Country/Economy], [GDP Per Capita 2021] from GDP.dbo.Data;

-- top 3 countries with highest GDP Per Capita growth Rate

select top 3 [Country/Economy], [Growth Rate 2021] from GDP.dbo.Data;

-- Total Nominal GDP by continent 
select Continent, round(sum([Nominal GDP 2021]),2) as [Total GDP] from GDP.dbo.Data group by Continent order by [Total GDP] desc;

-- Which Countries fell down the list rank between 2020 and 2021?

-- ALTER TABLE GDP.dbo.Data
-- ADD rank_diff AS ([2021 Rank] - [2020 Rank]);

select * from GDP.dbo.Data order by rank_diff asc; 

-- which country in asia has the highest GDP?
select [Country/Economy], [GDP Per Capita 2021] from GDP.dbo.Data WHERE Continent = 'Asia' order by [GDP Per Capita 2021] desc;

select top 1 [Country/Economy],[GDP Per Capita 2021]  from GDP.dbo.Data WHERE Continent = 'Asia';

-- Total Nominal GDP of each continent
select Continent,sum([Nominal GDP 2021]) from GDP.dbo.Data GROUP BY Continent
