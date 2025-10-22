/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND ph.PostHistoryTypeId=5 AND ph.CreationDate>='2010-12-10 20:19:19'::timestamp AND ph.CreationDate<='2014-08-18 15:50:44'::timestamp;

