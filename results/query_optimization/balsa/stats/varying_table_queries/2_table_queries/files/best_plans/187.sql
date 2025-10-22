/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-07-29 11:54:05'::timestamp AND b.Date<='2014-09-06 15:27:25'::timestamp;

