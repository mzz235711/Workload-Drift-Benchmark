/*+ HashJoin(v p c pl)
 MergeJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.Score<=18 AND p.ViewCount<=8413 AND p.AnswerCount=0 AND p.CommentCount>=0 AND pl.LinkTypeId=1;

