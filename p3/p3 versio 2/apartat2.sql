-- script amb la segona consulta
select nom from empleats
where num_pass in(select empl_ord   
				 from assignacions	
				 where zona not in (select codi
									from zones_biocontencio
									where nivell = 'A'));
									
source apartat3.sql;