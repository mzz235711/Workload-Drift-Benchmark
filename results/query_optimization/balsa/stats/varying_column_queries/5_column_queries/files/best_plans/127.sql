/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.CreationDate>='2010-07-19 19:25:39'::timestamp AND p.CreationDate<='2014-09-09 16:04:31'::timestamp AND u.Reputation<=213 AND u.DownVotes>=0;

