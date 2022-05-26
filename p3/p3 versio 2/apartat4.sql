-- script per a la consulta 4

select num_pass from ordinaris
where num_pass in(select empl_ord 
		  from assignacions
		  where lab in( select codi
						from laboratoris
						where nom = 'BCN-ARBRE'));

source apartat5.sql;
