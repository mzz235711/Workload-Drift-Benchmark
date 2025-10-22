/*+ HashJoin(ph c pl p v)
 HashJoin(c pl p v)
 HashJoin(c pl p)
 HashJoin(pl p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(v)
 Leading((ph ((c (pl p)) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, votes as v WHERE p.Id = c.PostId AND p.Id = pl.PostId AND p.Id = ph.PostId AND p.Id = v.PostId AND c.Score=0 AND p.Score=3 AND p.CreationDate>='2010-07-28 04:21:06'::timestamp AND p.CreationDate<='2014-09-08 15:52:06'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount>=0;

