/*+ HashJoin(c u v b)
 NestLoop(c u v)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 IndexScan(v)
 SeqScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:22:18'::timestamp AND c.CreationDate<='2014-09-01 13:22:36'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp;

