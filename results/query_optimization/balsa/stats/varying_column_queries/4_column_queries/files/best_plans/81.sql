/*+ HashJoin(ph v c pl)
 HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading((((ph v) c) pl)) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND ph.PostHistoryTypeId=2 AND v.CreationDate='2012-04-12 00:00:00'::timestamp;

