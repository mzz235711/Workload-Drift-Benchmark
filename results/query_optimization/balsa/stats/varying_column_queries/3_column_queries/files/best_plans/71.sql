/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate<='2014-09-13 13:30:56'::timestamp AND b.Date>='2010-07-19 20:24:07'::timestamp;

