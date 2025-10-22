/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-26 10:07:01'::timestamp AND c.CreationDate<='2014-09-11 22:27:48'::timestamp AND b.Date>='2010-07-28 07:13:54'::timestamp;

