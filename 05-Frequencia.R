# Estat�stica B�sica

# Parte 4 - Tabela de Frequ�ncia

setwd('C:/Users/crls-/Documents/PowerBI/Cap12')
getwd()

dados <- read.table('Usuarios.csv',
                    dec = '.', # o arquivo separador de decimal � virgula
                    sep = ',', # o arquivo � separado por v�rgula
                    h = T, # carregue a primeira linha como cabe�alho
                    fileEncoding = 'windows-1252')

View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao) # nao retorna as medidas estatisticas pois � um tipo character (nao numerico)
mean(dados$salario)
mean(dados$grau_instrucao) # nao retorna pois � um tipo character


# Tabela de Frequ�ncias Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequ�ncias Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Transformando a tabela de frequ�ncias relativas em porcentagem
p_freq_rel <- 100 * prop.table(freq_rel)
View(p_freq_rel)

# Adicionar linha de total
freq <- c(freq, sum(freq)) # concatena uma nova linha com resultado soma
View(freq) # boa pr�tica � sempre visualizar a tabela ap�s um novo c�digo
names(freq)[4] <- 'Total' # renome a linha (que foi criada no indice 4) para 'Total'
View(freq)

# Tabela final com todos os valores

# Calculamos frequ�ncia relativa e frequ�ncia proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)
# round digts 2 � para arredondar para 2 casas decimais