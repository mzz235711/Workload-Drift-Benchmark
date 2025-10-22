/*+ HashJoin(ph v c p pl)
 HashJoin(v c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (v (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.FavoriteCount=0 AND pl.LinkTypeId=1 AND ph.CreationDate>='2010-10-26 10:34:12'::timestamp AND v.BountyAmount<=100;

