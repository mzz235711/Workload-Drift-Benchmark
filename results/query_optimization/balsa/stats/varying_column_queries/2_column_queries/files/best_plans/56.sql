/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-21 13:21:08'::timestamp AND c.CreationDate<='2014-09-10 02:17:30'::timestamp;

