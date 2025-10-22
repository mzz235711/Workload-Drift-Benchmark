/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-06 16:25:05'::timestamp AND u.Views>=0 AND u.CreationDate<='2014-08-25 17:59:40'::timestamp;

