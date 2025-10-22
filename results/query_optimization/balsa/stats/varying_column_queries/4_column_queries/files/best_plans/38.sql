/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-10-15 18:25:26'::timestamp AND c.CreationDate<='2014-09-01 12:29:29'::timestamp AND pl.LinkTypeId=1;

