/*+ NestLoop(p b)
 SeqScan(p)
 IndexScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.CommentCount=0 AND p.FavoriteCount=0;

