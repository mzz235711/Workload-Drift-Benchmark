/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-10-01 05:33:56'::timestamp AND b.Date<='2014-09-09 21:00:32'::timestamp;

