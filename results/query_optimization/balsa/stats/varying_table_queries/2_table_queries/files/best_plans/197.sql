/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-09 17:53:58'::timestamp AND b.Date>='2010-07-20 00:04:07'::timestamp AND b.Date<='2014-09-05 02:36:14'::timestamp;

