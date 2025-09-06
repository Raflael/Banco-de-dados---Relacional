-- Inserção de lojas
INSERT INTO loja (nome, cidade) VALUES
('Games Center', 'São Paulo'),
('Mega Games', 'Rio de Janeiro'),
('Game Mania', 'Belo Horizonte');

-- Inserção de clientes
INSERT INTO cliente (nome, email, cidade) VALUES
('João Silva', 'joao.silva@email.com', 'São Paulo'),
('Maria Santos', 'maria.santos@email.com', 'Rio de Janeiro'),
('Pedro Costa', 'pedro.costa@email.com', 'Belo Horizonte');

-- Inserção de jogos
INSERT INTO jogo (titulo, ano_lancamento, genero) VALUES
('The Last of Us Part II', 2020, 'Ação e Aventura'),
('Cyberpunk 2077', 2020, 'RPG'),
('PES 24', 2022, 'Esporte');

-- Inserindo duas compras
INSERT INTO compra (data_compra, id_cliente, id_loja) VALUES
('2024-01-15', 1, 1),  -- Compra do João Silva na Games Center
('2024-01-16', 2, 2);  -- Compra da Maria Santos na Mega Games

-- Registrando jogos na primeira compra (id_compra = 1)
INSERT INTO compra_jogo (id_compra, id_jogo, quantidade) VALUES
(1, 1, 1),  -- The Last of Us Part II
(1, 2, 2);  -- Cyberpunk 2077 (2 unidades)

-- Registrando jogos na segunda compra (id_compra = 2)
INSERT INTO compra_jogo (id_compra, id_jogo, quantidade) VALUES
(2, 2, 1),  -- Cyberpunk 2077
(2, 3, 1);  -- FIFA 23
