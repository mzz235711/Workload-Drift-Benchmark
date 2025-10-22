/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=1 AND c.CreationDate>='2010-07-19 20:54:37'::timestamp AND v.BountyAmount<=50;

