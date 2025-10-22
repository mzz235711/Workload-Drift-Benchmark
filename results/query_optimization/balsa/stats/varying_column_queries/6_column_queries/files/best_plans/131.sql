/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-19 12:44:34'::timestamp AND c.CreationDate<='2014-09-08 04:00:20'::timestamp AND b.Date<='2014-09-09 07:40:39'::timestamp AND u.Reputation>=1 AND u.Reputation<=131;

