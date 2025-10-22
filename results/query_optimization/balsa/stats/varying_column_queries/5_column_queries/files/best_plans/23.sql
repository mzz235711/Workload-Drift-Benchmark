/*+ HashJoin(v ph b u c)
 HashJoin(v ph b u)
 HashJoin(ph b u)
 NestLoop(b u)
 SeqScan(v)
 IndexScan(ph)
 SeqScan(b)
 IndexScan(u)
 SeqScan(c)
 Leading(((v (ph (b u))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND c.CreationDate>='2010-09-30 15:20:13'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=64 AND u.CreationDate>='2010-07-19 21:55:38'::timestamp;

