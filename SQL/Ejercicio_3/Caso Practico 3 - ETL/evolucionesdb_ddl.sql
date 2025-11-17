/*Borrado de tablas*/

drop table if exists MO;
drop table if exists MT;
drop table if exists nivel_aprendizaje;
drop table if exists pokemon_tipo;
drop table if exists piedra;
drop table if exists tipo_piedra;
drop table if exists nivel_evolucion;
drop table if exists pokemon_movimiento_forma;
drop table if exists pokemon_forma_evolucion;
drop table if exists forma_evolucion;
drop table if exists tipo_evolucion;
drop table if exists forma_aprendizaje;
drop table if exists tipo_forma_aprendizaje;
drop table if exists movimiento_efecto_secundario;
drop table if exists efecto_secundario;
drop table if exists movimiento;
drop table if exists tipo;
drop table if exists tipo_ataque;
drop table if exists tipo_forma_aprendizaje;
drop table if exists estadisticas_base;
drop table if exists evoluciona_de;
drop table if exists pokemon;

/*Tablas*/

 Create table if not exists tipo_evolucion  (
	id_tipo_evolucion int primary key,
    tipo_evolucion varchar(15) not null
);

 Create table if not exists forma_evolucion  (
	id_forma_evolucion int primary key,
    tipo_evolucion int not null,
	foreign key (tipo_evolucion) references tipo_evolucion(id_tipo_evolucion)
);

 Create table if not exists evoluciona_de  (
	pokemon_evolucionado int,
    pokemon_origen int,
	primary key(pokemon_evolucionado, pokemon_origen)
);

Create table if not exists tipo_piedra  (
	id_tipo_piedra int primary key,
    nombre_piedra varchar(20) not null
);

Create table if not exists piedra  (
	id_forma_evolucion int primary key,
    id_tipo_piedra int,
    foreign key (id_tipo_piedra) references tipo_piedra(id_tipo_piedra),
    foreign key (id_forma_evolucion) references forma_evolucion(id_forma_evolucion)
);

Create table if not exists nivel_evolucion  (
	id_forma_evolucion int primary key,
    nivel int not null,
    foreign key (id_forma_evolucion) references forma_evolucion(id_forma_evolucion)
);

Create table if not exists pokemon_forma_evolucion  (
	numero_pokedex int,
    id_forma_evolucion int,
    primary key(numero_pokedex,id_forma_evolucion),
    foreign key (id_forma_evolucion) references forma_evolucion(id_forma_evolucion)
);

/* insercion de datos */

/* Evoluciona de */
insert into evoluciona_de values(2,1);
insert into evoluciona_de values(3,2);
insert into evoluciona_de values(5,4);
insert into evoluciona_de values(5,6);
insert into evoluciona_de values(6,5);
insert into evoluciona_de values(8,7);
insert into evoluciona_de values(9,8);
insert into evoluciona_de values(11,10);
insert into evoluciona_de values(12,11);
insert into evoluciona_de values(14,13);
insert into evoluciona_de values(15,14);
insert into evoluciona_de values(17,16);
insert into evoluciona_de values(18,17);
insert into evoluciona_de values(20,19);
insert into evoluciona_de values(22,21);
insert into evoluciona_de values(24,23);
insert into evoluciona_de values(26,25);
insert into evoluciona_de values(28,27);
insert into evoluciona_de values(30,29);
insert into evoluciona_de values(31,30);
insert into evoluciona_de values(33,32);
insert into evoluciona_de values(34,33);
insert into evoluciona_de values(36,35);
insert into evoluciona_de values(38,37);
insert into evoluciona_de values(40,39);
insert into evoluciona_de values(42,41);
insert into evoluciona_de values(44,43);
insert into evoluciona_de values(45,44);
insert into evoluciona_de values(47,46);
insert into evoluciona_de values(49,48);
insert into evoluciona_de values(51,50);
insert into evoluciona_de values(53,52);
insert into evoluciona_de values(55,54);
insert into evoluciona_de values(57,56);
insert into evoluciona_de values(59,58);
insert into evoluciona_de values(61,60);
insert into evoluciona_de values(62,61);
insert into evoluciona_de values(64,63);
insert into evoluciona_de values(65,64);
insert into evoluciona_de values(67,66);
insert into evoluciona_de values(68,67);
insert into evoluciona_de values(70,69);
insert into evoluciona_de values(71,70);		
insert into evoluciona_de values(73,72);
insert into evoluciona_de values(75,74);
insert into evoluciona_de values(76,75);
insert into evoluciona_de values(78,77);
insert into evoluciona_de values(80,79);
insert into evoluciona_de values(82,81);
insert into evoluciona_de values(85,84);
insert into evoluciona_de values(87,86);
insert into evoluciona_de values(89,88);
insert into evoluciona_de values(91,90);
insert into evoluciona_de values(93,92);
insert into evoluciona_de values(94,93);
insert into evoluciona_de values(97,96);
insert into evoluciona_de values(99,98);
insert into evoluciona_de values(101,100);
insert into evoluciona_de values(103,102);
insert into evoluciona_de values(105,104);
insert into evoluciona_de values(110,109);
insert into evoluciona_de values(112,111);
insert into evoluciona_de values(117,116);
insert into evoluciona_de values(119,118);
insert into evoluciona_de values(121,120);
insert into evoluciona_de values(130,129);
insert into evoluciona_de values(134,133);
insert into evoluciona_de values(135,133);
insert into evoluciona_de values(136,133);
insert into evoluciona_de values(139,138);
insert into evoluciona_de values(141,140);
insert into evoluciona_de values(148,147);
insert into evoluciona_de values(149,148);

