/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND c.CreationDate<='2014-09-11 21:23:37'::timestamp AND ph.PostHistoryTypeId=2 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp;

