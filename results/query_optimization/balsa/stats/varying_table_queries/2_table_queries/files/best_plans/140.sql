/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId;

