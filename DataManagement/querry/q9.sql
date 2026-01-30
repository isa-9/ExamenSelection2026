-- Classer en ordre décroissant de note et de nombre de personnage pour les consoles qui ont la meuilleure note moyenne pour les jeux sortis.
SELECT c.nom, AVG(j.note) as note_moyenne, count(distinct pj.personnageID) as nombre_de_personnages
FROM Sortie s
JOIN Jeu j ON j.jeuID = s.jeuid
JOIN developpeur D on d.developpeurID = j.developpeurID
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
JOIN console c on c.consoleid = s.consoleid
GROUP by c.nom
ORDER BY AVG(j.note) DESC , count(distinct pj.personnageID) DESC 

