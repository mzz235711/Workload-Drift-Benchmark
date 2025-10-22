/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=1 AND c.CreationDate>='2010-07-28 05:54:26'::timestamp AND c.CreationDate<='2014-09-12 10:01:05'::timestamp;

