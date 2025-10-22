/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate<='2014-09-07 17:21:38'::timestamp;

