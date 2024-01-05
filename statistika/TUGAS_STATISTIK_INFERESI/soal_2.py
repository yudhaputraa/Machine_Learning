from sympy import symbols, Eq, integrate, oo, exp, sqrt, pi

# Definisi simbol-simbol
x, mu, sigma = symbols('x mu sigma')

# Rumus standar skor (z-score)
z = (x - mu) / sigma

# Fungsi distribusi normal standar (PDF - Probability Density Function)
pdf = (1 / (sigma * sqrt(2 * pi))) * exp(-(z**2) / 2)

# Fungsi kumulatif distribusi normal standar (CDF - Cumulative Distribution Function)
cdf = integrate(pdf, (x, -oo, x))

# 1. Probabilitas paling besar 2,7 menit (P(X < 2,7)):
z_1 = (2.7 - 3.2) / 1.6
prob_1 = cdf.subs({x: 2.7, mu: 3.2, sigma: 1.6})
print(f"a. Probabilitas paling besar 2,7 menit: {prob_1.evalf()}")

# 2. Probabilitas lebih dari 3,5 menit (P(X > 3,5)):
z_2 = (3.5 - 3.2) / 1.6
prob_2 = 1 - cdf.subs({x: 3.5, mu: 3.2, sigma: 1.6})
print(f"b. Probabilitas lebih dari 3,5 menit: {prob_2.evalf()}")

# 3. Probabilitas paling sedikit 3,2 menit tetapi kurang dari 3,4 menit (P(3,2 < X < 3,4)):
z_3_1 = (3.2 - 3.2) / 1.6
z_3_2 = (3.4 - 3.2) / 1.6
prob_3 = cdf.subs({x: 3.4, mu: 3.2, sigma: 1.6}) - cdf.subs({x: 3.2, mu: 3.2, sigma: 1.6})
print(f"c. Probabilitas paling sedikit 3,2 menit tetapi kurang dari 3,4 menit: {prob_3.evalf()}")
