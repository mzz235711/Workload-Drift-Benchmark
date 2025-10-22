/*+ HashJoin(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-19 18:08:06'::timestamp AND c.CreationDate<='2014-09-13 09:51:24'::timestamp;

