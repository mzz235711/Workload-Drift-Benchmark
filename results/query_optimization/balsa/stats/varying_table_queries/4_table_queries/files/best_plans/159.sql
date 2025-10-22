/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score<=32 AND p.ViewCount<=17019 AND p.AnswerCount=1 AND u.Views>=0 AND u.UpVotes<=33 AND b.Date='2012-08-03 14:35:43'::timestamp;

