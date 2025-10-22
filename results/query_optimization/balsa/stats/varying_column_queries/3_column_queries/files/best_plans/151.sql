/*+ HashJoin(c pl)
 SeqScan(c)
 SeqScan(pl)
 Leading((c pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl WHERE c.PostId= pl.PostId AND c.CreationDate>='2010-07-20 10:19:14'::timestamp AND pl.CreationDate>='2011-01-28 21:58:45'::timestamp AND pl.CreationDate<='2014-08-14 22:06:05'::timestamp;

