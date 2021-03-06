## No 1

R <- c(1,2,3,4,5,6,7,8,9)
X <- c(78,75,67,77,70,72,78,74,77)
Y <- c(100,95,70,90,90,90,89,90,100)

#a
selisih <- sd(x-y)
print(selisih)

#b
t.test (Y, X, paired = TRUE, var.equal = FALSE)

#c
mu0 = mean(X)
xbar = mean(Y)          
s = sd(Y)
n = length(Y)
t = (xbar-mu0)/(s/sqrt(n)) 

alpha = 0.05 
t.half.alpha = qt(1-alpha/2, df=n-1) 
c(-t.half.alpha, t.half.alpha)

pval <- 2*pt(t, df=n-1)
pval

# karena pvalue > 0,05 atau pvalue > alpha maka keputusan gagal tolak Hl0
# tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas

## No 2
library(BSDA)

zsum.test(mean.X = 23500, sigma.X = 3900, n.X = 100,
          alternative = "greater", mu0 = 20000,
          conf.level = 0.95)

#a 
#Setuju, karena uji z menolak H0, sehingga mobil yang dikemudikan rata-rata per tahun lebih dari 20000 kilometer

#b 
#Output dari z test adalah hipotesis alternatif
# alternative hypothesis adalah nilai benar mean yaitu lebih dari 20000 atau H1 diterima sehingga klaim benar. 

#c 
#P-value dari uji tes z adalah 2.2e-16 atau mendekati 0, dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.

## No 3

#a
#H0 : mu = mu0,mu tidak sama dengan mu0

#b
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)

#c
xbar = 2.79
mu0 = 3.64
s = 1.32
n = 27              
t = (xbar-mu0)/(s/sqrt(n)) 
t

#d 
alpha = 0.05 
t.alpha = qt(1-alpha, df=2)  
t.alpha

#e
#Gagal Tolak H0

#f
#Tidak ada perbedaan pada rata-rata jumlah saham perusahaan di dua kota tersebut

## No 4
#a
my_data <- read.delim(file.choose())

my_data$Group <- as.factor(my_data$Group)
my_data$Group = factor(my_data$Group, labels = c("grup1", "grup1", "grup3"))


grup1 <- subset(my_data, Group == "grup1")
grup2 <- subset(my_data, Group == "grup1")
grup3 <- subset(my_data, Group == "grup3")

qqnorm(grup1$Length)

qqnorm(grup2$Length)

qqnorm(grup3$Length)

# berdasarkan plot kuantil normal di atas, tidak ditemukan outlier utama pada homogenitas varians

#b
bartlett.test(Length ~ Group, data = my_data)

#c
model1 <- aov(Length ~ Group, data = my_data)
summary(model1)

#d
# nilai p adalah 0.0013 dimana kurang dari 0.005, sehingga h0 ditolak

#e
TukeyHSD(model1)

#f
library("ggplot2")

ggplot(my_data, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "white", colour = "black") + 
  scale_x_discrete() + xlab("Group") + ylab("Length")

## No. 5
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)
#a 
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

#variabel untuk anova
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

#b 
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

#e
print("Uji Tukey:")
tukey <- TukeyHSD(anova)
print(tukey)

#f
print("Compact Letter Display:")
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
