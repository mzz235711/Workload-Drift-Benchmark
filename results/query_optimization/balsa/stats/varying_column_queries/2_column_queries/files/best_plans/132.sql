/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND v.BountyAmount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

