-- script que fa la consulta 6
-- Creeu una vista que obtingui el llistat d’empleats amb el codi de la zona que té
-- assignada. Tingueu en compte que també volem que els responsables de zona
-- apareguin com a empleats assignats, i que no volem que cap empleat aparegui més
-- d’una vegada.

select num_pass, zona_assignada from qualificats
UNION
select empl_ord, zona from assignacions;


source apartat7.sql;
