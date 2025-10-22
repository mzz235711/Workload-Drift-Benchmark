/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=-1 AND u.UpVotes>=0 AND u.UpVotes<=61 AND u.CreationDate>='2010-07-22 05:56:36'::timestamp AND u.CreationDate<='2014-09-13 05:04:12'::timestamp;

