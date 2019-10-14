--***************************************************************
--@author:EZolduoarrati
--***************************************************************
select pr.name, count(c.project_id) as total_count
from projects pr
join commits c on pr.id = c.project_id
--where pr.name = 'name'
group by pr.name
order by total_count desc
