/*+ HashJoin(ph v c)
 HashJoin(ph v)
 SeqScan(ph)
 SeqScan(v)
 IndexScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND c.Score=0 AND v.CreationDate>='2010-08-11 00:00:00'::timestamp;

