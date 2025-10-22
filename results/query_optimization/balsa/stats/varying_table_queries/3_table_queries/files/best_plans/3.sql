/*+ HashJoin(c ph v)
 HashJoin(ph v)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(v)
 Leading((c (ph v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v WHERE ph.PostId = c.PostId AND ph.PostId = v.PostId AND v.BountyAmount>=0;

