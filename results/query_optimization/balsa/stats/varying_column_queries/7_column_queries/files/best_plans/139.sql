/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 MergeJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND p.PostTypeId=1 AND p.ViewCount<=3555 AND p.CreationDate<='2014-09-03 14:56:28'::timestamp AND pl.LinkTypeId=1 AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND v.CreationDate>='2010-07-24 00:00:00'::timestamp;

