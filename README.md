# Análise de Vendas com PostgreSQL

Projeto de banco de dados relacional desenvolvido em PostgreSQL para praticar a criação de tabelas, inserção de dados e consultas SQL aplicadas a um cenário de vendas.

A base relaciona informações de clientes, vendedores, produtos, vendas e itens vendidos.

## Objetivo do projeto

Praticar conceitos fundamentais de bancos de dados relacionais, como:

- Criação de schemas e tabelas
- Inserção de registros
- Definição de chaves primárias e estrangeiras
- Relacionamento entre tabelas
- Consultas utilizando `SELECT`
- Junção de tabelas com `INNER JOIN`
- Aplicação de filtros com `WHERE`
- Ordenação de resultados com `ORDER BY`

## Funcionalidades

O projeto permite:

- Criar a estrutura de um banco de dados de vendas
- Cadastrar clientes
- Cadastrar produtos
- Cadastrar vendedores
- Registrar vendas
- Relacionar produtos a cada venda
- Consultar as compras realizadas por um cliente específico
- Exibir o nome do cliente e dos produtos comprados
- Consultar quantidade, valor total e data das compras
- Ordenar os resultados pela data da venda

## Estrutura do banco de dados

O banco contém as seguintes tabelas:

- `clientes`
- `vendedores`
- `produtos`
- `vendas`
- `itensvenda`

Os principais relacionamentos são:

```text
clientes
   │
   │ idcliente
   ▼
vendas
   │
   │ idvenda
   ▼
itensvenda
   │
   │ idproduto
   ▼
produtos

vendedores
   │
   │ idvendedor
   ▼
vendas


```

## Tecnologias utilizadas
- PostgreSQL
- SQL
- Ubuntu
- AWS EC2

## Como executar
1. Criar o banco de dados

Acesse o PostgreSQL e crie um banco para o projeto:

CREATE DATABASE analise_vendas;
2. Executar os arquivos da base

Os arquivos da pasta database devem ser executados seguindo a ordem numérica:

01_create_tables.sql
02_insert_clientes.sql
03_insert_produtos.sql
04_insert_vendedores.sql
05_insert_vendas.sql
06_insert_itens_venda.sql

A ordem é importante porque algumas tabelas dependem de registros cadastrados anteriormente.

3. Executar a consulta

Depois que a estrutura e os dados forem carregados, execute:

consultas/01_compras_cliente.sql
Exemplo de uso

A consulta permite pesquisar as compras realizadas por um cliente específico.

O código do cliente é definido nesta condição:

WHERE clientes.idcliente = 5

Para pesquisar outro cliente, basta substituir o número 5 pelo código desejado.

A consulta retorna:

Nome do cliente
Produto comprado
Quantidade
Valor total do item
Data da venda

Exemplo de resultado:

```
cliente       | produto     | quantidade | valortotal | data
--------------+-------------+------------+------------+------------
Cliente Exemplo | Produto A | 2          | 150.00     | 2026-01-10
Cliente Exemplo | Produto B | 1          | 80.00      | 2026-02-15
```

## Conceitos aplicados na consulta

Para chegar ao resultado, foi necessário percorrer os relacionamentos:

cliente → venda → item da venda → produto

Cada INNER JOIN conecta duas tabelas por uma coluna relacionada:

tabela1.coluna = tabela2.coluna

O SELECT define os campos exibidos, o WHERE seleciona o cliente analisado e o ORDER BY organiza as compras pela data.


## Aprendizados

Durante o desenvolvimento, foram praticados:

Leitura de um modelo relacional
Identificação de chaves primárias e estrangeiras
Construção de consultas com múltiplos JOINs
Seleção de campos em diferentes tabelas
Aplicação de filtros numéricos
Organização e documentação de arquivos SQL

## Observação

A estrutura inicial da base de dados foi disponibilizada como material de apoio durante um curso de PostgreSQL.

A organização do repositório, a documentação e as consultas apresentadas foram desenvolvidas durante o processo de aprendizagem.

