import numpy as np
from scipy.stats import linregress

# Data
tahun = np.array([2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023])
produksi = np.array([4.53, 5.03, 6.05, 6.09, 6.14, 6.37, 7.40, 7.22, 7.81, 8.49])
harga = np.array([319, 411, 348, 287, 330, 383, 384, 372, 610, 640])

# Regresi linier
slope, intercept, r_value, p_value, std_err = linregress(produksi, harga)

# Persamaan regresi
def regresi(x):
    return intercept + slope * x

# Prediksi harga untuk produksi minyak 10.05 juta ton (tahun 2030)
produksi_2030 = 10.05
prediksi_2030 = regresi(produksi_2030)

# Selisih taksir standardnya
residuals = harga - regresi(produksi)
selisih_taksir_standard = np.std(residuals)

# Output
print(f'Persamaan Regresi: Harga = {intercept:.2f} + {slope:.2f} * Produksi')
print(f'Besar Pengaruh: Koefisien Regresi (b) = {slope:.2f}')
print(f'Prediksi Harga Minyak Tahun 2030: {prediksi_2030:.2f} US $ per Ton')
print(f'Selisih Taksir Standardnya: {selisih_taksir_standard:.2f}')
