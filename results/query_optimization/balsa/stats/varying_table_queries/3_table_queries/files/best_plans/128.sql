/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.CreationDate>='2010-07-27 17:15:01'::timestamp AND u.CreationDate<='2014-08-13 16:55:38'::timestamp;

