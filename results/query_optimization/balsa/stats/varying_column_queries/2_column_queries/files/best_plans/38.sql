/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-09-13 07:39:20'::timestamp AND c.CreationDate<='2014-09-08 17:06:16'::timestamp;

