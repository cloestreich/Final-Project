select insects.order_name,
	insects.family_name,
	insects.scientific_name,
	insects.datetime,
	insects.individuals
	
from insects

left join weather

on insects.datetime = weather.datetime

