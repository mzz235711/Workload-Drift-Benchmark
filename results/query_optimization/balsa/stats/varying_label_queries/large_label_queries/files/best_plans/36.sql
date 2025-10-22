/*+ HashJoin(ph v c)
 HashJoin(ph v)
 IndexScan(ph)
 SeqScan(v)
 SeqScan(c)
 Leading(((ph v) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId;

