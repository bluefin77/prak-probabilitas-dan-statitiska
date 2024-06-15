df_el=read.delim("clipboard") 
head(df_el) 
model_reg=lm(df_el$Y~df_el$X)
summary(model_reg)

df_el=read.delim("clipboard") 
df_el$brick_dummy <- ifelse(df_el$Brick == "Yes", 1,0)
df_el$N_dummy1 <- ifelse(df_el$Neighborhood == "West", 1,0)
df_el$N_dummy2 <- ifelse(df_el$Neighborhood == "North", 1,0)
model=lm(df_el$Price~df_el$SqFt+df_el$Bedrooms+df_el$Bathrooms+df_el$brick_dummy+df_el$N_dummy1+df_el$N_dummy2)
summary(model)

by(df_el$Price, df_el$Neighborhood, mean)
by(df_el$Price, df_el$Brick, mean)
