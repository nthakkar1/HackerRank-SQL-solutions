Select w.id, p.age, w.coins_needed, w.power
from wands w join wands_property p on w.code=p.code
where p.is_evil=0 AND W.COINS_NEEDED = (SELECT MIN(COINS_NEEDED) 
                                          FROM WANDS AS X
                                          JOIN WANDS_PROPERTY AS Y 
                                          ON (X.CODE = Y.CODE) 
                                          WHERE X.POWER = W.POWER AND Y.AGE = P.AGE) 
ORDER BY W.POWER DESC, P.AGE DESC;
