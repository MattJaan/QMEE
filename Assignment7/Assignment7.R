library(ggplot2)
library(readr)
library(dplyr)
library(tidyr)
library(emmeans)
library(effects)
library(performance)

fake_data <- read.csv("de_genes_glm_practice.csv")

fake_data$de_gene_count <- as.numeric(fake_data$de_gene_count)
fake_data$treatment<- factor(fake_data$treatment)

gen_lm <- glm(de_gene_count ~ treatment, family=poisson, data=fake_data)
plot(emmeans(gen_lm, ~ treatment),comparison=TRUE)
plot(allEffects(gen_lm))
check_model(gen_lm)
