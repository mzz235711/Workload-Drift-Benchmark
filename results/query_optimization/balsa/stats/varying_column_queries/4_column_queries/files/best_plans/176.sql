/*+ HashJoin(c b u)
 HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 SeqScan(u)
 Leading(((c b) u)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date='2014-02-14 18:58:22'::timestamp AND u.CreationDate>='2010-08-23 08:16:49'::timestamp AND u.CreationDate<='2014-09-12 23:53:42'::timestamp;

