/*+ HashJoin(v b u)
 MergeJoin(v b)
 IndexScan(v)
 IndexScan(b)
 IndexScan(u)
 Leading(((v b) u)) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date>='2010-07-23 12:53:26'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-09-08 23:20:04'::timestamp;

