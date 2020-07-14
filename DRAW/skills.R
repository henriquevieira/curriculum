#
# Script para gerar o grafico de habilidades
# 2020-05-26

library(ggplot2)
library(ggradar)
library(dplyr)


set.seed(150)

skills <- c('R', 
            'Perl', 
            'Java', 
            'Shell script', 
            'Python', 
            'Shiny', 
            'Django',
            'Hibernate',
            'SQL',
            'XP',
            'Scrum',
            'Análise descritiva',
            'Design de experimento',
            'Aprendizado de Máquina',
            'Delineamento de experimentos')


level <- c(10,8,8,7,9,10,9, 6.5, 9.5, 7, 9, 10, 8, 9, 8)

data <- data_frame()
data <- rbind(c('Henrique', level))
colnames(data) <- c('name', skills )

data <- data.frame(data)

data <- data %>%
  mutate(R = as.numeric(as.character(R)),
         Perl = as.numeric(as.character(Perl)),
         Java = as.numeric(as.character(Java)),
         Shell.script = as.numeric(as.character(Shell.script)),
         Python = as.numeric(as.character(Python)),
         Shiny = as.numeric(as.character(Shiny)),
         Django = as.numeric(as.character(Django)),
         Hibernate = as.numeric(as.character(Hibernate)),
         SQL = as.numeric(as.character(SQL)),
         XP = as.numeric(as.character(XP)),
         Scrum = as.numeric(as.character(Scrum)),
         Análise.descritiva = as.numeric(as.character(Análise.descritiva)),
         Design.de.experimento = as.numeric(as.character(Design.de.experimento)),
         Aprendizado.de.Máquina = as.numeric(as.character(Aprendizado.de.Máquina)),
         Delineamento.de.experimentos = as.numeric(as.character(Delineamento.de.experimentos))
  )

glimpse(data)

# https://github.com/ricardo-bion/ggradar
image <- ggradar(plot.data = data, grid.max = 10)
ggsave(file="test.svg", plot=image, width=10, height=8)
