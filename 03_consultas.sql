SELECT
    nome_cafe,
    descricao,
    preco_unitario
FROM
    Cardapio
ORDER BY
    nome_cafe;

SELECT
    c.codigo_comanda,
    c.data_comanda,
    c.numero_mesa,
    c.nome_cliente,
    card.nome_cafe,
    card.descricao,
    ic.quantidade,
    card.preco_unitario,
    (ic.quantidade * card.preco_unitario) AS preco_total_do_cafe
FROM
    Comandas c
JOIN
    ItensComanda ic ON c.codigo_comanda = ic.codigo_comanda
JOIN
    Cardapio card ON ic.codigo_cardapio = card.codigo_cardapio
ORDER BY
    c.data_comanda,
    c.codigo_comanda,
    card.nome_cafe;

SELECT
    c.codigo_comanda,
    c.data_comanda,
    c.numero_mesa,
    c.nome_cliente,
    SUM(ic.quantidade * card.preco_unitario) AS valor_total_da_comanda
FROM
    Comandas c
JOIN
    ItensComanda ic ON c.codigo_comanda = ic.codigo_comanda
JOIN
    Cardapio card ON ic.codigo_cardapio = card.codigo_cardapio
GROUP BY
    c.codigo_comanda, c.data_comanda, c.numero_mesa, c.nome_cliente
ORDER BY
    c.data_comanda;

SELECT
    c.codigo_comanda,
    c.data_comanda,
    c.numero_mesa,
    c.nome_cliente,
    SUM(ic.quantidade * card.preco_unitario) AS valor_total_da_comanda
FROM
    Comandas c
JOIN
    ItensComanda ic ON c.codigo_comanda = ic.codigo_comanda
JOIN
    Cardapio card ON ic.codigo_cardapio = card.codigo_cardapio
GROUP BY
    c.codigo_comanda, c.data_comanda, c.numero_mesa, c.nome_cliente
HAVING
    COUNT(ic.codigo_cardapio) > 1
ORDER BY
    c.data_comanda;

SELECT
    c.data_comanda,
    SUM(ic.quantidade * card.preco_unitario) AS faturamento_total_por_dia
FROM
    Comandas c
JOIN
    ItensComanda ic ON c.codigo_comanda = ic.codigo_comanda
JOIN
    Cardapio card ON ic.codigo_cardapio = card.codigo_cardapio
GROUP BY
    c.data_comanda
ORDER BY
    c.data_comanda;