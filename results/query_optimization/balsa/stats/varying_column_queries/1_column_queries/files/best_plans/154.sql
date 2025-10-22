/*+ HashJoin(v ph c)
 HashJoin(v ph)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(c)
 Leading(((v ph) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND v.BountyAmount<=50;

