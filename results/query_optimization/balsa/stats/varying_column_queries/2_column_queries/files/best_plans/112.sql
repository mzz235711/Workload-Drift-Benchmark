/*+ MergeJoin(c b u v)
 MergeJoin(b u v)
 NestLoop(u v)
 IndexScan(c)
 SeqScan(b)
 SeqScan(u)
 IndexScan(v)
 Leading((c (b (u v)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1;

