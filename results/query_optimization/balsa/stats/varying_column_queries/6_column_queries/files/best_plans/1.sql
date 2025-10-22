/*+ HashJoin(ph c v p pl)
 HashJoin(c v p pl)
 HashJoin(v p pl)
 HashJoin(p pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (c (v (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.CreationDate>='2010-07-19 19:30:24'::timestamp AND c.CreationDate<='2014-09-12 08:18:09'::timestamp AND p.PostTypeId=1 AND p.Score<=24 AND p.CommentCount<=12 AND pl.LinkTypeId=3;

