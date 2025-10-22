/*+ HashJoin(ph v c pl)
 HashJoin(c pl)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 SeqScan(pl)
 Leading(((ph v) (c pl))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, postHistory as ph, votes as v WHERE pl.PostId = c.PostId AND c.PostId = ph.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-27 09:14:39'::timestamp AND c.CreationDate<='2014-09-12 18:33:01'::timestamp AND ph.PostHistoryTypeId=2 AND v.VoteTypeId=5;

