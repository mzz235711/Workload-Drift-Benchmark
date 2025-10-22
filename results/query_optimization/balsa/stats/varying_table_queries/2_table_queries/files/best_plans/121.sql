/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=1 AND pl.CreationDate>='2011-02-03 08:54:35'::timestamp AND pl.CreationDate<='2014-09-06 15:24:08'::timestamp;

