select mainTable.name, mainTable.surname, mainTable.specialty
from (select d.name,d.surname, d.specialty,count(*) as numVisit
	  from visit v left join doctor d on v.doctor_id=d.doctor_id
      group by v.doctor_id) as mainTable
where mainTable.numVisit>1      
     
