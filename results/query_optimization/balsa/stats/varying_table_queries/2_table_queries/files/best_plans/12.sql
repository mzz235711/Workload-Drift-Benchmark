/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-10 22:01:55'::timestamp AND b.Date>='2010-07-19 19:49:07'::timestamp;

