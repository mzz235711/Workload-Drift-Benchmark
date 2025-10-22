/*+ HashJoin(c pl p)
 MergeJoin(pl p)
 SeqScan(c)
 SeqScan(pl)
 IndexScan(p)
 Leading((c (pl p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl WHERE p.Id = c.PostId AND p.Id = pl.PostId AND c.CreationDate<='2014-09-11 01:01:20'::timestamp AND p.CreationDate>='2010-10-08 13:41:22'::timestamp AND p.CreationDate<='2014-08-29 11:20:53'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-23 14:54:12'::timestamp;

