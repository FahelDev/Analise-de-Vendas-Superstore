# Análise de Vendas Superstore

## Sobre o projeto

Este projeto tem como objetivo analisar os dados de vendas de uma loja fictícia, utilizando SQL Server para consultar e analisar os dados e Power BI para desenvolver um dashboard interativo.

O trabalho foi desenvolvido como um primeiro projeto de portfólio na área de análise de dados, com foco em limpeza, exploração e visualização de dados.

## Objetivos

- Analisar o faturamento e o lucro total.
- Comparar o desempenho das categorias de produtos.
- Identificar os produtos mais lucrativos.
- Identificar produtos que apresentam prejuízo.
- Investigar a relação entre descontos e lucratividade.
- Acompanhar a evolução do faturamento ao longo do tempo.

## Ferramentas utilizadas

- **SQL Server:** consultas SQL, validação e análise dos dados.
- **Power BI:** criação do dashboard e visualização dos indicadores.
- **Excel:** apoio na conferência e preparação dos dados.

## Base de dados

A base utilizada contém **10.194 registros** e informações sobre pedidos, clientes, produtos, datas, vendas, quantidades, descontos e lucros.

## Principais indicadores

| Indicador | Resultado |
|---|---:|
| Registros analisados | 10.194 |
| Faturamento total | 2.326.534,361 |
| Lucro total | 292.296,8146 |
| Quantidade total vendida | 38.654 |
| Desconto médio | 15,54% |

*Observação: a moeda e a unidade monetária dos valores devem ser confirmadas na documentação da base original.*

## Análises realizadas com SQL

O arquivo `analise_vendas.sql` reúne consultas para:

1. Conferir o total de registros.
2. Calcular os indicadores gerais de vendas.
3. Comparar faturamento, lucro e margem por categoria.
4. Identificar os 10 produtos mais lucrativos.
5. Identificar os 10 produtos com maior prejuízo.
6. Comparar os resultados por percentual de desconto.

## Dashboard no Power BI

O dashboard apresenta:

- Cartões com faturamento, lucro e quantidade vendida.
- Gráfico de faturamento por categoria.
- Gráfico de evolução do faturamento ao longo do tempo.
- Tabela com os 10 produtos mais lucrativos.

## Qualidade dos dados

Durante a preparação, foram realizadas verificações de datas, valores, quantidades, campos vazios e duplicidade de identificadores, além de correções de formatação nos dados importados.

## Estrutura do projeto

```text
analise-vendas-superstore/
├── analise_vendas.sql
├── Dashboard_Analise_de_Vendas.pbix
├── README.md
└── dados/
    └── instrucoes.md
```

A estrutura acima é uma sugestão. Os nomes e as pastas deverão corresponder aos arquivos efetivamente publicados.

## Aprendizados

Este projeto permitiu praticar a preparação e validação de dados, consultas SQL com agregações e agrupamentos, análise de indicadores de negócio e criação de visualizações no Power BI.

## Próximas melhorias

- Atualizar os dados automaticamente.
- Aprimorar o tratamento de datas futuras, conforme a origem dos dados.
- Melhorar a organização e a documentação das consultas.

---

**Projeto de portfólio — Análise de Dados.**
