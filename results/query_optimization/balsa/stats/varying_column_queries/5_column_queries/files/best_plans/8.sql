/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score=1 AND p.CommentCount>=0 AND u.Views>=0 AND u.UpVotes<=8 AND u.CreationDate>='2010-08-18 02:42:21'::timestamp;

