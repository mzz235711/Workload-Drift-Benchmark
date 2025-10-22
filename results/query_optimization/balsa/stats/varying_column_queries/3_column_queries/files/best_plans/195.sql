/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-20 14:34:12'::timestamp AND b.Date<='2014-08-26 23:10:40'::timestamp;

