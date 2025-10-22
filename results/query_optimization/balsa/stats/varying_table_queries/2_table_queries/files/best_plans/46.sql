/*+ HashJoin(c v)
 SeqScan(c)
 IndexScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate<='2014-09-11 09:43:55'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=400;

