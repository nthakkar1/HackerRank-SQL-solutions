Select Case     
when g.grade>7 then s.name       /* select name when grade is greater than 7*/
else null                        /* if grade<7 do not select anything*/
end as names, g.grade, s.marks   /* name of column will be names, select grade and marks*/
from students s join grades g on 
s.marks between g.min_mark and g.max_mark 
order by g.grade desc, names asc, s.marks asc;
