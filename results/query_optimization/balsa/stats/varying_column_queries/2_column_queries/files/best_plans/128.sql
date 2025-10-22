/*+ HashJoin(c p v u)
 HashJoin(p v u)
 MergeJoin(v u)
 SeqScan(c)
 IndexScan(p)
 IndexScan(v)
 IndexScan(u)
 Leading((c (p (v u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.AnswerCount>=0 AND p.FavoriteCount<=10;

