setwd('C:/Users/crls-/Documents/PowerBI/Cap12')
getwd()

vendas <- read.csv('Vendas.csv', fileEncoding = 'windows-1252')

library(ggplot2)

# Criar o gráfico
?qplot
qplot(Valor, Custo, data = vendas) # cria um gráfico de dispersao