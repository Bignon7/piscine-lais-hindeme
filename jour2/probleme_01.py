from sympy import *

z = symbols('z')

equation = z**3 - (4 - 11*I)*z**2 - (22 + 30*I)*z + 68 + 54*I

#Question 1
verif = simplify(equation.subs(z, (2+I))) == 0
print(verif)


#Question 2
solutions = solve(equation, z)
print("Les solutions de cette équation sont:")
print(solutions[0])
print(solutions[1])
print(solutions[2])


#Question3
print("=============Identification de chaque valeur=================")
#print(sorted(solutions, key= lambda x: float(im(x)))) 

sorted_solutions = sorted(solutions, key= lambda x: float(im(x)))

zC = sorted_solutions[0]
zB = sorted_solutions[1]
zA = sorted_solutions[2]

print(f"L'affixe zA est : {zA}")
print(f"L'affixe zB est : {zB}")
print(f"L'affixe zC est : {zC}")


#Question 4
print("=====Coordonnées du point D=====")
#D est l'image de C par la translation de vecteur BC
zD = zC + (zC - zB)
print(f"L'affixe zD est : {zD}")

#Question 5
print("=============Vérification triangle rectangle========")

ab = Abs(zB - zA)
bc = Abs(zC - zB)
ac = Abs(zC - zA)

print (f"AB : {ab}")
print (f"BC : {bc}")
print (f"AC : {ac}")

if ((ab**2 + bc**2) == ac**2):
    print("Ce triangle est rectangle")
else:
    print("Ce triangle n'est pas rectangle")


#Question6
print("Aire du quadrilatère ")
#D étant l'image de C par la translation de vecteur BC, alors vecteur CD= vecteur BC donc ABCD est un parallélogramme et donc, son aire est égale à AB * BC
aire = ab * bc
print(f"L'aire est : {aire.round(2)} m²")