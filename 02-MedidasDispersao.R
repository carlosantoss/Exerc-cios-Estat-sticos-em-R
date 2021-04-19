# Estatística Básica

# Parte 2 - Medidas de Dispersão

# Definindo a pasta de trabalho
setwd('C:/Users/crls-/Documents/PowerBI/Cap12')

# Conferindo se foi criado
getwd()

# Carregando o dataset
vendas <- read.csv('Vendas.csv', fileEncoding = 'windows-1252')

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)

# Variância
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)