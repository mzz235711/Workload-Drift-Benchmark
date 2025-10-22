/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-08-19 15:14:29'::timestamp AND c.CreationDate<='2014-09-10 23:19:02'::timestamp AND pl.CreationDate<='2014-08-28 09:53:17'::timestamp;

