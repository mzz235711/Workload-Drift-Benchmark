/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=0 AND p.CommentCount>=0 AND u.Views<=15 AND u.DownVotes<=5 AND u.UpVotes>=0 AND u.UpVotes<=22;

