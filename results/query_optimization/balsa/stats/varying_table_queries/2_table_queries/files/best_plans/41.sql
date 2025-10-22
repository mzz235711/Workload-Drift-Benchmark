/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-08-19 09:33:49'::timestamp AND c.CreationDate<='2014-09-12 18:03:01'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate>='2012-10-16 22:02:52'::timestamp AND pl.CreationDate<='2014-08-10 00:22:09'::timestamp;

