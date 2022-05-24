-- script per a la tercera consulta
-- Obtenir quines zones tenen més de 3 empleats qualificats. Concretament es
-- demana el codi de la zona conjuntament amb el nom del laboratori, ordenat per
-- laboratori i zona


select zona_assignada, lab
from qualificats
order by lab, zona_assignada;

source apartat4.sql;