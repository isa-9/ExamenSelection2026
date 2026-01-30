-- Trouver les personnages dans les jeux Capcom après 1984,
-- avec le nombre de jeux dans lesquels ils apparaissent et la note moyenne de ces jeux
SELECT p.nom, count(j.jeuid) as nombre_de_jeux, avg(j.note)
FROM Sortie s
JOIN Jeu j ON j.jeuID = s.jeuid
JOIN developpeur D on d.developpeurID = j.developpeurID
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
JOIN Personnage p on p.personnageID = pj.personnageID
WHERE d.nom = 'Capcom' and s.annee > 1984
GROUP BY P.NOM
