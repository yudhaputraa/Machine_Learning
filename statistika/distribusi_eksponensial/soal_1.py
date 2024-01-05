from sympy import symbols, integrate, exp, oo

x = symbols('x')
mu = 15000
lambda_val = 1 / mu

# a. P(X > 16000)
prob_a = integrate(lambda_val * exp(-lambda_val * x), (x, 16000, oo))

# b. P(X <= 15000)
prob_b = integrate(lambda_val * exp(-lambda_val * x), (x, 0, 15000))

# c. P(14000 <= X <= 16000)
prob_c = integrate(lambda_val * exp(-lambda_val * x), (x, 14000, 16000))

print("a. P(X > 16000):", prob_a.evalf())
print("b. P(X <= 15000):", prob_b.evalf())
print("c. P(14000 <= X <= 16000):", prob_c.evalf())