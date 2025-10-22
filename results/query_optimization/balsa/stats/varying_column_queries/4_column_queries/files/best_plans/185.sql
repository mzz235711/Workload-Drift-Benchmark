/*+ HashJoin(v b ph pl p c)
 HashJoin(b ph pl p c)
 HashJoin(ph pl p c)
 HashJoin(pl p c)
 NestLoop(p c)
 SeqScan(v)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(pl)
 IndexScan(p)
 IndexScan(c)
 Leading((v (b (ph (pl (p c)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND pl.LinkTypeId=1;

