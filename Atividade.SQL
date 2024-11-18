1 - Façam a inserção de pelo menos dois registros em cada tabela do banco;
(Feito no BD Postgres na minha maquina Local) 

2 - Removam os estudantes de graduação que ingressaram no ano de 2021;  

delete from alunograduacao
where anoingresso = 2021;

3 - Façam uma consulta que verifique quantos alunos de graduação existem no
banco de dados; 

select count (a.codigo)
as totalalunosgrad
from aluno a
join alunograduacao g on (a.codigo = g.codigo);

4 - Selecionem o nome de todos os alunos que fazem pós-graduação; 

select a.nome
from aluno a
join alunoposgraduacao p
on (a.codigo = p.codigo);

5 - Selecionem o nome dos alunos que são orientados pelo professor Thiago Ahran Detoni (numcadastro 2 no meu BD);

select a.nome
from aluno a 
join professor p 
on (a.codigo = 2);

6 - Dada a disciplina Programação I, verifiquem quais alunos estão cursando essa
disciplina (retornem o nome do aluno) (coddisciplina 1 no meu BD);

 select a.nome
from aluno a
join disciplina d
on (a.codigo = 1);

7 - Selecione o nome das disciplinas que possuem preRequisito; 

select d.nome
from disciplina d
join prerequisito p
on (d.codigo = p.codigodisciplina);
