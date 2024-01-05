from scipy import stats

# Data
data = [10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8]

# Nilai hipotesis nol (H0)
mu = 10

# Hitung statistik uji t dan p-value
t_stat, p_value = stats.ttest_1samp(data, mu)

# Menampilkan hasil
print(f"Nilai t-statistic: {t_stat}")
print(f"P-value: {p_value}")

# Menentukan apakah hipotesis nol ditolak
alpha = 0.01
if p_value < alpha:
    print("Tolak hipotesis nol: Rata-rata isi kaleng minyak pelumas bukan 10 liter.")
else:
    print("Tidak dapat menolak hipotesis nol: Rata-rata isi kaleng minyak pelumas adalah 10 liter.")


