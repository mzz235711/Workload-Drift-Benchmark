/*+ NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND u.Reputation<=1597 AND u.Views=1 AND u.DownVotes<=0 AND u.CreationDate<='2014-09-09 22:15:27'::timestamp;

