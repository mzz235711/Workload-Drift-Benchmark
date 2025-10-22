/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-21 01:39:03'::timestamp AND c.CreationDate<='2014-08-24 06:00:30'::timestamp;

