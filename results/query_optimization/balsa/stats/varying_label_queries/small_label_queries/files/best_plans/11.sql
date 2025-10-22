/*+ NestLoop(u c v)
 NestLoop(u c)
 IndexScan(u)
 IndexScan(c)
 IndexScan(v)
 Leading(((u c) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-19 23:56:45'::timestamp AND c.CreationDate<='2014-09-09 03:59:18'::timestamp AND u.Reputation=101;

