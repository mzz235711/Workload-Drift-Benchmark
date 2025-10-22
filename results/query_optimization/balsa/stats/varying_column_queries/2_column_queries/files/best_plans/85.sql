/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate='2013-12-13 11:37:16'::timestamp;

