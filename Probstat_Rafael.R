data_Rafael = read.csv("clipboard", sep = ",")
View(data_Rafael)

Rafael <- data_Rafael[data_Rafael$Bedrooms==2,]  
View(Rafael)

Rafael$Bathrooms <- ifelse(Rafael$Bathrooms > 2, c("large"), c("small"))
View(Rafael)

Rafael$newvariable <- ifelse(Rafael$Offers > 2, c("large"), c("small")) 
View(Rafael)

Rafael$newvariable <- Rafael$Price/Rafael$SqFt
View(Rafael)

Rafael$newvariable<-NULL

data_Rafael.kolom1dan2 <- data_Rafael[,1:2] 
View(data_Rafael.kolom1dan2)

data_Rafael.kolom3dan4 <- data_Rafael[,3:4] 
View(data_Rafael.kolom3dan4)

data_Rafael.kolom1sd4<-cbind(data_Rafael.kolom1dan2, data_Rafael.kolom3dan4) 
View(data_Rafael.kolom1sd4)

data_Rafael.baris1sd3 <- data_Rafael[1:3,] 
data_Rafael.baris4sd6 <- data_Rafael[4:6,] 
data_Rafael.baris1sd6 <- rbind(data_Rafael.baris1sd3, data_Rafael.baris4sd6) 
View(data_Rafael.baris1sd6)

data_Rafael.sort<-data_Rafael[order(data_Rafael$Price),] 
View(data_Rafael.sort)

#elkom 2
data_mhs = read.csv("clipboard", sep = ",")
View(data_mhs)

mhs <- data_mhs[data_mhs$tinggi.badan,]
View(data_mhs)

data_mhs$`tinggi badan` <- ifelse(data_mhs$`tinggi badan` > 160, c("tinggi"), c("pendek"))
View(data_mhs)

data_mhs$jurusan <- ifelse(data_mhs$`tinggi badan` > 160, c("infor23"))
View(data_mhs)
data_mhs$fakultas <- ifelse(data_mhs$`tinggi badan` > 160, c("FTI"))
View(data_mhs)

data_mhs$fakultas<-NULL

data_mhs.kolom1dan2 <- data_mhs[,1:2]
View(data_mhs.kolom1dan2)
data_mhs.kolom3dan4 <- data_mhs[,3:4]
View(data_mhs.kolom3dan4)
data_mhs.kolom1sd4<-cbind(data_mhs.kolom1dan2, data_mhs.kolom3dan4)
View(data_mhs.kolom1sd4)

data_mhs.baris1sd5<- data_mhs[1:5,]
data_mhs.baris25sd30<- data_mhs[25:30,]
data_mhs.baris1sd30<-rbind(data_mhs.baris1sd5, data_mhs.baris25sd30)
View(data_mhs.baris1sd30)

data_mhs.sort<-data_mhs[order(data_mhs$waktu),]
View(data_mhs.sort)
