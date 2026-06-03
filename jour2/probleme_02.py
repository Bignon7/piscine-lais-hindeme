from scipy.stats import hypergeom

n = 200
x = 120
y = 3

loi_emploi = hypergeom(n, x, y)

#QUESTION 1
print("================Probabilité que les 3 certifies choisis aient tous trouve un emploi dans les 3 mois=======================")
p1 = loi_emploi.pmf(3)
print(f"La probabilité recherchée est : {p1.round(4)}")


#Question 2
print("====================La probabilite qu’exactement 1 des 3 certifies n’ait pas encore trouve d’emploi========================")
loi_non_emploi = hypergeom(n, 30, y)
p2 = loi_non_emploi.pmf(1)
print(f"La probabilité recherchée est : {p2.round(4)}")




#Question 3
print("===================Calcule l’esperance E(X) et la variance V (X)==========================")
esp_loi_emploi = loi_emploi.mean()
var_loi_emploi = loi_emploi.var()

print(f"La valeur de l'espérance est : {esp_loi_emploi}")
print(f"La valeur de la variance est : {var_loi_emploi}")


#Question4
print("==============Calcule la probabilite que X ≥ 2=================")
#Cette probabilité correspond aussi à celle de X > 1 car nous avons uniquement des entiers ici
p3 = loi_emploi.sf(1)
print(f"La probabilité recherchée est : {p3.round(4)}")
