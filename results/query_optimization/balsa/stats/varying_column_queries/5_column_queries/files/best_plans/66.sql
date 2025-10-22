/*+ HashJoin(v u b c)
 HashJoin(u b c)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading((v ((u b) c))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-11 17:53:13'::timestamp AND u.CreationDate>='2010-07-26 22:33:49'::timestamp AND u.CreationDate<='2014-09-10 22:57:19'::timestamp;

