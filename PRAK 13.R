dataku_akbar = read.delim("clipboard")
View (dataku_akbar)
wilcox.test(dataku_akbar$Sebelum,dataku_akbar$Setelah,paired=TRUE)

dataku_akbar = read.delim("clipboard")
View (dataku_akbar)
wilcox.test(dataku_akbar$Sebelum,dataku_akbar$Sesudah,paired=TRUE)

df_akbar=read.delim("clipboard")
View (df_akbar)
wilcox.test(df_akbar$obat~df_akbar$grup)
head(df_akbar)
rank(df_nama$obat)

dataku_akbar = read.delim("clipboard")
View (dataku_akbar)
wilcox.test(dataku_akbar$Ganjil,dataku_akbar$Genap,paired=TRUE)

df_akbar=read.delim("clipboard")
View (df_akbar)
wilcox.test(df_akbar$caffeine~df_akbar$placebo)
head(df_akbar)
rank(df_akbar$caffeine)
rank(df_akbar$placebo)
