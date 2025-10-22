/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-08-09 18:20:12'::timestamp AND c.CreationDate<='2014-09-04 12:31:11'::timestamp AND pl.LinkTypeId=1;

