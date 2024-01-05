import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import linregress

# Data dari tabel
years = np.array([2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023])
production = np.array([4.53, 5.03, 6.05, 6.09, 6.14, 6.37, 7.40, 7.22, 7.81, 8.49])
price = np.array([319, 411, 348, 287, 330, 383, 384, 372, 610, 640])

# Langkah 1: Hitung Rata-rata X dan Y
mean_production = np.mean(production)
mean_price = np.mean(price)

# Langkah 2: Hitung a dan b
slope, intercept, r_value, p_value, std_err = linregress(production, price)

# Langkah 3: Bentuk Persamaan Regresi
regression_eq = f"Y = {intercept:.2f} + {slope:.2f}X"

# Langkah 4: Hitung Residual Standard Error
residuals = price - (intercept + slope * production)
residual_std_error = np.sqrt(np.sum(residuals**2) / (len(production) - 2))

# Langkah 5: Prediksi Harga Minyak Tahun 2030
production_2030 = 10.05
predicted_price_2030 = intercept + slope * production_2030

# Visualisasi
plt.scatter(production, price, label='Data Observasi')
plt.plot(production, intercept + slope * production, 'r', label='Regresi Linier')
plt.title('Regresi Linier antara Produksi Minyak dan Harga Minyak')
plt.xlabel('Produksi Minyak (Juta Ton)')
plt.ylabel('Harga Minyak (US $ Per Ton)')
plt.legend()
plt.show()

# Output Hasil Analisis
print(f"Persamaan Regresi: {regression_eq}")
print(f"Selisih Taksir Standard (Residual Standard Error): {residual_std_error:.2f}")
print(f"Prediksi Harga Minyak Tahun 2030: {predicted_price_2030:.2f} US $")
