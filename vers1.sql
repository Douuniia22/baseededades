
insert into paisos (nom, pot_desenv, tractat_signat) 
				values  ('ESPANYA', 1, 'S'),
						('FRANCA', 2, 'N'),
						('BELGICA', 3, 'desconegut'),
						('ANGLATERRA', 4, 'N'),
						('IRLANDA', 5, 'S'),
						('ARGENTINA', 6, 'S');


insert into laboratoris (codi, nom, pais) 
				values  (12345, 'Lab phi', 'ESPANYA'),
						(12346, 'Lab jun', 'FRANCA'),
						(12347, 'Lab neu', 'ANGLATERRA'),
						(12348, 'Lab viw', 'IRLANDA'),
						(12349, 'Lab uni', 'BELGICA'),
						(12343, 'Lab fp', 'ARGENTINA'),
						(12292, 'BCN-ARBRE', 'ESPANYA');
				

insert into empleats (num_pass, nom) 
				values  ('7174198S', 'JAUME GUTIERREZ'),
						('2481471D', 'JOSEPH BOSH'),
						('3953904R', 'RELS BE'),
						('9082394J','LUZ GARCIA'),
						('0923484L','AFRICA GOMEZ'),
						('6389423F', 'CARLOS MOL'), 
						('4879187F', 'MARIA MOLINA'),
						('7109378U', 'PAULO LONDRA'),
						('9848283L', 'ORIOL LLOBET'),
						('4828974F', 'GARY SANO'),
						('8492498L', 'ELENA MITJAVILA'),
						('7841747G', 'QUIM DOMENECH'),
						('1178978J', 'JORDI GUASCH'),
						('5235902D', 'CINTA JIMENEZ'),
						('6669238A', 'JAMES BRIGHT'),
						('4728947H', 'CHARLES DARWIN');
			
						

insert into ordinaris (num_pass)
				values  ('7174198S'),
						('2481471D'),
						('3953904R'),
						('9082394J'),
						('0923484L'),
						('1178978J'),
						('6389423F');
						

SET FOREIGN_KEY_CHECKS=0;
insert into zones_biocontencio (codi, codiLab, nivell, responsable)
				values  (2857827, 12345, 'A', '7109378U'),
						(8837436, 12292, 'M', '7841747G'),
						(4827487, 12349, 'A', '4828974F'),
						(8238428, 12346, 'M', '9848283L'),
						(2849272, 12292, 'B', '8492498L');
						
insert into qualificats (num_pass, titulacio, zona_assignada, lab)
				values  ('7109378U', 'Enginyeria quimica', 2857827, 12345),
						('4828974F', 'Biotecnologia', 4827487, 12349),
						('9848283L', 'Enginyeria informatica', 8238428, 12346),
						('8492498L', 'Enginyeria biomedica', 2849272, 12292),
						('6669238A', 'Enginyeria biomedica', 8238428, 12346),
						('5235902D', 'Biotecnologia', 8238428, 12346),
						('4879187F', 'Enginyeria biomedica', 4827487, 12349),
						('7841747G', 'Enginyeria informatica', 8238428, 12346),
						('4728947H', 'Quimica', 8837436, 12292);

SET FOREIGN_KEY_CHECKS=1;

insert into armes_biologiques (nom, fecha, potencial, zona, lab)
				values  ('LANO', '2001-05-20', 10, 2857827, 12345),
						('JOEF', '2003-05-18', 5, 8238428, 12346),
						('LADS', ' 2021-08-26', 3, 2849272, 12292);

insert into assignacions(fecha1, empl_ord, zona, Lab, data_fi)
				values  ('2005-09-10', '7174198S', 2857827, 12345, '2013-01-30'),
						('2003-12-20', '2481471D', 8238428, 12346, '2020-01-30'),
						('2008-12-04', '3953904R', 4827487, 12349, '2015-02-20'),
						('2004-07-21', '0923484L', 2849272, 12292, '2013-11-11'),
						('2000-05-21', '0923484L', 8837436, 12292, '2014-11-11'),
						('2010-09-13', '3953904R', 8837436, 12292, '2020-01-02'),
						('2002-09-30', '6389423F', 8238428, 12346, '2017-11-11'),
						('2014-01-20', '6389423F', 2849272, 12292, '2016-01-01'),
						('2001-04-04', '1178978J', 8238428, 12346, '2018-12-01'),
						('2003-02-21', '9082394J', 8238428, 12346, '2021-06-01');



source consultes.sql;
