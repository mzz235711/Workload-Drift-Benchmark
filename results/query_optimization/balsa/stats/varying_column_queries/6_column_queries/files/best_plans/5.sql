/*+ HashJoin(p u)
 SeqScan(p)
 SeqScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=21 AND p.ViewCount>=0 AND p.CommentCount>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=10;

