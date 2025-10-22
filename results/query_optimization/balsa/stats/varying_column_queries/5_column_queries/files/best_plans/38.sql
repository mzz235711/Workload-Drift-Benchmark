/*+ HashJoin(v ph c)
 HashJoin(ph c)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading((v (ph c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-13 11:31:21'::timestamp AND v.VoteTypeId=2 AND v.CreationDate='2013-09-24 00:00:00'::timestamp;

