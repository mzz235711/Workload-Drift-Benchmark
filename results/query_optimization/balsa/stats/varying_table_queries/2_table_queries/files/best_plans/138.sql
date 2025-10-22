/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-20 09:59:57'::timestamp AND c.CreationDate<='2014-09-12 13:47:49'::timestamp;

