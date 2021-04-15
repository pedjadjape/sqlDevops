select mainTable.name, mainTable.surname
from (select v.patient_id,p.name,p.surname, count(*) as num2
	  from visit v left join patient p on v.patient_id=p.patient_id
      group by v.patient_id) as mainTable
where mainTable.num2=(select max(helpTable.num1)
                   from (select v.patient_id, count(*) as num1
	                     from visit v left join patient p on v.patient_id=p.patient_id
						 group by v.patient_id) as helpTable)
       
       
 

      

      

      


