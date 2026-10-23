CREATE TABLE GESTOR ( 
    id_gestor NUMBER PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    email VARCHAR2(150) NOT NULL,
    senha_hash VARCHAR2(255) NOT NULL
);

CREATE TABLE PESQUISA (
    id_pesquisa NUMBER PRIMARY KEY,
    titulo VARCHAR2(150) NOT NULL,
    data_inicial DATE NOT NULL,
    data_fim DATE NOT NULL,
    id_gestor NUMBER NOT NULL,
    FOREIGN KEY (id_gestor) REFERENCES GESTOR(id_gestor)
);

CREATE TABLE CATEGORIA (
    id_categoria NUMBER PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(255)
);

CREATE TABLE QUESTIONARIO (
    id_questionario NUMBER PRIMARY KEY,
    id_pesquisa NUMBER NOT NULL,
    id_categoria NUMBER NOT NULL,
    FOREIGN KEY (id_pesquisa) REFERENCES PESQUISA(id_pesquisa),
    FOREIGN KEY (id_categoria) REFERENCES CATEGORIA(id_categoria)
);

CREATE TABLE PERGUNTA (
    id_pergunta NUMBER PRIMARY KEY,
    enunciado VARCHAR2(500) NOT NULL,
    tipo_resposta VARCHAR2(50) NOT NULL,
    id_questionario NUMBER NOT NULL,
    FOREIGN KEY (id_questionario)
        REFERENCES QUESTIONARIO(id_questionario)
);

CREATE TABLE ALTERNATIVA (
    id_alternativa NUMBER PRIMARY KEY,
    texto VARCHAR2(255) NOT NULL,
    id_pergunta NUMBER NOT NULL,
    FOREIGN KEY (id_pergunta) REFERENCES PERGUNTA(id_pergunta)
);

CREATE TABLE CODIGO_ANONIMO (
    id_codigo NUMBER PRIMARY KEY,
    hash_codigo VARCHAR2(255) NOT NULL,
    utilizado NUMBER(1) DEFAULT 0 NOT NULL,
    id_questionario NUMBER NOT NULL,
    CHECK (utilizado IN (0, 1)),
    FOREIGN KEY (id_questionario)
        REFERENCES QUESTIONARIO(id_questionario)
);

CREATE TABLE SUBMISSAO (
    id_submissao NUMBER PRIMARY KEY,
    id_questionario NUMBER NOT NULL,
    FOREIGN KEY (id_questionario)
        REFERENCES QUESTIONARIO(id_questionario)
);

CREATE TABLE RESPOSTA (
    id_resposta NUMBER PRIMARY KEY,
    id_submissao NUMBER NOT NULL,
    id_pergunta NUMBER NOT NULL,
    id_alternativa NUMBER NOT NULL,
    FOREIGN KEY (id_submissao)
        REFERENCES SUBMISSAO(id_submissao),
    FOREIGN KEY (id_pergunta)
        REFERENCES PERGUNTA(id_pergunta),
    FOREIGN KEY (id_alternativa)
        REFERENCES ALTERNATIVA(id_alternativa)
);

ALTER TABLE CODIGO_ANONIMO
ADD CONSTRAINT uq_codigo_hash UNIQUE (hash_codigo);