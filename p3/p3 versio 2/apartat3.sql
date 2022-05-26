-- script per a la tercera consulta
-- Obtenir quines zones tenen més de 3 empleats qualificats. Concretament es
-- demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per
-- laboratori i zona


select nom, zona_assignada
from laboratoris, qualificats
where codi = lab
group by zona_assignada
having (count(zona_assignada) > 3);


source apartat4.sql;
