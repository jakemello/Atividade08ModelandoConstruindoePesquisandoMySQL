
-- Inserindo cafés no cardápio
INSERT INTO Cardapio (nome_cafe, descricao, preco_unitario) VALUES
('Kopi Luwak', 'Processado por civetas na Indonésia, resulta em um café raro, suave e complexo.', 150.00),
('Panamá Geisha', 'Famoso por suas notas florais e frutadas, similar a um chá de jasmim. Da fazenda Hacienda La Esmeralda.', 95.00),
('Black Ivory Coffee', 'Refinado por elefantes na Tailândia, um dos cafés mais raros e caros do mundo.', 250.00),
('Jamaican Blue Mountain', 'Sabor suave e equilibrado, com ausência de amargor. Cultivado nas Montanhas Azuis da Jamaica.', 45.00),
('St. Helena Coffee', 'Cultivado na ilha remota de Santa Helena, com notas de caramelo e cítricos. Era o preferido de Napoleão.', 60.00);

INSERT INTO Comandas (data_comanda, numero_mesa, nome_cliente) VALUES
('2025-10-15', 5, 'Alok Achkar Peres'),
('2025-10-15', 2, 'Avicii'),
('2025-10-16', 8, 'Dimitri Vegas'),
('2025-10-16', 5, 'David Guetta'),
('2025-10-17', 1, 'Martin Garrix'),
('2025-10-17', 3, 'Tiësto'),
('2025-10-17', 7, 'Armin van Buuren'),
('2025-10-18', 4, 'Calvin Harris'),
('2025-10-18', 6, 'Hardwell'),
('2025-10-18', 9, 'Marshmello');

INSERT INTO ItensComanda (codigo_comanda, codigo_cardapio, quantidade) VALUES
(1, 4, 1),
(2, 5, 1),
(3, 2, 1),
(3, 4, 1),
(4, 1, 1),
(5, 2, 2),
(6, 3, 1),
(7, 1, 1),
(7, 5, 1),
(8, 3, 3),
(9, 4, 2),
(10, 2, 2),
(10, 4, 1);