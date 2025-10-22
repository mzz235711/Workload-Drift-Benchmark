/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.Score>=-2 AND p.Score<=46 AND p.AnswerCount>=0 AND u.CreationDate<='2014-08-31 11:08:36'::timestamp;

