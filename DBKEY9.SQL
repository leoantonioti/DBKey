Escreva um codigo em SQL que retorne a média dos alunos que cursaram a disciplina 'Programação I' 

select avg (c.media) from cursa c
join disciplina d on (c.coddisciplina = d.codigo)
where d.nome = 'Algoritmos';

Para cada disciplina, escreva um codigo em SQL que retorno a média de todos os alunos em cada uma das disciplinas

select d.nome, avg(c.media) from cursa c 
join disciplina d on (c.coddisciplina = d.codigo)
group by d.nome, c.coddisciplina ; 

Dada a consulta anterior, renomeie a coluna do nome da disciplina para "Nome da Disciplina" e a que traz a média da disciplina para "Média

select d.nome as "Nome da Disciplina" , avg(c.media) as "Média" 
from cursa c 
join disciplina d on (c.coddisciplina = d.codigo)
group by d.nome, c.coddisciplina ; 
