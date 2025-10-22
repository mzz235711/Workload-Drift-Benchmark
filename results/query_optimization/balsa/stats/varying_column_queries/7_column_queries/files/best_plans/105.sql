/*+ HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((u (p pl))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-20 18:30:38'::timestamp;

