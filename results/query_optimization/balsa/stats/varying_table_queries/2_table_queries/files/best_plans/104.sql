/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-23 17:03:23'::timestamp AND c.CreationDate<='2014-09-05 15:26:02'::timestamp;

