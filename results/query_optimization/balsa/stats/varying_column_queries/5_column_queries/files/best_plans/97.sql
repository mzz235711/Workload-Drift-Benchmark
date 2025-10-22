/*+ HashJoin(v c)
 SeqScan(v)
 SeqScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

