/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2011-01-09 11:50:59'::timestamp AND b.Date<='2014-09-04 20:42:17'::timestamp;

