/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score>=0 AND p.CommentCount>=0 AND u.Views<=30 AND u.UpVotes=0;

