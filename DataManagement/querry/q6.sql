-- Trouver le nom des personnages qui apparaissent dans plus d'un jeux.
select p.nom
from Personnage p 
join 
(SELECT pj.personnageID as pID, count(pj.jeuID) as cnt
FROM Jeu J
JOIN PersonnageJeux pj on pj.jeuID = j.jeuID
GROUP BY pj.personnageID) on p.personnageID = pID
where cnt > 1
