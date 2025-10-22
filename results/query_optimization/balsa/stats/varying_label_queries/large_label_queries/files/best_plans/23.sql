/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate<='2014-09-09 17:55:58'::timestamp AND b.Date>='2010-07-26 20:03:42'::timestamp AND b.Date<='2014-09-05 03:54:02'::timestamp;

