/*+ NestLoop(u p c v)
 NestLoop(u p c)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(c)
 IndexScan(v)
 Leading((((u p) c) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score>=-4 AND p.ViewCount=66 AND p.AnswerCount<=6 AND p.CreationDate>='2010-07-20 17:31:49'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp;

