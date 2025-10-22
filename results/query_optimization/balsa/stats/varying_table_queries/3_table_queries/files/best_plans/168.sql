/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-29 23:32:42'::timestamp AND c.CreationDate<='2014-09-04 17:20:32'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Reputation>=1 AND u.CreationDate>='2011-09-24 11:00:50'::timestamp;

