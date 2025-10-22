/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-28 20:55:03'::timestamp AND c.CreationDate<='2014-09-09 12:17:54'::timestamp AND b.Date<='2014-09-11 17:25:29'::timestamp;

