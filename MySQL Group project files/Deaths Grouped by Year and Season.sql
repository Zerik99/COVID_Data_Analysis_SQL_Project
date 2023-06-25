select 
year(str_to_date(`Date`, '%m/%d/%Y')) as DY, 
case when month(str_to_date(`Date`, '%m/%d/%Y')) in (12,1,2) then 'Winter'
	 when month(str_to_date(`Date`, '%m/%d/%Y')) in (3,4,5) then 'Spring'
     when month(str_to_date(`Date`, '%m/%d/%Y')) in (6,7,8) then 'Summer'
     when month(str_to_date(`Date`, '%m/%d/%Y')) in (9,10,11) then 'Fall'
     end as Season,
     count(ID)
from Project_Erik
Group by DY, Season
Having Season is not null;