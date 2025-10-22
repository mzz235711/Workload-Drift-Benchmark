/*+ NestLoop(c b)
 SeqScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.CreationDate='2012-03-09 00:53:35'::timestamp;

