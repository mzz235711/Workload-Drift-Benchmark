/*+ HashJoin(ph pl c v)
 HashJoin(ph pl c)
 HashJoin(pl c)
 SeqScan(ph)
 SeqScan(pl)
 SeqScan(c)
 SeqScan(v)
 Leading(((ph (pl c)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-11 19:04:35'::timestamp AND pl.LinkTypeId=1 AND ph.CreationDate<='2014-09-03 09:09:27'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

