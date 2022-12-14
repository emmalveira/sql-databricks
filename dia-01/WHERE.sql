-- Databricks notebook source
SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
-- LIMIT 10
-- leia-se: selecione TODAS as colunas da tabela silver_olist.pedido onde a situacao do pedido seja entregue

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT *,
  datediff(dtEstimativaEntrega, dtAprovado)
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped', 'canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega, dtAprovado) > 30
