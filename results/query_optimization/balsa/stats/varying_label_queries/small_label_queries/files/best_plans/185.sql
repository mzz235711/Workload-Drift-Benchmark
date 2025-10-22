/*+ NestLoop(u v c)
 HashJoin(u v)
 SeqScan(u)
 SeqScan(v)
 IndexScan(c)
 Leading(((u v) c)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-27 14:53:37'::timestamp AND v.BountyAmount>=0 AND u.Views=0;

