/*+ HashJoin(b ph v c p pl)
 HashJoin(ph v c p pl)
 HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(p)
 SeqScan(pl)
 Leading((b (ph (v (c (p pl)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND p.FavoriteCount<=5 AND pl.LinkTypeId=1 AND v.BountyAmount>=0;

