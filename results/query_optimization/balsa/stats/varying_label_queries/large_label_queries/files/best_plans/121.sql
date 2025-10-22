/*+ HashJoin(ph c v pl p)
 HashJoin(c v pl p)
 HashJoin(v pl p)
 MergeJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(v)
 SeqScan(pl)
 SeqScan(p)
 Leading((ph (c (v (pl p))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND p.CommentCount<=9 AND p.CreationDate>='2010-09-20 06:05:15'::timestamp AND pl.LinkTypeId=1;

