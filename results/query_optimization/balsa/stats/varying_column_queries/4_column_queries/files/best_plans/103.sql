/*+ HashJoin(c pl)
 SeqScan(c)
 IndexScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.Score=0 AND c.CreationDate>='2010-07-24 09:04:44'::timestamp AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-06-16 21:30:52'::timestamp;

