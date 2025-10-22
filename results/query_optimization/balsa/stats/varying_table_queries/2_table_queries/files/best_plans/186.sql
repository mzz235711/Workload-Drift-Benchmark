/*+ HashJoin(c pl)
 SeqScan(c)
 IndexScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2011-02-11 07:49:36'::timestamp AND pl.CreationDate<='2014-09-04 23:30:20'::timestamp;

