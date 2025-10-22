/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2009-03-03 20:11:14'::timestamp AND c.CreationDate<='2014-09-12 21:17:43'::timestamp;

