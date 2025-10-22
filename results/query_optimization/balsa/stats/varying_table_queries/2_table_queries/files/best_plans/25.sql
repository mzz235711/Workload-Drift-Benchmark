/*+ HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 Leading((c v)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 15:50:24'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate<='2014-09-11 00:00:00'::timestamp;

