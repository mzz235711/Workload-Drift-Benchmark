/*+ HashJoin(p c pl v)
 HashJoin(c pl v)
 HashJoin(pl v)
 SeqScan(p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(v)
 Leading((p (c (pl v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.Score>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=200 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

