/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=2 AND b.Date>='2010-08-17 02:43:44'::timestamp AND b.Date<='2014-09-12 03:01:54'::timestamp;

