/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-21 20:42:35'::timestamp AND b.Date>='2010-07-27 17:28:44'::timestamp AND b.Date<='2014-09-11 08:55:52'::timestamp;

