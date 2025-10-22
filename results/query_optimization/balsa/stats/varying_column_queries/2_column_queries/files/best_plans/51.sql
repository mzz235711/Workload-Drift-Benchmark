/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-08-01 12:29:55'::timestamp AND b.Date<='2014-08-22 21:32:10'::timestamp;

