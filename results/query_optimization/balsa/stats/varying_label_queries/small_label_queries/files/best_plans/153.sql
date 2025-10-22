/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount>=0 AND p.ViewCount<=5903 AND p.CreationDate>='2010-07-23 17:02:28'::timestamp AND u.UpVotes<=40 AND u.CreationDate<='2014-09-07 18:58:36'::timestamp;

