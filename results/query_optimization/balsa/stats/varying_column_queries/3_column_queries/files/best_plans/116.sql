/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-12 20:07:21'::timestamp AND c.CreationDate<='2014-09-11 21:21:39'::timestamp AND b.Date<='2014-09-07 12:35:01'::timestamp;

