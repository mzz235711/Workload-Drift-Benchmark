/*+ NestLoop(u v c)
 NestLoop(u v)
 IndexScan(u)
 IndexScan(v)
 IndexScan(c)
 Leading(((u v) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND v.CreationDate<='2014-09-14 00:00:00'::timestamp AND u.Reputation=101 AND u.Views>=0 AND u.Views<=83;

