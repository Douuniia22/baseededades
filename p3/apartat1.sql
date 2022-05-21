--script amb la primera consulta

select codi, nom from laboratoris
where codi in (select codiLab
				  from zones_biocontencio
				  where nivell = 'A')
order by nom asc;