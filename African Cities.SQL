Select c.name
from city c join country y on c.countrycode=y.code
where continent ='AFRICA';
