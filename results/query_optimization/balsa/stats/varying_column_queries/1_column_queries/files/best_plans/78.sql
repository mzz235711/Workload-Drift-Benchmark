/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1;

