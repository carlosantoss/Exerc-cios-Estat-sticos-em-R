setwd('C:/Users/crls-/Documents/PowerBI/Cap12')
getwd()

vendas <- read.csv('Vendas.csv', fileEncoding = 'windows-1252')

library(ggplot2)

# Criar o gr�fico
?qplot
qplot(Valor, Custo, data = vendas) # cria um gr�fico de dispersao