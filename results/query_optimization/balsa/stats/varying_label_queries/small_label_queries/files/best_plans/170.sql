/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-20 14:50:05'::timestamp AND pl.CreationDate>='2012-01-13 01:59:00'::timestamp AND pl.CreationDate<='2014-09-11 18:15:17'::timestamp;

