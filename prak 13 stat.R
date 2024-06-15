dataku_el = read.delim("clipboard")
View (dataku_el)
wilcox.test(dataku_el$Sebelum,dataku_el$Setelah,paired=TRUE)

dataku_el = read.delim("clipboard")
View (dataku_el)
wilcox.test(dataku_el$Sebelum,dataku_el$Sesudah,paired=TRUE)

df_el=read.delim("clipboard")
View (df_el)
wilcox.test(df_el$obat~df_el$grup)
head(df_el)
rank(df_el$obat)

dataku_el = read.delim("clipboard")
View (dataku_el)
wilcox.test(dataku_el$Ganjil,dataku_el$Genap,paired=TRUE)

df_el=read.delim("clipboard")
View (df_el)
wilcox.test(df_el$caffeine~df_el$placebo)
head(df_el)
rank(df_el$caffeine)
rank(df_el$placebo)
