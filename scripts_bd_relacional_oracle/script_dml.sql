INSERT INTO pessoas (cpf, nome, email, data_nascimento, telefone)
		VALUES      ('00000000010', 'Ricardo Süffert', 'ricardo.suffert@edu.pucrs.br', TO_DATE('09/04/2003', 'dd/mm/yyyy'), '51999999333');
INSERT INTO pessoas (cpf, nome, email, data_nascimento, telefone)
		VALUES      ('00000000011', 'Daniel Callegari', 'daniel.callegari@pucrs.br', TO_DATE('04/11/1985', 'dd/mm/yyyy'), '51999999999');
INSERT INTO pessoas (cpf, nome, email, data_nascimento, telefone)
		VALUES      ('00000000012', 'João da Silva', 'joao.silva@edu.pucrs.br', TO_DATE('24/07/2001', 'dd/mm/yyyy'), '51999999334');
INSERT INTO pessoas (cpf, nome, email, data_nascimento, telefone)
		VALUES      ('00000000013', 'Pedro Batista', 'pedro.batista@edu.pucrs.br', TO_DATE('30/01/1999', 'dd/mm/yyyy'), '51999999335');
INSERT INTO pessoas (cpf, nome, email, data_nascimento, telefone)
		VALUES      ('00000000014', 'Fernando Oliveira', 'fernando.oliveira@edu.pucrs.br', TO_DATE('08/08/2004', 'dd/mm/yyyy'), '51999999344');
		
INSERT INTO professores (data_de_contratacao, fk_pessoas_cpf)
		VALUES          (TO_DATE('22/04/2010', 'dd/mm/yyyy'), '00000000011');
		
INSERT INTO alunos (nro_de_matricula, nro_creditos_concluidos, fk_pessoas_cpf)
		VALUES     ('22103137', 30, '00000000010');
INSERT INTO alunos (nro_de_matricula, nro_creditos_concluidos, fk_pessoas_cpf)
		VALUES     ('22103148', 22, '00000000012');
INSERT INTO alunos (nro_de_matricula, nro_creditos_concluidos, fk_pessoas_cpf)
		VALUES     ('22103159', 38, '00000000013');
INSERT INTO alunos (nro_de_matricula, nro_creditos_concluidos, fk_pessoas_cpf)
		VALUES     ('22103161', 47, '00000000014');
		
INSERT INTO autores (nome)
		VALUES      ('Machado de Assis');
INSERT INTO autores (nome)
		VALUES      ('Owen King');
INSERT INTO autores (nome)
		VALUES      ('Agatha Christie');
INSERT INTO autores (nome)
		VALUES      ('Stephen King');
INSERT INTO autores (nome)
		VALUES      ('Editora Globo');
INSERT INTO autores (nome)
		VALUES      ('Editora Abril');
		
INSERT INTO tipos_de_obra (descricao)
		VALUES ('Livro');
INSERT INTO tipos_de_obra (descricao)
		VALUES ('Revista');
INSERT INTO tipos_de_obra (descricao)
		VALUES ('Artigo');
INSERT INTO tipos_de_obra (descricao)
		VALUES ('Material especial');
		
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('Memórias Póstumas de Brás Cubas', 368);
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('Belas Adormecidas', 728);
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('O Assassinato no Expresso do Oriente', 240);
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('Morte no Nilo', 237);
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('Época Negócios - Maio/2023', 43);
INSERT INTO obras (titulo, nro_de_paginas)
		VALUES    ('Super Interessante - Maio/2023', 71);
		
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(1, 1);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(2, 2);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(4, 2);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(3, 3);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(3, 4);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(5, 5);
INSERT INTO escreve (fk_autores_codigo, fk_obras_codigo)
		VALUES 		(6, 6);
		
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (1, 1);
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (1, 2);
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (1, 3);
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (1, 4);
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (2, 5);
INSERT INTO possui (fk_tipos_de_obra_codigo, fk_obras_codigo)
		VALUES     (2, 6);
		
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000010', 3, TO_DATE('22/04/2022', 'dd/mm/yyyy'), TO_DATE('22/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000010', 4, TO_DATE('23/04/2022', 'dd/mm/yyyy'), TO_DATE('23/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000011', 2, TO_DATE('20/04/2022', 'dd/mm/yyyy'), TO_DATE('20/04/2022', 'dd/mm/yyyy') + 14);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000012', 2, TO_DATE('20/04/2022', 'dd/mm/yyyy'), TO_DATE('20/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000012', 1, TO_DATE('20/04/2022', 'dd/mm/yyyy'), TO_DATE('20/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000012', 4, TO_DATE('20/04/2022', 'dd/mm/yyyy'), TO_DATE('20/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000013', 4, TO_DATE('25/04/2022', 'dd/mm/yyyy'), TO_DATE('25/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000013', 3, TO_DATE('25/04/2022', 'dd/mm/yyyy'), TO_DATE('25/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000011', 4, TO_DATE('01/05/2022', 'dd/mm/yyyy'), TO_DATE('01/05/2022', 'dd/mm/yyyy') + 14);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000014', 1, TO_DATE('21/04/2022', 'dd/mm/yyyy'), TO_DATE('21/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000014', 5, TO_DATE('26/04/2022', 'dd/mm/yyyy'), TO_DATE('26/04/2022', 'dd/mm/yyyy') + 7);
INSERT INTO emprestimos (fk_pessoas_cpf, fk_obras_codigo, data_do_emprestimo, data_da_devolucao)
		VALUES          ('00000000011', 6, TO_DATE('29/04/2022', 'dd/mm/yyyy'), TO_DATE('29/04/2022', 'dd/mm/yyyy') + 14);
	
COMMIT;