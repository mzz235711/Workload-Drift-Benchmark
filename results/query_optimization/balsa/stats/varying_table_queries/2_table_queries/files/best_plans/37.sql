/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 16:43:12'::timestamp AND c.CreationDate<='2014-09-12 15:55:04'::timestamp AND pl.CreationDate>='2010-09-17 06:40:34'::timestamp;

