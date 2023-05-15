DROP TABLE obras             CASCADE CONSTRAINTS;
DROP TABLE tipos_de_obra     CASCADE CONSTRAINTS;
DROP TABLE pessoas           CASCADE CONSTRAINTS;
DROP TABLE professores       CASCADE CONSTRAINTS;
DROP TABLE alunos            CASCADE CONSTRAINTS;
DROP TABLE autores           CASCADE CONSTRAINTS;
DROP TABLE possui            CASCADE CONSTRAINTS;
DROP TABLE emprestimos       CASCADE CONSTRAINTS;
DROP TABLE escreve           CASCADE CONSTRAINTS;

CREATE TABLE obras (
    codigo              NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    titulo              VARCHAR2 (100)      NOT NULL,
    nro_de_paginas      NUMBER   (5)        NOT NULL,
	CONSTRAINT pk_obras PRIMARY KEY (codigo),
	CONSTRAINT check_obras_nro_de_paginas CHECK (nro_de_paginas > 0)
);

CREATE TABLE tipos_de_obra (
    codigo              NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    descricao           VARCHAR2 (100)      NOT NULL,
	CONSTRAINT pk_tipos_de_obra PRIMARY KEY (codigo)
);

CREATE TABLE pessoas (
    cpf                 CHAR     (11)       NOT NULL,
    nome                VARCHAR2 (100)      NOT NULL,
    email               VARCHAR2 (50)       NOT NULL,
	data_nascimento		DATE				NOT NULL,
    telefone            VARCHAR2 (11),
	CONSTRAINT pk_pessoas PRIMARY KEY (cpf),
	CONSTRAINT check_pessoas_cpf CHECK (length(cpf) = 11),
	CONSTRAINT check_pessoas_telefone CHECK (length(telefone) = 11),
	CONSTRAINT unique_pessoas_email UNIQUE (email),
	CONSTRAINT unique_pessoas_telefone UNIQUE (telefone)
);

CREATE TABLE professores (
    data_de_contratacao DATE                NOT NULL,
    fk_pessoas_cpf      CHAR (11)           NOT NULL,
	CONSTRAINT pk_professores PRIMARY KEY (fk_pessoas_cpf)
);

CREATE TABLE alunos (
    nro_de_matricula        CHAR   (8)      NOT NULL,
    nro_creditos_concluidos NUMBER (3)      NOT NULL,
    fk_pessoas_cpf          CHAR   (11)     NOT NULL,
	CONSTRAINT pk_alunos PRIMARY KEY (fk_pessoas_cpf),
	CONSTRAINT check_alunos_nro_de_matricula CHECK (length(nro_de_matricula) = 8),
	CONSTRAINT check_alunos_nro_creditos CHECK (nro_creditos_concluidos >= 0),
	CONSTRAINT unique_alunos_nro_de_matricula UNIQUE (nro_de_matricula)
);

CREATE TABLE autores (
    codigo                  NUMBER GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1),
    nome                    VARCHAR2 (50)   NOT NULL,
	CONSTRAINT pk_autores PRIMARY KEY (codigo)
);

CREATE TABLE possui (
    fk_tipos_de_obra_codigo NUMBER (2)      NOT NULL,
    fk_obras_codigo         NUMBER (3)      NOT NULL,
	CONSTRAINT pk_possui PRIMARY KEY (fk_obras_codigo) -- cada obra pode ter apenas um tipo
);

CREATE TABLE emprestimos (
    fk_pessoas_cpf          CHAR   (11)     NOT NULL,
    fk_obras_codigo         NUMBER (3)      NOT NULL,
    data_do_emprestimo      DATE            NOT NULL,
    data_da_devolucao       DATE            NOT NULL,
	CONSTRAINT pk_emprestimos PRIMARY KEY (fk_pessoas_cpf, fk_obras_codigo)
);

CREATE TABLE escreve (
	fk_autores_codigo       NUMBER(3)       NOT NULL,
	fk_obras_codigo         NUMBER(3)       NOT NULL,
	CONSTRAINT pk_escreve PRIMARY KEY (fk_autores_codigo, fk_obras_codigo)
);

ALTER TABLE professores 
				ADD CONSTRAINT fk_professores_pessoas 
				FOREIGN KEY (fk_pessoas_cpf) 
				REFERENCES pessoas (cpf);

ALTER TABLE alunos 
				ADD CONSTRAINT fk_alunos_pessoas 
				FOREIGN KEY (fk_pessoas_cpf) 
				REFERENCES pessoas (cpf);

ALTER TABLE possui 
				ADD CONSTRAINT fk_possui_tipos_de_obra 
				FOREIGN KEY (fk_tipos_de_obra_codigo) 
				REFERENCES tipos_de_obra (codigo);
ALTER TABLE possui 
				ADD CONSTRAINT fk_possui_obras 
				FOREIGN KEY (fk_obras_codigo) 
				REFERENCES obras (codigo);

ALTER TABLE emprestimos 
				ADD CONSTRAINT fk_emprestimos_pessoas 
				FOREIGN KEY (fk_pessoas_cpf) 
				REFERENCES pessoas (cpf);
ALTER TABLE emprestimos 
				ADD CONSTRAINT fk_emprestimos_obras 
				FOREIGN KEY (fk_obras_codigo) 
				REFERENCES obras (codigo);
				
ALTER TABLE escreve
				ADD CONSTRAINT fk_escreve_autores
				FOREIGN KEY (fk_autores_codigo)
				REFERENCES autores (codigo);
ALTER TABLE escreve
				ADD CONSTRAINT fk_escreve_obras
				FOREIGN KEY (fk_obras_codigo)
				REFERENCES obras (codigo);
				
COMMIT;