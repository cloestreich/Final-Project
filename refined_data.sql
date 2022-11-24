select * from combined_data;


select order_name, family_name, datetime, individuals,tempmax, tempmin, temp_daily, humidity
into  lepidoptera
from combined_data
where (order_name like 'LEPIDOPTERA');

select * from lepidoptera;

select order_name, family_name, datetime, individuals,tempmax, tempmin, temp_daily, humidity
into  coleoptera
from combined_data
where (order_name like 'COLEOPTERA');

select * from coleoptera;

--top 5 lepidoptera family occurences
select family_name, count(*) as occurrences
from lepidoptera
group by family_name
order by occurrences desc, family_name;


select order_name, family_name, datetime, individuals,tempmax, tempmin, temp_daily, humidity
into  topfive_lepidoptera
from lepidoptera
where (family_name like 'NOCTUIDAE' OR 
	   family_name like 'TORTRICIDAE' OR
	   family_name like 'GEOMETRIDAE' OR 
	   family_name like 'PYRALIDAE' OR 
	   family_name like 'GRACILLARIIDAE');
select * from topfive_lepidoptera;

--top 5 coleoptera family occurences
select family_name, count(*) as occurrences
from coleoptera
group by family_name
order by occurrences desc, family_name;


select order_name, family_name, datetime, individuals,tempmax, tempmin, temp_daily, humidity
into  topfive_coleoptera
from coleoptera
where (family_name like 'CARABIDAE' OR 
	   family_name like 'HYDROPHILIDAE' OR
	   family_name like 'STAPHYLINIDAE' OR 
	   family_name like 'COCCINELLIDAE' OR 
	   family_name like 'SCARABAEIDAE');
select * from topfive_coleoptera;

