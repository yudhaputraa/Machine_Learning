from sympy import symbols, integrate, exp, oo

# Definisi variabel simbolik
x = symbols('x')

# Parameter distribusi eksponensial
lambd = 1/10  # Rata-rata pasien per menit, sehingga lambda = 1/rata-rata

# Fungsi kepadatan probabilitas distribusi eksponensial
exponential_pdf = lambd * exp(-lambd * x)

# a. Kemungkinan menunggu sekurang-kurangnya 5 menit
probability_a = integrate(exponential_pdf, (x, 5, oo))
print(f'a. {probability_a.evalf():.4f}')

# b. Kemungkinan menunggu lebih dari 6 menit
probability_b = integrate(exponential_pdf, (x, 6, oo))
print(f'b. {probability_b.evalf():.4f}')

# c. Kemungkinan menunggu antara 4 dan 6 menit
probability_c = integrate(exponential_pdf, (x, 4, 6))
print(f'c. {probability_c.evalf():.4f}')
