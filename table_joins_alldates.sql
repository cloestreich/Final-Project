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