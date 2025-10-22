/*+ MergeJoin(b u c)
 HashJoin(u c)
 IndexScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((b (u c))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate<='2014-09-05 13:02:28'::timestamp AND b.Date='2014-03-08 15:23:03'::timestamp AND u.Views<=238;

