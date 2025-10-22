/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-25 07:48:30'::timestamp AND c.CreationDate<='2014-09-10 15:10:39'::timestamp;

