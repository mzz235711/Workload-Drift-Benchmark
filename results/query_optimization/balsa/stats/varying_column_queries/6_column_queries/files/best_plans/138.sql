/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.CreationDate<='2014-08-21 15:35:06'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=55;

