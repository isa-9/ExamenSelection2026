-- Trouver tous les jeux avec le même genre que le jeu où apparaît le personnage "Luigi".
SELECT j2.titre, j2.genre
FROM Jeu j2
WHERE j2.genre in (SELECT j.genre
FROM Jeu J
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
JOIN Personnage p on p.personnageID = pj.personnageID
WHERE p.nom = 'Luigi')
