/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-07-19 19:22:27'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100;

