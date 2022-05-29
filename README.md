# P2_Probstat_C_5025201144
### Theresia Nawangsih / 5025201144 / Pratikum 1 / Probstat C


## No. 1
### A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel pada soal no 1
```
selisih <- sd(x-y)
print(selisih)
```
maka hasilnya adalah `....`

### B
Carilah nilai t (p-value)
```
t.test (Y, X, paired = TRUE, var.equal = FALSE)
```
maka hasilnya adalah `....`

### C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴
```
alpha = 0.05 
t.half.alpha = qt(1-alpha/2, df=n-1) 
c(-t.half.alpha, t.half.alpha)

pval <- 2*pt(t, df=n-1)
pval
```
maka hasilnya `....`

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

`tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)`

maka hailnya `...`

### C
Lakukan Uji Statistik (df =2)
`xbar = 2.79
mu0 = 3.64
s = 1.32
n = 27              
t = (xbar-mu0)/(s/sqrt(n)) 
t`

maka hasilnya `....`

### D
Nilai Kritikal
`alpha = 0.05 
t.alpha = qt(1-alpha, df=2)  
t.alpha`

maka hasilnya `....`

### E
Keputusan

`Gagal Tolak H0`

### D
Kesimpulan

`Tidak ada perbedaan pada rata-rata jumlah saham perusahaan di dua kota tersebut`
