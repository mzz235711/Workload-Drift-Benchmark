/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 19:44:07'::timestamp AND b.Date<='2014-09-07 16:17:20'::timestamp;

