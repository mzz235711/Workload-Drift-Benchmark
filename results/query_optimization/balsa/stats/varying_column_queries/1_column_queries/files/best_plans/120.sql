/*+ HashJoin(c b)
 IndexScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-07-24 17:10:43'::timestamp;

