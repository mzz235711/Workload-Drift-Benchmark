/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 15:58:58'::timestamp AND b.Date>='2010-07-19 20:19:06'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2010-08-01 09:11:17'::timestamp;

