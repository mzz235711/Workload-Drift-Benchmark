/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-20 05:19:09'::timestamp AND p.Score=8 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate<='2014-09-06 00:28:49'::timestamp;

