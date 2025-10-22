/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=1 AND c.CreationDate>='2010-07-26 20:22:54'::timestamp AND c.CreationDate<='2014-09-12 18:19:20'::timestamp;

