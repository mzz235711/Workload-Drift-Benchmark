/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-20 01:59:53'::timestamp AND c.CreationDate<='2014-09-02 18:02:19'::timestamp;

