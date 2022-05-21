
-- 1
select codi, nom from laboratoris
where codi in (select codiLab
				  from zones_biocontencio
				  where nivell = 'A')
order by nom asc;
-- 2

select nom from empleats
where num_pass in(select empl_ord   
				 from assignacions	
				 where zona not in (select codi
									from zones_biocontencio
									where nivell = 'A'));
									
--3

--select nom, zona_assignada 
--from laboratoris, qualificats 
--where codi in (select lab, zona_assignada, COUNT(zona_assignada)
--from qualificats
--group by zona_assignada
--having (COUNT(zona_assignada > 3)));

--select nom, zona_assignada
--from laboratoris, qualificats
--where zona_assignada in(select COUNT(zona_assignada)
--from qualificats
--group by num_pass
--having  COUNT(zona_assignada>3));


--COUNT(zona_assignada) from qualificats;
--4
select num_pass from ordinaris
where num_pass in(select empl_ord 
		  from assignacions
		  where lab in( select codi
						from laboratoris
						where nom = 'BCN-ARBRE'));
						
--6
select num_pass, zona_assignada from qualificats
UNION
select empl_ord, zona from assignacions;

