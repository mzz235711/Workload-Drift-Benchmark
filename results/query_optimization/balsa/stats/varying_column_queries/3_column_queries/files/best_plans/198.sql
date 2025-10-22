/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-27 13:41:47'::timestamp AND c.CreationDate<='2014-09-10 15:16:14'::timestamp AND pl.LinkTypeId=1;

