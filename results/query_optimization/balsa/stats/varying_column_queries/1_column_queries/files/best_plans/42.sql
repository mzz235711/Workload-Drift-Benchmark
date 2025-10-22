/*+ HashJoin(c b)
 IndexScan(c)
 SeqScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate>='2010-08-11 06:43:03'::timestamp;

