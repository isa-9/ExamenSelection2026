-- Trouver le noms de tout les personnages qui apparaissent dans des jeux fait par Capcom après l'anné 1984.
SELECT p.nom
FROM Sortie s
JOIN Jeu j ON j.jeuID = s.jeuid
JOIN developpeur D on d.developpeurID = j.developpeurID
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
JOIN Personnage p on p.personnageID = pj.personnageID
WHERE d.nom = 'Nintendo' and s.annee > 1984
GROUP BY P.NOM
