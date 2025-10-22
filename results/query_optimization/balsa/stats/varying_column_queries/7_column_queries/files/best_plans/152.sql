/*+ HashJoin(c v u)
 MergeJoin(v u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(u)
 Leading((c (v u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate>='2010-07-29 18:48:16'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.CreationDate<='2014-09-04 03:07:48'::timestamp;

