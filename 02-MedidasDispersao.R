# Estat�stica B�sica

# Parte 2 - Medidas de Dispers�o

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

# Vari�ncia
var(vendas$Valor)

# Desvio Padr�o
sd(vendas$Valor)