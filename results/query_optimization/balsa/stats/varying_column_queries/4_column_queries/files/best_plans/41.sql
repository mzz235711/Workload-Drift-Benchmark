/*+ HashJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((((c u) p) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.AnswerCount>=0 AND p.FavoriteCount<=30 AND u.CreationDate>='2010-11-09 04:31:58'::timestamp;

