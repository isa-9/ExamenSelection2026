-- Trouver le nom du jeux et des personnage dans ce jeux pour les jeux avec une note supérieur à la moyenne de tout les jeux.
SELECT j.titre, p.nom
FROM Jeu J
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
JOIN Personnage p on p.personnageID = pj.personnageID
WHERE j.note > ( select avg(note) from jeu j2 where j.jeuid <> j2.jeuid)
