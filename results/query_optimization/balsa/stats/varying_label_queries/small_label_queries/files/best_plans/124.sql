/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-22 13:38:33'::timestamp AND c.CreationDate<='2014-09-12 06:49:55'::timestamp AND pl.LinkTypeId=1;

