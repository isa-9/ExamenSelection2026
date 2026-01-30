-- Trouver la somme du nombre de jeux fait par Nintendo et Playstation 
SELECT COUNT(*) as nombre_de_jeux
FROM Sortie s
JOIN Jeu j ON j.jeuID = s.jeuid
JOIN developpeur D on d.developpeurID = j.developpeurID
WHERE d.nom IN ('Nintendo', 'PlayStation')
