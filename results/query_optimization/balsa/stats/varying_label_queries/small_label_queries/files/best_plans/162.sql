/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-23 23:58:29'::timestamp AND b.Date<='2014-09-01 14:45:19'::timestamp AND p.Score=0 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-09-12 13:32:13'::timestamp;

