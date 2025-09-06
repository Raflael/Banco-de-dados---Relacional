-- Verificar lojas
SELECT * FROM loja;

-- Verificar clientes
SELECT * FROM cliente;

-- Verificar jogos
SELECT * FROM jogo;

-- Verificar compras
SELECT * FROM compra;

-- Verificar jogos nas compras
SELECT * FROM compra_jogo;

-- Consulta detalhada das compras com informações relacionadas
SELECT 
    c.id_compra,
    c.data_compra,
    cli.nome as cliente,
    l.nome as loja,
    j.titulo as jogo,
    cj.quantidade
FROM compra c
JOIN cliente cli ON c.id_cliente = cli.id_cliente
JOIN loja l ON c.id_loja = l.id_loja
JOIN compra_jogo cj ON c.id_compra = cj.id_compra
JOIN jogo j ON cj.id_jogo = j.id_jogo
ORDER BY c.id_compra;

-- Listar jogos lançados após 2020
SELECT titulo, ano_lancamento
FROM jogo
WHERE ano_lancamento > 2020
ORDER BY ano_lancamento DESC;

-- Calcular o total de jogos comprados na rede
SELECT SUM(quantidade) as total_jogos_comprados
FROM compra_jogo;
