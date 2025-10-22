/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=28 AND p.ViewCount>=0 AND p.ViewCount<=9615 AND p.AnswerCount=1;

