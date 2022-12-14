-- Databricks notebook source
SELECT * FROM silver_olist.pagamento_pedido
-- leia-se: selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido

-- leia-se: selecione as colunas idPedito e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido
LIMIT 10
-- LIMIT sempre coloca na ultima linha da query

-- COMMAND ----------

SELECT *,
  DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
FROM silver_olist.pedido
LIMIT 5
