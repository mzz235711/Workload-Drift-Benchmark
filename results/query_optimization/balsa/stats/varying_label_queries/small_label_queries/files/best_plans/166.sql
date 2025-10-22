/*+ NestLoop(v c)
 SeqScan(v)
 IndexScan(c)
 Leading((v c)) */
SELECT COUNT(*) FROM comments as c, votes as v WHERE c.UserId = v.UserId AND c.Score=0 AND v.CreationDate='2012-05-16 00:00:00'::timestamp;

