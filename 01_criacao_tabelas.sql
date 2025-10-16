
CREATE TABLE Cardapio (
    codigo_cardapio INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_cafe VARCHAR(100) NOT NULL UNIQUE,
    descricao VARCHAR(255),
    preco_unitario DECIMAL(10, 2) NOT NULL
)

CREATE TABLE Comandas (
    codigo_comanda INTEGER PRIMARY KEY AUTOINCREMENT,
    data_comanda DATE NOT NULL,
    numero_mesa INTEGER NOT NULL,
    nome_cliente VARCHAR(150)
)

CREATE TABLE ItensComanda (
    codigo_comanda INTEGER NOT NULL,
    codigo_cardapio INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (codigo_comanda, codigo_cardapio),
    FOREIGN KEY (codigo_comanda) REFERENCES Comandas(codigo_comanda),
    FOREIGN KEY (codigo_cardapio) REFERENCES Cardapio(codigo_cardapio)
)