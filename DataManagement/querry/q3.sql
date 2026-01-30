-- Trouver le nombre de jeux par année, mais seulement pour l'années où il y a plus d'un jeux sortis
SELECT s.annee, COUNT(sortieID) as nombre_de_jeux
FROM Sortie s
GROUP BY annee
HAVING COUNT(sortieID) > 1
