/*+ HashJoin(b u c)
 HashJoin(u c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate='2014-09-05 17:31:16'::timestamp AND b.Date>='2010-07-20 07:04:08'::timestamp AND b.Date<='2014-09-10 20:05:25'::timestamp AND u.Reputation>=1 AND u.Views>=0;

