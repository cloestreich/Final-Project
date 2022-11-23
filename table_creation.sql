-- creating tables
CREATE TABLE insects (
	order_name VARCHAR NOT NULL,
	family_name VARCHAR NOT NULL,
	scientific_name VARCHAR NOT NULL,
	datetime DATE NOT NULL,
	individuals INT NOT NULL
	);
	
select * from insects;

CREATE TABLE weather (
	location_name VARCHAR NOT NULL,
	datetime DATE NOT NULL,
	tempmax FLOAT NOT NULL,
	tempmin FLOAT NOT NULL,
	temp_daily FLOAT NOT NULL,
	humidity FLOAT NOT NULL);
	select * from weather;

create table combined_data (
	order_name VARCHAR NOT NULL,
	family_name VARCHAR NOT NULL,
	scientific_name VARCHAR NOT NULL,
	datetime DATE NOT NULL,
	individuals INT NOT NULL,
	location_name VARCHAR NOT NULL,
	tempmax FLOAT NOT NULL,
	tempmin FLOAT NOT NULL,
	temp_daily FLOAT NOT NULL,
	humidity FLOAT NOT NULL);
	
select * from combined_data;