echo "===========================Démarrage de notre script======================"
#Question 1
echo "=========================Affichage du chemin absolu================="
pwd


#Question 2
echo "=========================Contenu du dossier avec détails================="
ls -l



#Question 3
echo "=========================Crétion de ama_piscine si non existant================="
if [ -d "ama_piscine" ]; then
    echo "Le dossier existe déjà"
else
    echo "Le dossier n'existe pas, création...."
    mkdir ama_piscine
fi




#Question 4
echo "=========================Déplacement vers ama_piscine================="
cd ama_piscine
pwd




#Question 5
echo "=========================Création des sous-dossiers jour1, jour2, jour3================="
echo "si ces dossiers n'existent pas, ils seront créés, sinon rien"
mkdir -p jour{1,2,3}



#Question 6
echo "=========================Création des fichiers dans jour1================="
cd jour1
touch script.sh donnees.csv rapport.md




#Question 7
echo "=========================Contenu du dossier jour1 avec détails================="
ls -l




#Question 8
echo "=========================Contenu du dossier avec détails================="
echo "AMA - Piscine Cohorte 2 - Jour 1" > notes.txt




#Question 9
echo "=========================Ajout des trois lignes================="
echo "Etudiant : Laïs" >> notes.txt
echo "Date : $(date '+%Y %m %d')" >> notes.txt
echo "Statut : En cours" >> notes.txt




#Question 10
echo "=========================Contenu complet de notes.txt================="
cat notes.txt




#Question 11
echo "=========================Affichage de la première ligne de notes.txt================="
head -n 1 notes.txt




#Question 12
echo "=========================Affichage de la première ligne de notes.txt================="
tail -n 1 notes.txt




#Question 13
echo "=========================Nombre de lignes de notes.txt================="
wc -l notes.txt




#Question 14
echo "=========================Recherche de "Statut" dans notes.txt================="
grep "Statut" notes.txt




#Question 15
echo "=========================Copie de notes.txt dans jour2 et jour3================="
cp notes.txt ../jour2/notes.txt
cp notes.txt ../jour3/notes.txt




#Question 16
echo "=========================Retour dans ama_piscine et arborescence ================="
cd ..
#tree.com //F # Sur windows
#tree #Sur Linux
if command -v tree >/dev/null 2>&1; then 
    echo "Tree est bien installé sur votre machine"
    tree
else
    echo "Erreur: Tree n'est pas installé sur votre machine, utilisons ls"
    ls -l jour1 jour2 jour3
fi



#Question 17
echo "=========================Renommage de donnees.csv ================="
mv jour1/donnees.csv jour1/resultats_jour1.csv




#Question 18
echo "=========================Déplacement de rapport.md================="
mv jour1/rapport.md jour2/rapport.md




#Question 19
echo "=========================Suppression de script.sh================="
rm jour1/script.sh




#Question 20
echo "=========================Vérification du contenu de chaque dossier================="
ls -l jour1 jour2 jour3




#Question 21
echo "=========================Fichiers .txt================="
find . -type f -name '*.txt'




#Question 22
echo "=========================Noms de fichiers contenant notes================="
find . -type f -name '*notes*'




#Question 23
echo "=========================Vérification si python installé, ensuite version================="
if command -v python >/dev/null 2>&1; then 
    echo "Python est bien installé sur votre machine"
    python --version || python3 --version
else
    echo "Erreur: Python n'est pas installé sur votre machine"
    exit 1
fi




#Question 24
echo "=========================Chemin complet de l'exécutable python================="
which python




#Question 25
echo "=========================Liste des libs python================="
pip list > jour1/librairies.txt



#Exercice2- Question5
echo "=========================Vérification des libs python================="
for lib in numpy scipy sympy 
do
    if grep -q $lib jour1/librairies.txt; then
        echo "[OK] $lib a été trouvé"
    else
        echo "[MANQUANT] $lib n'a pas été trouvé"
    fi
done > lib_found.txt



echo "=============================RÉCAPITULATIF======================================="
ls -l
cat jour1/notes.txt
cat lib_found.txt
