--***************************************************************
--@author:EZolduoarrati
--@General Scripts
--***************************************************************
--creating repo_country again with repo_names
--select pr.id, u.country_code, pr.name into repo_country
--from users u
--join projects pr on u.id = pr.owner_id
--order by pr.id
--***************************************************************
--creating repo_commits
select rc.id, rc.country_code, rc.name, count_big(c.id) as total_commits
from repo_country rc
join commits c on rc.id = c.project_id
group by rc.id, rc.country_code, rc.name
order by total_commits desc
