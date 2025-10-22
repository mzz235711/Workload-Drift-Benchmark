/*+ HashJoin(v ph c)
 MergeJoin(v ph)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=3 AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

