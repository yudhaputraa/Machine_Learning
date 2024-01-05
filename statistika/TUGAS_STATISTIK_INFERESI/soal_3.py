from scipy.stats import norm

# Nilai yang diketahui
X_bar_value = 23500
mu_value = 20000
sigma_value = 3900
n_value = 100
alpha = 0.01

# Hitung nilai Z
Z_value = (X_bar_value - mu_value) / (sigma_value / (n_value**0.5))

# Hitung p-value
p_value = 1 - norm.cdf(Z_value)

# Menentukan apakah kita menolak H0
reject_H0 = p_value < alpha

# Menampilkan hasil
print(f"Nilai Z: {Z_value:.2f}")
print(f"P-value: {p_value:.4f}")
print(f"Apakah menolak H0? {'Ya' if reject_H0 else 'Tidak'}")
