/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-25 09:04:57'::timestamp AND c.CreationDate<='2014-09-04 08:04:31'::timestamp AND v.BountyAmount<=100;

