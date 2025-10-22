/*+ HashJoin(v p c pl)
 HashJoin(p c pl)
 HashJoin(c pl)
 SeqScan(v)
 SeqScan(p)
 SeqScan(c)
 SeqScan(pl)
 Leading((v (p (c pl)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v WHERE p.Id = c.PostId AND c.PostId = pl.PostId AND pl.PostId = v.PostId AND c.Score=2 AND p.Score<=92 AND p.ViewCount>=0 AND p.ViewCount<=2513 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-04-12 15:23:59'::timestamp AND pl.CreationDate<='2014-08-05 00:44:38'::timestamp;

