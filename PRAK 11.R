df_el = read.delim("clipboard")
View(df_el)
head(df_el)
model <- aov(korosi~metode, data=df_el) 
summary(model)
tukey.test <- TukeyHSD(model)
tukey.test
df_el = PlantGrowth
View(df_el)
head(df_el)
model <- aov(weight~group, data=df_el) 
summary(model)
tukey.test <- TukeyHSD(model)
tukey.test
