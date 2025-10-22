/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.CreationDate>='2010-08-29 19:18:56'::timestamp AND pl.CreationDate<='2014-08-05 13:07:16'::timestamp;

