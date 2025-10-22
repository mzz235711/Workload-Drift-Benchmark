/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND pl.LinkTypeId=1 AND pl.CreationDate>='2011-09-18 08:06:19'::timestamp;

