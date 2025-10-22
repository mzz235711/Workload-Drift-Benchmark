/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date<='2014-09-09 06:15:48'::timestamp AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7;

