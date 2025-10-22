/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score<=30 AND p.CommentCount=3 AND p.FavoriteCount=0 AND p.CreationDate>='2010-09-04 11:07:44'::timestamp AND p.CreationDate<='2014-08-22 18:18:30'::timestamp;

