/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate<='2014-09-08 19:53:33'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-08-04 14:12:03'::timestamp AND u.CreationDate<='2014-09-09 16:31:02'::timestamp;

