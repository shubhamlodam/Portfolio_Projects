------------------------------------------------------------------------------------------------------------------
# 1. The World Bank's international debt data
-------------------------------------------------------------------------------------------------------------------
use internship;
select * from IDS_SeriesMetaData;
select * from IDS_ALLCountries_Data;

create table International_Debt_Data as
select Country_Name,Country_Code,Series_Code as Indicator_Code,Indicator_Name,
(`1970` + `1971` + `1972` + `1973` + `1974` + `1975` + `1976` + `1977` + `1978` + `1979`+ `1980` + `1981` + 
	`1982` + `1983` + `1984` + `1985` +`1986` + `1987` + `1988` + `1989` + `1990` + `1991` + `1992` + `1993` + 
    `1994` +`1995` + `1996` + `1997` + `1998` + `1999` + `2000` + `2001` + `2002` + `2003` + `2004` + `2005` + 
    `2006` + `2007` + `2008` + `2009` + `2010` + `2011` + `2012` + `2013` + `2014` + `2015`)as Debt
from IDS_ALLCountries_Data ACD
inner join IDS_SeriesMetaData SMD 
on ACD.Series_Code = SMD.Code
where country_name not like '%income%' 
and lower(country_name) not like '%ida%' ;

select * from International_Debt_Data;

--------------------------------------------------------------------------------------------------------------------
# 2. Finding the number of distinct countries
--------------------------------------------------------------------------------------------------------------------

select count(distinct Country_Name) as total_number_of_distinct_countries
from International_Debt_Data; -- 123

--------------------------------------------------------------------------------------------------------------------
# 3. Finding out the distinct debt indicators
--------------------------------------------------------------------------------------------------------------------

select distinct Indicator_Code as Distinct_Debt_Indicators
from International_Debt_Data
order by 1;

---------------------------------------------------------------------------------------------------------------------
# 4. Totaling the amount of debt owed by the countries
---------------------------------------------------------------------------------------------------------------------

select sum(debt) as Total_amount_of_debt
from international_debt_data;

--------------------------------------------------------------------------------------------------------------------
# 5. Country with the highest debt
--------------------------------------------------------------------------------------------------------------------

select Country_Name, sum(debt) as Total_amount_of_debt
from international_debt_data
group by 1 
order by 2 desc 
limit 1;

---------------------------------------------------------------------------------------------------------------
# 6. Average amount of debt across indicators
---------------------------------------------------------------------------------------------------------------

select indicator_code as debt_indicator, indicator_name, avg(debt) as average_debt
from international_debt_data
group by 1, 2
ORDER BY 3 DESC;

----------------------------------------------------------------------------------------------------------------
# 7. The highest amount of principal repayments
-----------------------------------------------------------------------------------------------------------------

select country_name, indicator_name,debt as repayment_amount 
from international_debt_data
where indicator_code='DT.AMT.DLXF.CD' 
order by debt desc limit 1;

----------------------------------------------------------------------------------------------------------------
# 8. The most common debt indicator
-----------------------------------------------------------------------------------------------------------------

select Indicator_Code , count(Indicator_Code) as indicator_count
from international_debt_data 
group by Indicator_code order by 2 desc;

------------------------------------------------------------------------------------------------------------------
# 9. Other viable debt issues and conclusion
------------------------------------------------------------------------------------------------------------------

select country_name, max(debt) as maximum_debt
from international_debt_data
group by 1
ORDER BY 2 DESC;

------------------------------------------###-----------------------------------------------------------------------
