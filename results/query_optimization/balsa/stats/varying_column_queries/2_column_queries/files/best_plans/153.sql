/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.CreationDate>='2010-08-03 15:20:39'::timestamp AND v.BountyAmount>=0;

