/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.LinkTypeId=1 AND pl.CreationDate<='2014-08-26 13:21:38'::timestamp AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

