/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 IndexScan(ph)
 IndexScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND v.VoteTypeId=2;

