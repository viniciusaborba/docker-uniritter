CREATE TABLE IF NOT EXISTS usuarios (
    id_usuario  SERIAL        PRIMARY KEY,
    nome        VARCHAR(150)  NOT NULL,
    email       VARCHAR(255)  NOT NULL UNIQUE,
    senha       VARCHAR(255)  NOT NULL,
    username    VARCHAR(50)   NOT NULL UNIQUE,
    criado_em   TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente     VARCHAR(20)   PRIMARY KEY,
    nome_fantasia  VARCHAR(150)  NOT NULL,
    razao_social   VARCHAR(200)  NOT NULL,
    documento      VARCHAR(14)   NOT NULL UNIQUE,
    tipo_pessoa    VARCHAR(8)    NOT NULL,
    email          VARCHAR(255),
    CONSTRAINT ck_clientes_tipo
        CHECK (tipo_pessoa IN ('JURIDICA', 'FISICA')),
    CONSTRAINT ck_clientes_documento
        CHECK (
            (tipo_pessoa = 'FISICA'   AND documento ~ '^[0-9]{11}$') OR
            (tipo_pessoa = 'JURIDICA' AND documento ~ '^[0-9]{14}$')
        )
);

CREATE TABLE IF NOT EXISTS produtos (
    id_produto     SERIAL         PRIMARY KEY,
    descricao      VARCHAR(255)   NOT NULL,
    departamento   VARCHAR(100)   NOT NULL,
    codigo_barras  CHAR(13)       NOT NULL UNIQUE,
    preco          NUMERIC(12, 2) NOT NULL,
    CONSTRAINT ck_produtos_codigo_barras CHECK (codigo_barras ~ '^[0-9]{13}$'),
    CONSTRAINT ck_produtos_preco         CHECK (preco >= 0)
);
