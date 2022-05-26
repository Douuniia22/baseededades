

select  nom, num_pass
from assignacions, empleats
where num_pass=empl_ord
group by empl_ord
having COUNT(empl_ord)> (select COUNT(empl_ord)
						from assignacions, empleats 
						where nom= "Jordi Guasch" and num_pass=empl_ord
						group by empl_ord
						having (count(empl_ord)));
            
source apartat5.sql;
