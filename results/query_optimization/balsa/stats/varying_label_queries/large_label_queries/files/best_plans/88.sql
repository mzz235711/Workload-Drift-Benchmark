/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-07-19 20:34:06'::timestamp AND b.Date<='2014-09-10 22:40:07'::timestamp AND p.PostTypeId=1 AND p.Score<=20 AND p.ViewCount<=7282 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4;

