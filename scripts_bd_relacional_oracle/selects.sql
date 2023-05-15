-- Recuperando os titulos dos "livros" emprestados com mais de 100 paginas
SELECT o.titulo AS "Título",
	   o.nro_de_paginas AS "Número de Páginas",
	   tipos.descricao AS "Tipo"
	   FROM obras o
	   JOIN possui p ON (o.codigo = p.fk_obras_codigo)
	   JOIN tipos_de_obra tipos ON (p.fk_tipos_de_obra_codigo = tipos.codigo)
	   WHERE nro_de_paginas > 100 AND tipos.descricao = 'Livro'
	   ORDER BY o.titulo;

-- Recuperando o tempo medio de emprestimo das obras do tipo "revista"
SELECT SUM (e.data_da_devolucao - e.data_do_emprestimo) / COUNT(*) AS "Média de dias" FROM emprestimos e
																					  JOIN obras o ON (e.fk_obras_codigo = o.codigo)
																					  JOIN possui p ON (o.codigo = p.fk_obras_codigo)
																					  JOIN tipos_de_obra tipos ON (p.fk_tipos_de_obra_codigo = tipos.codigo)
																					  WHERE tipos.descricao = 'Revista';

-- Recuperando o titulo das obras escritas por Agatha Christie
SELECT o.titulo AS "Título",
	   a.nome AS "Autor(a)"
	   FROM obras o
	   JOIN escreve e ON (o.codigo = e.fk_obras_codigo)
	   JOIN autores a ON (e.fk_autores_codigo = a.codigo)
	   WHERE a.nome = 'Agatha Christie'
	   ORDER BY o.titulo;