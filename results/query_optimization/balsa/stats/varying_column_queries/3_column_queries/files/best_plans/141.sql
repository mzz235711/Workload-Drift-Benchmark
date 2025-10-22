/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND b.Date>='2010-07-21 18:38:12'::timestamp AND b.Date<='2014-09-10 20:00:26'::timestamp;

