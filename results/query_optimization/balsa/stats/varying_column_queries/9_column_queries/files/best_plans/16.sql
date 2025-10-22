/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=3786 AND p.CreationDate<='2014-09-08 21:43:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=172 AND u.CreationDate>='2011-01-10 22:27:28'::timestamp;

