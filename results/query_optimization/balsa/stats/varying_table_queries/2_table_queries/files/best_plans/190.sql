/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate<='2014-09-01 16:06:10'::timestamp AND pl.CreationDate>='2011-04-22 12:58:02'::timestamp AND pl.CreationDate<='2014-08-05 19:36:20'::timestamp;

