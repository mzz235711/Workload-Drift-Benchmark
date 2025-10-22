/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-08-06 18:46:05'::timestamp AND c.CreationDate<='2014-09-10 15:17:42'::timestamp AND b.Date<='2014-08-18 00:53:29'::timestamp AND u.Reputation<=683 AND u.Views<=523;

