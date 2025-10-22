/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2009-04-12 08:22:16'::timestamp AND c.CreationDate<='2014-09-10 20:16:21'::timestamp AND pl.LinkTypeId=1;

