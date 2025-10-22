/*+ HashJoin(c b)
 SeqScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-02 02:14:54'::timestamp AND c.CreationDate<='2014-09-10 15:10:39'::timestamp AND b.Date<='2014-08-26 18:51:40'::timestamp;

