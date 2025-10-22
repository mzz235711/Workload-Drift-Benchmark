/*+ HashJoin(v pl p c b ph)
 HashJoin(v pl p c b)
 HashJoin(v pl p c)
 HashJoin(v pl p)
 HashJoin(pl p)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 IndexScan(c)
 SeqScan(b)
 SeqScan(ph)
 Leading(((((v (pl p)) c) b) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v, badges as b WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = ph.PostId AND p.Id = v.PostId AND b.UserId = c.UserId AND c.Score=0 AND c.CreationDate>='2010-08-09 21:50:44'::timestamp AND p.FavoriteCount=1;

