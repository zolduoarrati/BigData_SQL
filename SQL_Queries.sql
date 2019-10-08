--***************************************************************
--@author:EZolduoarrati
--@General Scripts
--***************************************************************
--creating repo_country again with repo_names
select pr.id, u.country_code, pr.name into repo_country
from users u
join projects pr on u.id = pr.owner_id
order by pr.id