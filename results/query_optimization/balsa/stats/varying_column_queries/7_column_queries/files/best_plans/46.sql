/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=610 AND u.CreationDate>='2010-07-20 13:42:27'::timestamp;

