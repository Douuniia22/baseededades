-- exemple de fitxer sql per a crear una mini base de dades per a la practica

-- script principal fase 3 practica d'sql

-- exemple actualitzat per a obligar a treballar amb taules INNODB

 
drop database vers;

create database vers;

use vers;

create table paisos (
  nom char(20),
  pot_desenv int(10),
  tractat_signat char(10),
  primary key (nom),
  constraint ck_tractat_signat check( tractat_signat = 'S' OR tractat_signat = 'N' OR tractat_signat = 'desconegut')
) engine=innodb;


create table laboratoris (
  codi int(15),
  nom char(20),
  pais char(20) NOT NULL UNIQUE,
  primary key (codi),
  constraint fk_laboratoris foreign key (pais) references paisos(nom)
) engine=innodb;


create table empleats (
  num_pass char(20),
  nom char(20),
  primary key (num_pass)
) engine=innodb;

	

create table ordinaris (
  num_pass char(20),
  primary key (num_pass),
  constraint fk_ordinaris foreign key (num_pass) references empleats(num_pass)
) engine=innodb;


create table zones_biocontencio (
  codi int(20),
  codiLab int(20),
  nivell char(10) ,
  responsable char(10),
  primary key (codi, codiLab),
  constraint fk_zones_biocontencio foreign key (codiLab) references laboratoris(codi),
  constraint ck_zones_biocontencio check(nivell = 'A' OR nivell=  'M' OR nivell= 'B')
) engine=innodb;


create table qualificats (
  num_pass char(20),
  titulacio char(30),
  zona_assignada int(20),
  lab int(20),
  primary key (num_pass),
  constraint fk_qualificats foreign key (num_pass) references empleats(num_pass),
  constraint fk_qualificats_zones_biocontencio foreign key (zona_assignada, lab) references zones_biocontencio(codi, codiLab)
) engine=innodb;


create table armes_biologiques (
  nom char(20),
  fecha date, 
  potencial int(10),
  zona int(20),
  lab int(20),
  primary key (nom),
  constraint fk_armes_biologiques foreign key (zona) references zones_biocontencio(codi),
  constraint fk_armes_biologiques2 foreign key (lab) references zones_biocontencio(codiLab),
  constraint ck_armes_biologiques check(potencial >= 1 AND potencial <= 10)
) engine=innodb;
	

create table assignacions (
  fecha1 date,	
  empl_ord char(20),
  zona int(20),
  Lab int(20),
  data_fi date,
  primary key (fecha1, empl_ord),
  constraint fk_assignacions foreign key (empl_ord) references ordinaris(num_pass),
  constraint fk_assignacions2 foreign key (zona,lab) references zones_biocontencio(codi, codiLab)
) engine=innodb;

alter table zones_biocontencio ADD CONSTRAINT fk_zones_biocontencio_toqualificats foreign key (responsable) references qualificats(num_pass);

source vers1.sql;