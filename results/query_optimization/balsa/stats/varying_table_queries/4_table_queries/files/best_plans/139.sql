/*+ HashJoin(c ph v pl)
 HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(pl)
 Leading(((c (ph v)) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND pl.CreationDate>='2011-05-10 20:23:43'::timestamp AND ph.PostHistoryTypeId=5 AND v.VoteTypeId=16 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

