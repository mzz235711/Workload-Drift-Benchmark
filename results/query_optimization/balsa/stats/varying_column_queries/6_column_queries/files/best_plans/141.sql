/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.CommentCount>=0 AND u.Reputation>=1 AND u.Reputation<=131 AND u.UpVotes>=0 AND u.UpVotes<=11 AND u.CreationDate>='2010-11-04 03:26:06'::timestamp;

