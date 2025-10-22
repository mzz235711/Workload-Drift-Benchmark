/*+ HashJoin(ph b pl p c v)
 HashJoin(ph b pl p c)
 HashJoin(b pl p c)
 HashJoin(pl p c)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(pl)
 SeqScan(p)
 SeqScan(c)
 IndexScan(v)
 Leading(((ph (b ((pl p) c))) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND p.ViewCount>=0 AND p.ViewCount<=6412 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND pl.LinkTypeId=1;

