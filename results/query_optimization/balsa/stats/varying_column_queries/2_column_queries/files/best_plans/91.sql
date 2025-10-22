/*+ HashJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-22 10:04:51'::timestamp;

