/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=3 AND pl.CreationDate>='2011-07-04 22:52:05'::timestamp AND pl.CreationDate<='2014-08-04 22:51:08'::timestamp;

