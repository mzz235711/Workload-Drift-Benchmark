/*+ HashJoin(c u p v b)
 NestLoop(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=4 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0;

