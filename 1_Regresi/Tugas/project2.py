import numpy as np

# Data
tahun = np.array([2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023])
produksi = np.array([4.53, 5.03, 6.05, 6.09, 6.14, 6.37, 7.40, 7.22, 7.81, 8.49])
harga = np.array([319, 411, 348, 287, 330, 383, 384, 372, 610, 640])

# Langkah 1: Hitung Rata-rata X dan Y
mean_x = np.mean(produksi)
mean_y = np.mean(harga)

# Langkah 2: Hitung b (Koefisien Regresi) dan a (Intercept)
numerator = np.sum((tahun - mean_x) * (harga - mean_y))
denominator = np.sum((tahun - mean_x)**2)
b = numerator / denominator
a = mean_y - b * mean_x

# Tampilkan hasil
print("Intercept (a):", a)
print("Koefisien Regresi (b):", b)
