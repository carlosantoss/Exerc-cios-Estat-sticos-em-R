# Estat�stica B�sica

# Parte 3 - Medidas de Posi��o Relativa

# Cuidado: A Linguagem R � CaseSensitive!

# Definindo a pasta de trabalho
setwd('C:/Users/crls-/Documents/PowerBI/Cap12')

# Consultando a pasta de trabalho criada
getwd()

# Carregando o dataset
vendas <- read.csv('Vendas.csv', fileEncoding = 'windows-1252')

# Resumo dos dados
head(vendas)
tail(vendas) # linhas finais do arquivo

# Medidas de Tend�ncia Central
summary(vendas$Valor)
summary(vendas[c('Valor','Custo')]) # c retorna o sum�rio de mais de 1 atributo

# Explorando vari�veis num�ricas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.99))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferen�a entre Q3 e Q1
range(vendas$Valor) # Retorna o m�nimo e o m�ximo
summary(vendas$Valor)
diff(range(vendas$Valor)) # Retorna a diferen�a entre os valores range