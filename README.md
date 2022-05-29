# P2_Probstat_C_5025201144
### Theresia Nawangsih / 5025201144 / Pratikum 1 / Probstat C


## No. 1
### A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel pada soal no 1
```
selisih <- sd(x-y)
print(selisih)
```
maka hasilnya adalah `6.359595`

### B
Carilah nilai t (p-value)
```
t.test (Y, X, paired = TRUE, var.equal = FALSE)
```
maka hasilnya adalah 
t `7.6525` ,  p-value `6003e-05`
mean of differences `16.22222`

### C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴
```
alpha = 0.05 
t.half.alpha = qt(1-alpha/2, df=n-1) 
c(-t.half.alpha, t.half.alpha)

pval <- 2*pt(t, df=n-1)
pval
```
maka hasilnya `1.999433`

` Karena pvalue > 0,05 atau pvalue > alpha maka keputusan gagal tolak Hl0. Tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas `

## No. 2
### A
Apakah Anda setuju dengan klaim tersebut?

`Setuju, karena uji z menolak H0, sehingga mobil yang dikemudikan rata-rata per tahun lebih dari 20000 kilometer`

### B
Jelaskan maksud dari output yang dihasilkan!

`Output dari z test adalah hipotesis alternatif. Hipotesis alternatif adalah nilai benar mean yaitu lebih dari 20000 atau H1 diterima sehingga klaim benar.`

### C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

`P-value dari uji tes z adalah 2.2e-16 atau mendekati 0, dari hasil p-value tersebut hipotesis awal dapat ditolak dan H1 diterima.`

## No. 3
### A
H0 dan H1

` H0 : mu = mu0,mu tidak sama dengan mu0 `

### B
Hitung Sampel Statistik

`tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE`

![3b](https://user-images.githubusercontent.com/81666422/170879757-19f0df67-ecf0-4596-a6c5-7ae7fb64afe8.png)


### C
Lakukan Uji Statistik (df =2)
`xbar = 2.79
mu0 = 3.64
s = 1.32
n = 27              
t = (xbar-mu0)/(s/sqrt(n)) 
t`

maka hasilnya `-3.346007`

### D
Nilai Kritikal
`alpha = 0.05 
t.alpha = qt(1-alpha, df=2)  
t.alpha`

maka hasilnya `2.919986`

### E
Keputusan

`Gagal Tolak H0`

### D
Kesimpulan

`Tidak ada perbedaan pada rata-rata jumlah saham perusahaan di dua kota tersebut`


## No. 4
### A
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

![4a](https://user-images.githubusercontent.com/81666422/170879273-297fd372-0d3a-426b-babe-45e4ec5dc935.png)

### B
Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
`bartlett.test(Length ~ Group, data = my_data)`

maka hasilnya `Bartlett's K-squared = 0.013315, df = 1, p-value = 0.9081`

### C
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
`model1 <- aov(Length ~ Group, data = my_data)
summary(model1)`

maka hasilnya

![4c](https://user-images.githubusercontent.com/81666422/170879513-0ff9ed4b-66b6-401a-8405-d3f87595435d.png)

### D
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?
` nilai p adalah 0.0013 dimana kurang dari 0.005, sehingga h0 ditolak`

### E
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?

![4e](https://user-images.githubusercontent.com/81666422/170879608-d1749e14-00a0-4a21-bc33-7be59175f526.png)

### F
Visualisasikan data dengan ggplot2

![4f](https://user-images.githubusercontent.com/81666422/170879637-ae24e83e-4169-4efd-9a96-ba56b16006bc.png)
