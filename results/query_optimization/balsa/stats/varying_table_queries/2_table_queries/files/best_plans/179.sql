/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-14 00:47:50'::timestamp AND c.CreationDate<='2014-09-13 08:22:38'::timestamp;

