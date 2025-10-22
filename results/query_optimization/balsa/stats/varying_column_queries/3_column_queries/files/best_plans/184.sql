/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-18 20:55:13'::timestamp AND c.CreationDate<='2014-09-12 13:47:16'::timestamp;

