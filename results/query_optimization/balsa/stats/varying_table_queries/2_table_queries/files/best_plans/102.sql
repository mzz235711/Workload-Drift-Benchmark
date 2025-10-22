/*+ HashJoin(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=1 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