-- Piedras

insert into tipo_piedra values (1,'Piedra trueno');
insert into tipo_piedra values (2,'Piedra fuego');
insert into tipo_piedra values (3,'Piedra agua');
insert into tipo_piedra values (4,'Piedra lunar');
insert into tipo_piedra values (5,'Piedra hoja');


-- Tipo evolucion

insert into tipo_evolucion values (1,'Nivel');
insert into tipo_evolucion values (2,'Piedra');
insert into tipo_evolucion values (3,'Intercambio');

-- Formas de evolucion

insert into forma_evolucion values (1, 3);
insert into forma_evolucion values (2, 2);
insert into forma_evolucion values (3, 2);
insert into forma_evolucion values (4, 2);
insert into forma_evolucion values (5, 1);
insert into forma_evolucion values (6, 1);
insert into forma_evolucion values (7, 1);
insert into forma_evolucion values (8, 1);
insert into forma_evolucion values (9, 1);
insert into forma_evolucion values (10, 1);
insert into forma_evolucion values (11, 1);
insert into forma_evolucion values (12, 1);
insert into forma_evolucion values (13, 2);
insert into forma_evolucion values (14, 1);
insert into forma_evolucion values (15, 2);
insert into forma_evolucion values (16, 1);
insert into forma_evolucion values (17, 1);
insert into forma_evolucion values (18, 1);
insert into forma_evolucion values (19, 1);
insert into forma_evolucion values (20, 1);
insert into forma_evolucion values (21, 1);
insert into forma_evolucion values (22, 1);
insert into forma_evolucion values (23, 1);
insert into forma_evolucion values (24, 1);
insert into forma_evolucion values (25, 1);
insert into forma_evolucion values (26, 1);
insert into forma_evolucion values (27, 1);
insert into forma_evolucion values (28, 1);
insert into forma_evolucion values (29, 1);

-- Formas de evolucion nivel

insert into nivel_evolucion values (5, 7);
insert into nivel_evolucion values (6, 10);
insert into nivel_evolucion values (7, 16);
insert into nivel_evolucion values (8, 18);
insert into nivel_evolucion values (9, 20);
insert into nivel_evolucion values (10, 22);
insert into nivel_evolucion values (11, 32);
insert into nivel_evolucion values (12, 36);
insert into nivel_evolucion values (14, 21);
insert into nivel_evolucion values (16, 24);
insert into nivel_evolucion values (17, 31);
insert into nivel_evolucion values (18, 26);
insert into nivel_evolucion values (19, 28);
insert into nivel_evolucion values (20, 33);
insert into nivel_evolucion values (21, 25);
insert into nivel_evolucion values (22, 30);
insert into nivel_evolucion values (23, 40);
insert into nivel_evolucion values (24, 37);
insert into nivel_evolucion values (25, 34);
insert into nivel_evolucion values (26, 38);
insert into nivel_evolucion values (27, 35);
insert into nivel_evolucion values (28, 42);
insert into nivel_evolucion values (29, 55);

-- Formas de evolucion piedras

