create table all_dates (
	order_name VARCHAR NOT NULL,
	family_name VARCHAR NOT NULL,
	datetime DATE NOT NULL,
	individuals INT NOT NULL,
	tempmax FLOAT NOT NULL,
	tempmin FLOAT NOT NULL,
	temp_daily FLOAT NOT NULL,
	humidity FLOAT NOT NULL);
	
drop table all_dates

select insects.order_name,
	insects.family_name,
	insects.individuals,
	weather.datetime,
	weather.tempmax,
	weather.tempmin,
	weather.temp_daily,
	weather.humidity
	
into all_dates
	
from insects

right join weather

on weather.datetime = insects.datetime

select * from all_dates
order by datetime;








