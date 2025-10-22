/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-08-03 12:22:58'::timestamp AND p.CreationDate<='2014-09-05 22:32:43'::timestamp AND u.Reputation<=228 AND u.Views>=0 AND u.Views<=286 AND u.UpVotes<=13;

