/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.Score<=17 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.AnswerCount<=6;

