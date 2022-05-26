
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

select nom, zona_assignada
from laboratoris, qualificats
where codi = lab
group by zona_assignada
having (count(zona_assignada) > 3);

--4
select num_pass from ordinaris
where num_pass in(select empl_ord 
		  from assignacions
		  where lab in( select codi
						from laboratoris
						where nom = 'BCN-ARBRE'));
						

    
--5

select  nom, num_pass
from assignacions, empleats
where num_pass=empl_ord
group by empl_ord
having COUNT(empl_ord)> (select COUNT(empl_ord)
						from assignacions, empleats 
						where nom= "Jordi Guasch" and num_pass=empl_ord
						group by empl_ord
						having (count(empl_ord)));

					
					--6
select num_pass, zona_assignada from qualificats
UNION
select empl_ord, zona from assignacions;

