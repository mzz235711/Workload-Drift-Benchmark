/*+ NestLoop(v b)
 SeqScan(v)
 IndexScan(b)
 Leading((v b)) */
SELECT COUNT(*) FROM badges as b, votes as v WHERE b.UserId = v.UserId AND v.CreationDate='2010-10-22 00:00:00'::timestamp;

