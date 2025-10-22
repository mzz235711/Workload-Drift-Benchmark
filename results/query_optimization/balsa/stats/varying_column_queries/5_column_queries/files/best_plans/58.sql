/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.ViewCount<=5286 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.CreationDate>='2010-07-20 09:45:18'::timestamp;

