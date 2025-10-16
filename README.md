# ☕ Atividade 08 - Modelando, Construindo e Pesquisando

## Projeto: Sistema de Controle de Vendas - Cafeteria BomGosto

### 📋 Descrição
A cafeteria **BomGosto** deseja controlar as suas vendas de café por meio de comandas. Cada comanda possui um código único, data, número da mesa e nome do cliente. Os itens vendidos são registrados como itens da comanda, que fazem referência a cafés presentes no cardápio. Cada café tem um nome único, descrição e preço unitário.

---

## 🗃️ Estrutura Esperada das Tabelas

**Tabela: `comandas`**
- `codigo_comanda` (PRIMARY KEY)
- `data`
- `mesa`
- `nome_cliente`

**Tabela: `itens_comanda`**
- `codigo_comanda` (FOREIGN KEY)
- `codigo_cafe` (FOREIGN KEY)
- `quantidade`

**Tabela: `cardapio`**
- `codigo_cafe` (PRIMARY KEY)
- `nome_cafe`
- `descricao`
- `preco_unitario`

---

### 💻 Usando o VS Code com SQLite (Extensão do AlexCVZZ)

Se você estiver usando o **Visual Studio Code** com a extensão **SQLite** do autor **AlexCVZZ**, siga este passo a passo para rodar suas consultas:

---

#### ✅ 1. Instale a Extensão SQLite

- Acesse o [Marketplace de Extensões do VS Code](https://marketplace.visualstudio.com/vscode).
- Procure por **`SQLite`** (autor: `alexcvzz`).
- Clique em **Instalar**.

---

#### ✅ 2. Conecte ao Banco de Dados

- Crie ou abra um arquivo com extensão `.db` no seu projeto.
- Vá até a aba lateral do VS Code (ícone do banco de dados da extensão SQLite).
- Clique em **"Open Database"** e selecione seu arquivo `.db`.

---

#### ✅ 3. Crie um Arquivo `.sql` com suas Consultas

- Crie um novo arquivo chamado, por exemplo, `consultas.sql`.
- Copie e cole nele as queries SQL que você criou.
- Exemplo de conteúdo:

```sql
-- Listagem do cardápio ordenada por nome
SELECT nome_cafe, descricao, preco_unitario
FROM cardapio
ORDER BY nome_cafe;

-- Total de faturamento por data
SELECT data, SUM(i.quantidade * ca.preco_unitario) AS faturamento_total
FROM comandas c
JOIN itens_comanda i ON c.codigo_comanda = i.codigo_comanda
JOIN cardapio ca ON i.codigo_cafe = ca.codigo_cafe
GROUP BY data
ORDER BY data;
```
✅ 4. Execute as Consultas

Selecione a consulta que deseja executar dentro do arquivo .sql.

Clique com o botão direito do mouse na seleção e escolha "Run Query".

O resultado da consulta aparecerá na parte inferior do VS Code, na aba de "Output" da extensão SQLite.
