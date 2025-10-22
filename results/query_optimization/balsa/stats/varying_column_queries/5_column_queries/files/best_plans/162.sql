/*+ HashJoin(v b u c)
 MergeJoin(b u c)
 HashJoin(u c)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading((v (b (u c)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-27 17:18:46'::timestamp AND b.Date>='2010-07-20 11:14:11'::timestamp AND b.Date<='2014-09-12 15:43:52'::timestamp AND u.CreationDate<='2014-09-11 14:43:34'::timestamp;

