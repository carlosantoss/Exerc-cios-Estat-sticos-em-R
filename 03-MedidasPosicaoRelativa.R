# Estatística Básica

# Parte 3 - Medidas de Posição Relativa

# Cuidado: A Linguagem R é CaseSensitive!

# Definindo a pasta de trabalho
setwd('C:/Users/crls-/Documents/PowerBI/Cap12')

# Consultando a pasta de trabalho criada
getwd()

# Carregando o dataset
vendas <- read.csv('Vendas.csv', fileEncoding = 'windows-1252')

# Resumo dos dados
head(vendas)
tail(vendas) # linhas finais do arquivo

# Medidas de Tendência Central
summary(vendas$Valor)
summary(vendas[c('Valor','Custo')]) # c retorna o sumário de mais de 1 atributo

# Explorando variáveis numéricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor) # Retorna o mínimo e o máximo
summary(vendas$Valor)
diff(range(vendas$Valor)) # Retorna a diferença entre os valores range