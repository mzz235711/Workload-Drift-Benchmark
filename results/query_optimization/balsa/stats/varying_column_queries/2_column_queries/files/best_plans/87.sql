/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.CreationDate>='2012-01-24 19:31:06'::timestamp AND pl.CreationDate<='2014-07-23 13:31:13'::timestamp;

