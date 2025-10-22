/*+ HashJoin(c b)
 IndexScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date>='2010-07-20 08:14:09'::timestamp;

