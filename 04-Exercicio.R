# Definindo a pasta de trabalho
setwd('C:/Users/crls-/Documents/PowerBI/Cap12')

# Validando a pasta de trabalho carregada
getwd()

# Carregando o dataset
notas <- read.csv('Notas.csv', fileEncoding = 'windows-1252')

# Exercicio1: Apresente um resumo de tipos de dados e estatísticos do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercicio2: Qual a media em cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercicio3: Qual turma apresentou maior variabilidade de notas? Justifique.
sd(notas$TurmaA)
sd(notas$TurmaB)
# Turma A variou mais pois sua dispersao (desvio padrao) foi maior

# Exercicio4: Calcule o coeficiente de variacao das 2 turmas
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA # ou print(cvA)
cvB

# Exercicio5: Qual nota apareceu mais vezes em cada turma?
calculaModa <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)