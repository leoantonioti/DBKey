/* create table departamento(
	codigo serial not null,
	nome varchar(50) not null, 
	primary key (codigo)
); */ 


/* create table professor(
	numcadastro integer not null, 
	nome varchar(50) not null,
	coddepto integer not null, 
	primary key (numcadastro),
	foreign key (coddepto) references departamento (codigo)
	on update cascade
	on delete cascade
); */ 


/* create table disciplina(
	codigo serial not null, 
	nome varchar(50) not null, 
	ementa varchar(200) not null, 
	coddepto integer not null, 
	codprofessor integer not null, 
	numcreditos integer not null, 
	primary key (codigo),
	foreign key (coddepto) references departamento (codigo),
	foreign key (codprofessor) references professor (numcadastro)
	on delete cascade
	on update cascade
); */ 


/* create table prerequisito(
	codigodisciplina integer not null, 
	codigoprerequisito integer not null, 
	primary key (codigodisciplina, codigoprerequisito),
	foreign key (codigodisciplina) references disciplina (codigo),
	foreign key (codigoprerequisito) references disciplina (codigo)
	on delete cascade
	on update cascade
); */ 


/* create table aluno(
	codigo serial not null, 
	nome varchar(50) not null, 
	endereco varchar(200) not null, 
	primary key (codigo)
); */ 


/* create table telefonesaluno(
	codigo serial not null, 
	numero varchar(15) not null, 
	codigoaluno integer not null, 
	primary key (codigo),
	foreign key (codigoaluno) references aluno (codigo)
	on delete cascade
	on update cascade
); */ 


/* create table alunograduacao(
	codigo serial not null, 
	anoingresso integer not null, 
	primary key (codigo),
	foreign key (codigo) references aluno (codigo)
	on delete cascade
	on update cascade
); */ 


/* create table alunoposgraduacao(
	codigo serial not null, 
	formacao varchar(50) not null, 
	codprofessor integer not null, 
	primary key (codigo),
	foreign key (codigo) references aluno (codigo),
	foreign key (codprofessor) references professor (numcadastro)
	on delete cascade
	on update cascade
); */ 

/* create table cursa(
	codaluno integer not null, 
	coddisciplina integer not null, 
	media float not null,
	frequencia float not null, 
	primary key (codaluno, coddisciplina), 
	foreign key (codaluno) references aluno (codigo),
	foreign key (coddisciplina) references disciplina (codigo)
	on delete cascade
	on update cascade
); */ 


/* Para remover uma tabela, use drop table. 
Exemplo: 

drop table disciplina; 

*/ 


/* Para Alterar uma tabela, use alter table.
Exemplo: 

alter table aluno
add registroacademico integer not null; 

alter table aluno 
drop column registroacademico; 

*/ 

/* Para inserir dados, use insert into <nome_tabela> (campos)
values (valores);
Exemplo: 

insert into departamento (nome)
values ('computação'); */ 

/* Para visualizar uma tabela, use select * from <tabela> 
Exemplo:  

select * from departamento; */ 

-- testando 

/* insert into professor (numcadastro,nome,coddepto)
values (1,'Juliana Costa Silva',2);

insert into professor (numcadastro,nome,coddepto)
values (2,'Rodrigo Garro',3);

insert into professor (numcadastro,nome,coddepto)
values (3,'Thiago Ahran Detoni',1); 

insert into professor (numcadastro,nome,coddepto)
values (4,'Aline dos Santos',4);

insert into professor (numcadastro,nome,coddepto)
values (5,'Memphis Depay',5); */ 

-- select * from professor

-- select * from departamento

insert into disciplina (nome,ementa,coddepto,codprofessor, numcreditos)
values ('SQL', 'Sistema de Banco de Dados', 1, 3, 100);




