/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-08-06 22:22:27'::timestamp AND b.Date<='2014-08-24 17:33:34'::timestamp;

