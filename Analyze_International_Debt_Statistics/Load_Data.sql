create database internship;
use internship;

CREATE TABLE IDS_ALLCountries_Data (
	Country_Name VARCHAR(50), 
	Country_Code VARCHAR(3), 
	Counterpart_Area_Name VARCHAR(5), 
	Counterpart_Area_Code VARCHAR(3), 
	Series_Name VARCHAR(99), 
	Series_Code VARCHAR(19), 
	`1970` DECIMAL(38, 9), 
	`1971` DECIMAL(38, 9), 
	`1972` DECIMAL(38, 9), 
	`1973` DECIMAL(38, 9), 
	`1974` DECIMAL(38, 9), 
	`1975` DECIMAL(38, 9), 
	`1976` DECIMAL(38, 9), 
	`1977` DECIMAL(38, 9), 
	`1978` DECIMAL(38, 9), 
	`1979` DECIMAL(38, 13), 
	`1980` DECIMAL(38, 9), 
	`1981` DECIMAL(38, 9), 
	`1982` DECIMAL(38, 9), 
	`1983` DECIMAL(38, 9), 
	`1984` DECIMAL(38, 9), 
	`1985` DECIMAL(38, 9), 
	`1986` DECIMAL(38, 9), 
	`1987` DECIMAL(38, 9), 
	`1988` DECIMAL(38, 14), 
	`1989` DECIMAL(38, 9), 
	`1990` DECIMAL(38, 9), 
	`1991` DECIMAL(38, 9), 
	`1992` DECIMAL(38, 9), 
	`1993` DECIMAL(38, 9), 
	`1994` DECIMAL(38, 9), 
	`1995` DECIMAL(38, 9), 
	`1996` DECIMAL(38, 9), 
	`1997` DECIMAL(38, 9), 
	`1998` DECIMAL(38, 9), 
	`1999` DECIMAL(38, 9), 
	`2000` DECIMAL(38, 9), 
	`2001` DECIMAL(38, 9), 
	`2002` DECIMAL(38, 9), 
	`2003` DECIMAL(38, 9), 
	`2004` DECIMAL(38, 9), 
	`2005` DECIMAL(38, 9), 
	`2006` DECIMAL(38, 9), 
	`2007` DECIMAL(38, 9), 
	`2008` DECIMAL(38, 9), 
	`2009` DECIMAL(38, 9), 
	`2010` DECIMAL(38, 9), 
	`2011` DECIMAL(38, 9), 
	`2012` DECIMAL(38, 9), 
	`2013` DECIMAL(38, 9), 
	`2014` DECIMAL(38, 9), 
	`2015` DECIMAL(38, 9), 
	`2016` DECIMAL(38, 9), 
	`2017` DECIMAL(38, 9), 
	`2018` DECIMAL(38, 9), 
	`2019` DECIMAL(38, 14), 
	`2020` DECIMAL(38, 9), 
	`2021` DECIMAL(38, 9), 
	`2022` DECIMAL(38, 1), 
	`2023` DECIMAL(38, 1), 
	`2024` DECIMAL(38, 1), 
	`2025` DECIMAL(38, 1), 
	`2026` DECIMAL(38, 1), 
	`2027` DECIMAL(38, 1), 
	`2028` DECIMAL(38, 1), 
	`2029` DECIMAL(38, 1)
);

load data local infile 'D:\IDS_ALLCountries_Data.csv'
into table IDS_ALLCountries_Data
fields terminated by ','
enclosed by '"'
lines terminated by '\n' ignore 1 rows;

select * from IDS_ALLCountries_Data;
----------------------------------------------------------------------------------------------------------------

CREATE TABLE IDS_SeriesMetaData (
	`Code` VARCHAR(19) NOT NULL, 
	License_Type VARCHAR(9), 
	Indicator_Name VARCHAR(99) NOT NULL, 
	Short_definition VARCHAR(1285), 
	Long_definition VARCHAR(1285) NOT NULL, 
	`Source` VARCHAR(257) NOT NULL, 
	Topic VARCHAR(86) NOT NULL, 
	Dataset VARCHAR(29) NOT NULL, 
	Periodicity VARCHAR(6) NOT NULL, 
	Aggregation_method VARCHAR(16) NOT NULL, 
	General_comments VARCHAR(161)
);

load data local infile 'D:\IDS_SeriesMetaData.csv'
into table IDS_SeriesMetaData
fields terminated by ','
enclosed by  '"'
lines terminated by '\n' ignore 1 rows;

select * from IDS_SeriesMetaData;

