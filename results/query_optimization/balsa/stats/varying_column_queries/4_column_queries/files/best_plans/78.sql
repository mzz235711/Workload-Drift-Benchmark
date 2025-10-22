/*+ HashJoin(ph c pl v)
 HashJoin(ph c pl)
 HashJoin(c pl)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(pl)
 SeqScan(v)
 Leading(((ph (c pl)) v)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-13 18:41:00'::timestamp AND ph.CreationDate>='2010-08-27 10:10:35'::timestamp AND ph.CreationDate<='2014-09-03 12:07:22'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

