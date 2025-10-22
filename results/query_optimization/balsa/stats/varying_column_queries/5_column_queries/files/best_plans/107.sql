/*+ HashJoin(v p pl c)
 HashJoin(p pl c)
 HashJoin(pl c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 SeqScan(c)
 Leading((v (p (pl c)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=17 AND p.ViewCount<=6264 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND pl.LinkTypeId=1;

