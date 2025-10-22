/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-09-17 14:04:06'::timestamp AND b.Date<='2014-09-10 08:13:42'::timestamp;

