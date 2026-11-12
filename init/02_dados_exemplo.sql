INSERT INTO usuarios (nome, email, senha, username) VALUES
    ('Ana Souza',   'ana.souza@exemplo.com',   'senha123', 'anasouza'),
    ('Bruno Lima',  'bruno.lima@exemplo.com',  'senha456', 'brunolima');

INSERT INTO clientes (id_cliente, nome_fantasia, razao_social, documento, tipo_pessoa, email) VALUES
    ('CLI0001', 'Mercado Bom Preço', 'Bom Preço Comércio de Alimentos LTDA', '12345678000199', 'JURIDICA', 'contato@bompreco.com'),
    ('CLI0002', 'Carlos Pereira',    'Carlos Pereira',                       '12345678901',    'FISICA',   'carlos@exemplo.com');

INSERT INTO produtos (descricao, departamento, codigo_barras, preco) VALUES
    ('Arroz Branco 5kg',     'Mercearia', '7891234567890', 27.90),
    ('Detergente Neutro 500ml', 'Limpeza', '7899876543210',  2.49);
