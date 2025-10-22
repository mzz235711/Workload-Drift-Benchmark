/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-08-18 13:16:39'::timestamp;

