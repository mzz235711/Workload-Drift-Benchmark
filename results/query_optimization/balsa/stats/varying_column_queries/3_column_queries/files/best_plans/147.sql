/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate<='2014-08-26 15:21:28'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-30 14:53:54'::timestamp;

