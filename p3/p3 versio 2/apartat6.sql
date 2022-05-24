-- script que fa la consulta 6
-- Creeu una vista que obtingui el llistat d’empleats amb el codi de la zona que té
-- assignada. Tingueu en compte que també volem que els responsables de zona
-- apareguin com a empleats assignats, i que no volem que cap empleat aparegui més
-- d’una vegada.

create view llista_empleats AS
SELECT DISTINCT empl_ord, zona, responsable
FROM assignacions, zones_biocontencio;


SELECT * FROM llista_empleats;

source apartat7.sql;