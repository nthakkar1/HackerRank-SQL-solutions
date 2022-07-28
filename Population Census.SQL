Select sum(c.population)
from city c join country y on c.countrycode=y.code
where continent ='ASIA';

/* Similar column from both table are city.coutnrycode and country.code, creating relation between them we can filter on continent = ASIA, and find sum of population*/
