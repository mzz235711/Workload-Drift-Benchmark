/*+ HashJoin(c v u b)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 IndexScan(b)
 Leading((c (v (u b)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate>='2010-08-06 16:25:05'::timestamp AND c.CreationDate<='2014-09-04 00:03:32'::timestamp AND u.Views<=129 AND u.CreationDate>='2010-07-19 20:52:00'::timestamp;

