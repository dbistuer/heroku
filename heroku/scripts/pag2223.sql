
create table productes (
	part varchar(20),
	tipus varchar(20),
	especificacio varchar(20),
	psuggerit float(6),
	clau serial,
	primary key(clau)
);
insert into productes (part,tipus,especificacio,psuggerit) values ('Processador','2GHz','32 bits',null);
insert into productes (part,tipus,especificacio,psuggerit) values ('Processador','2.4 GHz','32 bits',35);
insert into productes (part,tipus,especificacio,psuggerit) values ('Processador','1.7 GHz','64 bits',205);
insert into productes (part,tipus,especificacio,psuggerit) values ('Processador','3 GHz','64 bits',560);
insert into productes (part,tipus,especificacio,psuggerit) values ('RAM','128MB','333 MHz',10);
insert into productes (part,tipus,especificacio,psuggerit) values ('RAM','256MB','400 MHz',35);
insert into productes (part,tipus,especificacio,psuggerit) values ('Disc Dur','80 GB','7200 rpm',60);
insert into productes (part,tipus,especificacio,psuggerit) values ('Disc Dur','120 GB','7200 rpm',78);
insert into productes (part,tipus,especificacio,psuggerit) values ('Disc Dur','200 GB','7200 rpm',110);
insert into productes (part,tipus,especificacio,psuggerit) values ('Disc Dur','40 GB','4200 rpm',null);
insert into productes (part,tipus,especificacio,psuggerit) values ('Monitor','1024x876','75 Hz',80);
insert into productes (part,tipus,especificacio,psuggerit) values ('Monitor','1024x876','60 Hz',67);

create table proveidors (
	empresa varchar(20) not null,
	credit bool,
	efectiu bool,
	primary key(empresa)
);

insert into proveidors (empresa,efectiu) values ('Tecnok', true );
insert into proveidors (empresa,credit) values ('Patito', true );
insert into proveidors (empresa,credit,efectiu) values ('Nacional', true, true);

create table guany(
	venda varchar(16),
	factor decimal (4,2),
	primary key (venda)
);

insert into guany values('al engros',1.05);
insert into guany values('al detall',1.12);

create table preus (
	empresa varchar(20) not null,
	clau int not null,
	preu float(6),
	primary key (empresa, clau),
	foreign key (empresa) references proveidors,
	foreign key (clau)references productes
);

insert into preus values ('Nacional',001,30.82);
insert into preus values ('Nacional',002,32.73);
insert into preus values ('Nacional',003,202.25);
insert into preus values ('Nacional',005,9.76);
insert into preus values ('Nacional',006,31.52);
insert into preus values ('Nacional',007,58.41);
insert into preus values ('Nacional',010,64.38);
insert into preus values ('Patito',001,30.40);
insert into preus values ('Patito',002,33.63);
insert into preus values ('Patito',003,195.59);
insert into preus values ('Patito',005,9.78);
insert into preus values ('Patito',006,32.44);
insert into preus values ('Patito',007,59.99);
insert into preus values ('Patito',010,62.02);
insert into preus values ('Tecnok',003,198.34);
insert into preus values ('Tecnok',005,9.27);
insert into preus values ('Tecnok',006,34.85);
insert into preus values ('Tecnok',007,59.95);
insert into preus values ('Tecnok',010,61.22);
insert into preus values ('Tecnok',012,62.29);
