/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 12:56:46'::timestamp AND c.CreationDate<='2014-09-08 18:10:12'::timestamp AND pl.LinkTypeId=1;

