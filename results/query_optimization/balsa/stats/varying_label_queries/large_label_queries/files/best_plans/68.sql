/*+ HashJoin(ph c v)
 HashJoin(ph c)
 IndexScan(ph)
 IndexScan(c)
 SeqScan(v)
 Leading(((ph c) v)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