insert into piedra values (2, 1);
insert into piedra values (3, 2);
insert into piedra values (4, 3);
insert into piedra values (13, 4);
insert into piedra values (15, 5);

-- Formas de evolucion pokemon

insert into pokemon_forma_evolucion values (1, 7);
insert into pokemon_forma_evolucion values (2, 11);
insert into pokemon_forma_evolucion values (4, 7);
insert into pokemon_forma_evolucion values (5, 12);
insert into pokemon_forma_evolucion values (7, 7);
insert into pokemon_forma_evolucion values (8, 12);
insert into pokemon_forma_evolucion values (10, 5);
insert into pokemon_forma_evolucion values (11, 6);
insert into pokemon_forma_evolucion values (13, 5);
insert into pokemon_forma_evolucion values (14, 6);
insert into pokemon_forma_evolucion values (16, 8);
insert into pokemon_forma_evolucion values (17, 12);
insert into pokemon_forma_evolucion values (19, 9);
insert into pokemon_forma_evolucion values (21, 9);
insert into pokemon_forma_evolucion values (23, 10);
insert into pokemon_forma_evolucion values (25, 2);
insert into pokemon_forma_evolucion values (27, 10);
insert into pokemon_forma_evolucion values (29, 8);
insert into pokemon_forma_evolucion values (30, 13);
insert into pokemon_forma_evolucion values (32, 8);
insert into pokemon_forma_evolucion values (33, 13);
insert into pokemon_forma_evolucion values (35, 13);
insert into pokemon_forma_evolucion values (37, 3);
insert into pokemon_forma_evolucion values (39, 13);
insert into pokemon_forma_evolucion values (41, 10);
insert into pokemon_forma_evolucion values (43, 14);
insert into pokemon_forma_evolucion values (44, 15);
insert into pokemon_forma_evolucion values (46, 16);
insert into pokemon_forma_evolucion values (48, 17);
insert into pokemon_forma_evolucion values (50, 18);
insert into pokemon_forma_evolucion values (52, 19);
insert into pokemon_forma_evolucion values (54, 20);
insert into pokemon_forma_evolucion values (56, 19);
insert into pokemon_forma_evolucion values (58, 3);
insert into pokemon_forma_evolucion values (60, 21);
insert into pokemon_forma_evolucion values (61, 4);
insert into pokemon_forma_evolucion values (63, 7);
insert into pokemon_forma_evolucion values (64, 1);
insert into pokemon_forma_evolucion values (66, 19);
insert into pokemon_forma_evolucion values (67, 1);
insert into pokemon_forma_evolucion values (69, 14);
insert into pokemon_forma_evolucion values (70, 15);
insert into pokemon_forma_evolucion values (72, 22);
insert into pokemon_forma_evolucion values (74, 21);
insert into pokemon_forma_evolucion values (75, 1);
insert into pokemon_forma_evolucion values (77, 23);
insert into pokemon_forma_evolucion values (79, 24);
insert into pokemon_forma_evolucion values (81, 22);
insert into pokemon_forma_evolucion values (84, 17);
insert into pokemon_forma_evolucion values (86, 25);
insert into pokemon_forma_evolucion values (88, 26);
insert into pokemon_forma_evolucion values (90, 4);
insert into pokemon_forma_evolucion values (92, 21);
insert into pokemon_forma_evolucion values (93, 1);
insert into pokemon_forma_evolucion values (96, 18);
insert into pokemon_forma_evolucion values (98, 19);
insert into pokemon_forma_evolucion values (100, 22);
insert into pokemon_forma_evolucion values (102, 15);
insert into pokemon_forma_evolucion values (104, 19);
insert into pokemon_forma_evolucion values (109, 27);
insert into pokemon_forma_evolucion values (111, 28);
insert into pokemon_forma_evolucion values (116, 11);
insert into pokemon_forma_evolucion values (118, 20);
insert into pokemon_forma_evolucion values (120, 4);
insert into pokemon_forma_evolucion values (129, 9);
insert into pokemon_forma_evolucion values (133, 2);
insert into pokemon_forma_evolucion values (133, 3);
insert into pokemon_forma_evolucion values (133, 4);
insert into pokemon_forma_evolucion values (138, 23);
insert into pokemon_forma_evolucion values (140, 23);
insert into pokemon_forma_evolucion values (147, 22);
insert into pokemon_forma_evolucion values (148, 29);