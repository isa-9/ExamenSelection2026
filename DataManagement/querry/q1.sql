-- Trouver seulement le tire et le genre des jeux qui sont plus vieux que 1987
SELECT j.titre, j.genre
FROM Jeu j
JOIN sortie s ON s.jeuid = j.jeuid
WHERE S.annee > 1987
