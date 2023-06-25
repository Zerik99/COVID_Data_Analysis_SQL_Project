
Create Table Deaths_By_Year_Months
select 
year(str_to_date(`Date`, '%m/%d/%Y')) as DY,  
month(str_to_date(`Date`, '%m/%d/%Y')) as DM,
count(ID)
from Project_Erik
Group by DY, DM
Having DM is not null AND 
DM <> '0';