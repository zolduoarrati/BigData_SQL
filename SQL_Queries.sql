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
--creating repo_total_commits_users
select rc.country_code
, rc.name
, count_big(c.id) as total_commits
--, count_big(distinct cm.comment_id) as total_users
--, count_big(i.id) as total_issues
--, count_big(im.issue_id) as total_comments
from repo_country rc
join commits c on rc.id = c.project_id
where total_commits = '25'
--oin commit_comments cm on c.committer_id = cm.id
--join issues i on rc.id = i.repo_id
--join issue_comments im on i.id = im.issue_id
group by rc.country_code, rc.name
order by name
