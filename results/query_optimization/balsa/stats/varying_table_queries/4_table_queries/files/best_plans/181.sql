/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 IndexScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate<='2014-09-01 00:31:44'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-08-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-14 00:00:00'::timestamp;

