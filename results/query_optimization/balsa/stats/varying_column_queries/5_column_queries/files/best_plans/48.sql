/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND b.Date>='2010-07-31 10:39:37'::timestamp AND b.Date<='2014-09-10 07:01:12'::timestamp AND u.Views>=0 AND u.Views<=49;

