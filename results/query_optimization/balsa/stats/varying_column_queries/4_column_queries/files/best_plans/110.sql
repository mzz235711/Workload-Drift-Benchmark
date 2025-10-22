/*+ HashJoin(c ph v)
 HashJoin(c ph)
 IndexScan(c)
 SeqScan(ph)
 SeqScan(v)
 Leading(((c ph) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.CreationDate>='2010-07-28 01:06:13'::timestamp AND c.CreationDate<='2014-09-10 16:30:40'::timestamp AND ph.PostHistoryTypeId=5 AND ph.CreationDate<='2014-09-03 14:40:19'::timestamp;

