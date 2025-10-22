/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-07-27 13:33:44'::timestamp AND b.Date<='2014-09-03 20:35:23'::timestamp;

