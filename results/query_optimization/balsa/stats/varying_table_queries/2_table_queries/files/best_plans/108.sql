/*+ NestLoop(b c)
 SeqScan(b)
 IndexScan(c)
 Leading((b c)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:06:56'::timestamp AND b.Date='2012-12-22 14:19:23'::timestamp;

