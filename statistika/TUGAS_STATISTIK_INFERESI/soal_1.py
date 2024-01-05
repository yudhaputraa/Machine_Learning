from sympy import Symbol, Eq, sqrt, pi
from sympy.stats import Normal, P
from sympy import integrate

# Definisi simbol dan parameter distribusi normal
X = Symbol('X')
mean_tahanan = 40  # nilai tengah tahanan
std_dev_tahanan = 2  # simpangan baku tahanan
sample_size = 36  # ukuran sampel
batas_tahanan = 1458

# Membuat variabel acak terdistribusi normal
tahanan = Normal('Tahanan', mean_tahanan, std_dev_tahanan)

# Hitung nilai tengah untuk tahanan gabungan seri
tahanan_gabungan = sample_size * mean_tahanan

# Hitung nilai z
z_score = (batas_tahanan - tahanan_gabungan) / (std_dev_tahanan * sqrt(sample_size))

# Hitung probabilitas menggunakan fungsi distribusi kumulatif
prob = P(tahanan > batas_tahanan)

# Print hasil
print(f'nilai tahanan : {tahanan}')
print(f'nilai tahanan_gabungan : {tahanan_gabungan}')
print(f'nilai z_score : {z_score}')
print(f'nilai prob : {prob}')
print(f'Probabilitas tahanan gabungan seri lebih besar dari {batas_tahanan} ohm: {prob.evalf()}')
