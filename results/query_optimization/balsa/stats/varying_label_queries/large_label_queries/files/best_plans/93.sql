/*+ HashJoin(c ph v p pl b)
 HashJoin(c ph v p pl)
 HashJoin(ph v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(p)
 IndexScan(pl)
 SeqScan(b)
 Leading(((c (ph (v (p pl)))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.CreationDate>='2010-07-25 20:10:04'::timestamp AND c.CreationDate<='2014-09-09 19:47:19'::timestamp AND p.Score>=-3 AND p.Score<=16 AND p.ViewCount>=0 AND p.ViewCount<=5620 AND pl.LinkTypeId=1;

