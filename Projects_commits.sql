--***************************************************************
--@author:EZolduoarrati
--Give a man a truth, and he will think for a day. 
--Teach a man to reason, and he will think for a lifetime
--***************************************************************
select pr.name, count(c.project_id) as total_count
from projects pr
join commits c on pr.id = c.project_id
--where pr.name = 'sony'
group by pr.name
order by total_count desc
