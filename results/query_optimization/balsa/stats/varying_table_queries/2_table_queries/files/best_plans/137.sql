/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-06-09 07:32:00'::timestamp AND pl.CreationDate<='2014-06-17 20:03:40'::timestamp;

